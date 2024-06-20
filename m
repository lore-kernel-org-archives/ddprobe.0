Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE2D19EED6
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718875223; cv=none; b=HeCHflLBnE1RQE9gDLkRKrA5g7WB8jcxdy0fIEF4kaNc9xsW0XjWrI68nn9Z1oEUWXaBru3x8bMjOtf4AZXVazRKEHpLSReIMxYXD9HOsn3h3C/h7zBnSxKkzLC2MRmLq6hdUrEgzYfQaHWXPr65vR9HOE7spAmQkkeIqqiN1Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718875223; c=relaxed/simple;
	bh=IkdUqLTRQzS8mj7yTmUIwHbHC+b7YeMIZ3a4MYY5O9k=;
	h=To:Subject:From:Message-Id:Date; b=qzGXecWRk4H30nVIKavyPSdPzHAVIxi8vMWegvyODr5/Z6YHfWDPhapR7OFs01nkq6SFGA5QPVL7X6oU5AmWlWaxw37dwke2wahjUlwcztex2pOVAr/45mqlTMgMP/22JDSCQ2mEG71MxyM97+Ne/FS7Wk0pkQaMgGDp+IFf3AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppyWbsQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppyWbsQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE012C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718875222;
	bh=IkdUqLTRQzS8mj7yTmUIwHbHC+b7YeMIZ3a4MYY5O9k=;
	h=To:Subject:From:Date:From;
	b=ppyWbsQVcGAcYwqkByFb/D3RARAEjgz1lccT5liZ1bb9ODloVoVms3Pf+IO42Jv+v
	 MECMiabaqFA+n6xOnIjfiKZAEKcEaJunDQNmAiJ0ok5qts8IRhyzgHYScru3YUBqjB
	 LQ0/KMdD1oAEu87XNxHecuhubdOdnLRfKJv1pcNA9Fu1slmR37YQsGmgXiSk/72PQp
	 2IFiaUPHxPyTTvLCMWCI/+KxWTr95xh+GIziWfqX1sr42YCQhtGpiZOI83tRl0R7Ta
	 p/DI473fH4yZRCyglBj3dU3nr+juyMHn4UW4UxcEwchY/jzcLReCTZwoOGwQ3VXQVr
	 R5SjHctqIT/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69DDC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887522280.24268.1233578528004275713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df79cc23dad188004316336ed412f4cb7195bd99d0481852673f16d95cf44dec
Date: Thu, 20 Jun 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718875222
