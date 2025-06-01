Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDD626AE4
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748749794; cv=none; b=hoafgyJ4+F55cSy1sIM7fTfA53h8b2Yvbnq7vGkLthlZ0Uz6W4GloO7nbWOBofXV84tMmSu/sKpXMOq1YpGXvHxY8WJJ9XjMZPGVmO8IUGgO09BWdDLWSwMBrQeH0zhOnkKlpVYJV3UniriC3GoUpn6/Qkkj4P5+AHl2vLANaAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748749794; c=relaxed/simple;
	bh=KB0efNQeqrOr3CyaSEaHH84wZSvEVSEhjA924uYWxhQ=;
	h=To:Subject:From:Message-Id:Date; b=PO8eBwNKO6Dg0toZh7FJ6r5zJCV47CnuRhklyW6XtKyaX+IsUWQxMr8IRdy6t6Oe9I+Tjqmw59/BAOTqlamQ8T8TrOXCjd1znVX1og3QWclHFaP0gihQwbZ6myUR32+s7DSbeIuVzD0U2XtTJBx2o1boRgYhkSQNVGCE6Z30iig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDVEgYe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDVEgYe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5179C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748749793;
	bh=KB0efNQeqrOr3CyaSEaHH84wZSvEVSEhjA924uYWxhQ=;
	h=To:Subject:From:Date:From;
	b=rDVEgYe0PTRJCO+PImTW85zSEuop81Rh+/hsLK5TSTOl+acp+RBmkV/+CICeCt+2Z
	 /5gTKP+tb2VU4oEsIElrLYNKz2/ASSq+WTjCmAsuLT/sW+zhbe93tixEUTlvXEJgx9
	 6cugLeYzp78jaBBYoUz+OUGAUFkge62fYKsktberhUHAUlDonluexiwVkIe5tnbSAo
	 JzTmH8w8P8kPXEBnx3gse5PhCEMvgLnMUrvK0D/TG1AIIn1I6zDVYPkftG99WG4Ou6
	 xqM2ZeJE0AniWY/69SBm4oWBf7B8NHbmjB/la6jEh2VmUIkvc+SitblZWf1TH8rLdT
	 fRgVoQKK1h68g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A59C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874979358.20908.14371571591936078791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d282f3b7be8511e239cf07f7851a4facd7b329bbbdae25c647ff561583f25e02
Date: Sun, 01 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748749793
