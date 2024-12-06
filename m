Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376C1AAE02
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733522154; cv=none; b=VXy2imd1BPMTTv9LXAkzQ1yPnQv4xOpPJrh8SXfmZmCcu7NF/4JrNDGcMazrvDZDSANkux14iOlwzGCEqrfqdUbwIf+4SQhp8JcCM/sX0QYAtsFco9nOvOugZAvnBCVx3ID+1DiL+ct2QaStTOsmKuvsvhf2tuO+tofvVxz0IGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733522154; c=relaxed/simple;
	bh=81OC+I98J2lokyZzkP9aKiyBDkqX3JHhh7y0l9TWlGI=;
	h=To:Subject:From:Message-Id:Date; b=BqDAq7VAAX82x2L9ExXMNT1UXL9viJM8pf/fiTxONhu7ds9AvL2oQPovHL6FVeFbEwH33gwXPFzrA1lGfIBcOOasifIxns02WqXC6YOj1NDwHSdniAvbFKFVcD+tlC3Fma1f9ep3V2goPsLPOtyMGZjGmK4llRQzLWjoE3bhzw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlwPTzLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlwPTzLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E3C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733522153;
	bh=81OC+I98J2lokyZzkP9aKiyBDkqX3JHhh7y0l9TWlGI=;
	h=To:Subject:From:Date:From;
	b=OlwPTzLvAmv89LcJ1aN18kCvrJ6TGq+4+40Yv5hxx9toh42cb2/Qbm2vuA3zoqgky
	 AIMNdpTkDXVqwN+UZlK+i133daN+SrYTeyP9qH15hfXljDUb7TlV8Ut97expzI2qul
	 CTFRIh8tWIQ4cpLtqnqaXF1v5XSNw9TOF8rt66hq0yTnJkujBwy5wTuKaJWdhlVU44
	 RDUGMNIIK41vWICnu1D+VWY9WTzBy6QfKCpiQoQVSA78CuIvVVSycth8ViMdU6CnyV
	 /FWpiv9F+gN/I8UQKoNvyg9uczyu8Ev6fgyAOhpFk0AtnFDZ4SFCw6YypCt/vrksGw
	 S6v/Nvf20AIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FB2E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352215361.8022.6282465546102718237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9422da5e5834829c7991412f5b6fb436b10798c040146a31b2d01bb889f1aa17
Date: Fri, 06 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733522153
