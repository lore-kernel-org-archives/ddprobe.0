Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4701C862D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774767893; cv=none; b=KlCIrLuwlPVva8ngYKGHbpsYfmQEnVhWCeTGdC//YRaPBa9xYj2jZbGJlWKEeNRvaN7LR+g4jcQmWb3KUsJvDEPszK1opKKZgBQMjpHeOo4GJGrlPMhRnctKAxCEw1mS8fplX+tyts0eL4O2xfK3/jpmm70vr55mT3RK/gJRA/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774767893; c=relaxed/simple;
	bh=R05cCFLN8q87hoYKfrySSTnPaviBzuD5Lcsvb+zOTyw=;
	h=To:Subject:From:Message-Id:Date; b=HvP4z6BE2N143Mbw6G0mqlristwh1aLS15Ew1PKHvU15fwXogzOZ0Lpl4xEUfzxeoZMGIGc+AoGGQLDTLlOWvZBYh5Umr9b2i4gHr2mbEiKKtrdivdlyrPguhKb6hKrzz9DwVS4pnhNc4ZlGRa1BgNk/lJDEHYI5SSyh88GuRgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKzATBxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKzATBxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1750C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774767893;
	bh=R05cCFLN8q87hoYKfrySSTnPaviBzuD5Lcsvb+zOTyw=;
	h=To:Subject:From:Date:From;
	b=EKzATBxzv2iBbo5SdW5dKroJXlMqjjG2hl+Q6peXgyyhs4h7rxaLS4uf8LkmvQ+sf
	 e9dfWFk6rNv5jV0/wdR3QqHl3GayrEzrIcq2nxjAExLxdQ738oZe+I8WxPpCUoEysu
	 HMWYp/vPWDgPM3Uqcd5XSC3G9o725HVswKz++xeQ25aPm1SEgo5sT/e/kvliKdLtre
	 Lq6U6s6RB1LadcRuO9luggh1hGWGMxhAQvzFiMYj2CBW51r2KxSTgVSsbZ0YhGRLHa
	 bq4Y+7JhO6iyBeVoWUO6AdIbEZwZslV8qlNE/ZY2wr8FpY6lEXxVyOI3qJBysWWJ4P
	 nVwfN0jUgIVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC47F3D5F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476789358.17395.17492621073655188093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ed8bcb2b86faa46c33c54554f3b8b216aafc40fa5a430511711d92aeae9994
Date: Sun, 29 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774767893
