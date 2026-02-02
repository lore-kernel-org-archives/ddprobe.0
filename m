Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442FC2DCF70
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770065634; cv=none; b=LFz0OTZ3hD69ZPYRE92+b9laBV9FpIeZHNbbDktEt3YAH46Gl41kDKGmrug31JEtYotDcRtnWkdOJs44Av2N2GU3ar0roztp9X21Pt55gDwcetgL2/eCOAJVgihlE4arMjskUqzWipd4URnnx+FyclzIRgQJRYDkniUM61UBEqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770065634; c=relaxed/simple;
	bh=5FGMarfovd0I/l/atVx2YZePgzqRT9HpVQ6EI2yzjus=;
	h=To:Subject:From:Message-Id:Date; b=GiTTR2ar847P33ljbh9E+ZaE3OoFvdRObbtqi5Ol1Fx0+mIUrW/jO8MFVEBmNB5WNS3E84nFy3wVzStlbbA1ETiN9UCMQKCX+ij3U8oH9laHrX7W+l/oSkljUI5X6x9MwbBv1e0hXSlOJjMmnrv2i9ICWKLcS9TwQouiA393Vls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSmWE8x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSmWE8x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4ADC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770065633;
	bh=5FGMarfovd0I/l/atVx2YZePgzqRT9HpVQ6EI2yzjus=;
	h=To:Subject:From:Date:From;
	b=iSmWE8x6b8tAfCvPomRrRkj0yaVcb75vshLKxTlSRTnbCatQkVGHv2QqY+9yE0Aha
	 gen+WnNU5hC6BaFE3lmDb/X2XPEck4ZkhBpF2t/hJ30VdyKLn+40AFUKwvk8/4GIYc
	 sffXPwToEu9VSUKJ/HIoZ8go9HhG4Lie2Nk6/HnY+eJGTp98gCdwOiAJU9Yr01zn02
	 OVFo1k6/39tWYJnvDo5rDdlKLl0CviC6/k2hVt+9nfH+P09rrFXfQXWgmSqP+MgjkE
	 L1pObl1pby6tmAOdBHIdD4AoLxrJSKztc2Fe07Dl9LlV1iwSPaXnsqMFJ61PVa6sar
	 DLmJXR3iAyR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DD9E7FDCD
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006563366.17284.8462599241163474987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba185ebc15630093084b0cdbb939372876e595da10d7fce9a99f15fab282eec
Date: Mon, 02 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770065633
