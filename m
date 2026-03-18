Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B3539F173
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773838494; cv=none; b=YoOy0sAa55iecZGYUJcHNaDU+AIGkNARWgMdIHsoEuoEdrNzUDb4derrlpAJG1tg7lUHQY4Ss+9d1lpGRsgdRpk02B3w5rOCHXubO0qsssc9AUfRp9eAgIIrwmlth2+D2osQdIRyVCosddzRiGyNEvNWkQZZIrZtU1wOExUvkM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773838494; c=relaxed/simple;
	bh=u+DBaKPE/CQLNKjt427TBL5Df/T3y8BtgTMppziXzGw=;
	h=To:Subject:From:Message-Id:Date; b=E1OvpXMbquKCE6juJ8tNIaA8SJMGlWYpY49J8vGeiyW8cuUhuv53zCuTELIolqs/4EBi2tSkAjb37IQqE4CLLFmxTBtjmqPdd9yBxWJg7knY2a8YcNSW6QbJq63xcoU37b2zJiS4LGN78KivUfcvuEpDahJkht1xLNuH0BVe01o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY2Ol++Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY2Ol++Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FECAC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773838493;
	bh=u+DBaKPE/CQLNKjt427TBL5Df/T3y8BtgTMppziXzGw=;
	h=To:Subject:From:Date:From;
	b=XY2Ol++YwRQf+TdeDSIetlGoqSSeJ+QRllXLLvvyBkvWWqZsrYVJBQJQ/kobOvHrB
	 tlFarYg00LvEQ331/HX55s36D1qH76kN5CRUTlTgVpHJyegtcFa4rDfCWllXYC+s/f
	 MRt/4/QWUvPwNjU/c2sprSRDbAQg9R5IUEdDnQ1G9VQ0qjpkK2rjNWtpXLgWNtZnei
	 LlhH525dCth9f2qc8vjHrKTfbr91I2j7SvBimmRrciTVKth+FGLVRLkOFUYDFHqUXj
	 d2jPZvoKIq/j0OtI9NvyKoGQIywXziGmFpen6Z/iDwP8QorcbEDnY7QocrIxhkqpHc
	 ZcqK043HjkpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8D103E173
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383849357.19593.12174352849961476195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2986ce69e09c683700c0b1331491521864cd643b71e0e880156fe2c4198af1b
Date: Wed, 18 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773838493
