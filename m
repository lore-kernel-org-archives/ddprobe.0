Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0E73A7F6F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774605894; cv=none; b=MOINfXxU2j0dqqjUIAGabCp2tAd42YsXfE6jFXCDWP4ovJzg6ymdnFm2Ymm4bI3engvNTZVi4v9D4lFZXHiSI2zDGwAhwdQhl/MsU4WZzvLoHbDHETAUCs3zBlxdB+uGzwlB1gd4KFRu6LkRINQaZH7tbqiAQYc0uWOLNldMEY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774605894; c=relaxed/simple;
	bh=zpCiHw6y8IKJaYkT7OWdGB1duYkymJ7r21s4eZLbKm4=;
	h=To:Subject:From:Message-Id:Date; b=DyhvGwydqFePT9TfplJ8TeyBR+pgzrmYqvaasOHkF2HqGWlO6AXuYRCzaG6xghoPO2I3GvMIF9rUOeyEVgBs/jCVpzwWq99ee1NEGu/Jh3GBWHXMQS3ggk1QDP7UzqGSUtzH4CgJ4dcE96RwfloVNM5ouZEywkQvUmagamQXovw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ958WmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ958WmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6506C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774605893;
	bh=zpCiHw6y8IKJaYkT7OWdGB1duYkymJ7r21s4eZLbKm4=;
	h=To:Subject:From:Date:From;
	b=FQ958WmCvMzYTQcEUD4GEijm/e8mop/LytZ9fQmklE/qLPWt9XMarlLZTkrg27wIE
	 CqHOoUAK8cgW3DJ5lI+6eo4yUU589StA1HCaKh4jN6zAQht1jD2FIl+aPHEbELaKoO
	 jxyLC35XgPYg/YGHATvn6vCPoVtLk4ByZhN34ilce1TE3bKGur5DMJDUbSSJyJ+27Y
	 p3I0K/MEoZMygX/E3ummGZxlIBLFrWVvhSRjCnhjLLNcKsxMKpjfplSUp/I4zLroGh
	 xVKjJ+iLhB/9ufRTdcFhnYTQc7IEW8uAerYZYQe5lhQUGATI2tRhHam0rZrZmgd+4b
	 xSDAwvUz3LOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF910ED640
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460589359.12714.12534164081429404839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52574023a6220c8bd91e9082f6ea421aa6fc2f607183a5b736b68df3b42b4a8
Date: Fri, 27 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774605893
