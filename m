Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AA6450F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756555195; cv=none; b=o6KKT2mHMDaXlG5zysWSjvxAK/8v4Edd3IiWgnac/uvWaY0ReXdQRg6NYaDgPB+SNqcmjlPmsZVr8dfVqEjerzbzvZ4t0ORORrygG6MEtStHUVPWFztuEJK3Dimy6VR7M6ClfzQAQCoUwnZO+xfILEOxT3uWpgv94zdF63ecdLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756555195; c=relaxed/simple;
	bh=TnrwEfZNx9tOS458IrMXQBf3coHH5WULa9qqNyugD84=;
	h=To:Subject:From:Message-Id:Date; b=hMEav7OGuIv+R2BNNvyTtq9TIYOIYDRRmqg7mvP7+t358HG7PjPMtdTPeY0yb7TCX39cT6jtPPv1fj/ubAAHRGJBwFyF5y+8XZAO69M8SS3359rVS1pVo5Nl/b7I9pc0wkck1vl3LbH/57R8Eh1yacaxc57gRf5vgNOKyIz+ALA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDR4/D49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDR4/D49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB44C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756555193;
	bh=TnrwEfZNx9tOS458IrMXQBf3coHH5WULa9qqNyugD84=;
	h=To:Subject:From:Date:From;
	b=VDR4/D49RY6pq3WW4SmW4PfOCXRXOmO2GLWMK6OBwG66RkfoNhZjd/ggoS/8k4Adv
	 oVJ+Qn3mJAJH0oOYhZWCR7bDFpRheTMT60SoAd05uHRI+1bCG6QzgIJqzs3dbti3bD
	 Ek3p0c+z/vSL77SlgvVDlzG45O2YAHa23Gh+QUyBar4858u8WDAzJRyQoZPA8QTaDF
	 djTXl5knUGmVPZY+SN6mnIU69ugndfUyl0W4U0/T1ArRIuZDKN5O3/YBKW2YaEylXx
	 uaURtFvCfF8VqK7tLjMx3EULCdF2AL3IID3kvhFC7BneMONAlNR3XYhcReVaYNr/6Y
	 rYc6TFJ6zY76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A96FCA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655519357.17049.704595818515487093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86763eab8db587ebbe7125605e82c5937e3d357267bd4504a092c30ea170034
Date: Sat, 30 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756555193
