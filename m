Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E537242910
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791100834; cv=none; b=L16xVjtdrLXwHrEaxfOgMTV9XEKBbu3bZkrrWSPhR89/7as6pUByeoFP7EDkSl2Un6gY9ZzANLFX0EsmZq2AspeB7Iz/TxZf520XAHqmSNfDS2uhQMQGAUmm7d2bAbGHTt79+PCAWYxAgL206x2vn/NFWrAiq+pgwv70pDRVAXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791100834; c=relaxed/simple;
	bh=gGuJd0YCvL3iRZOtPpyFM1+KWMi97/v7to3i/+0E24o=;
	h=To:Subject:From:Message-Id:Date; b=l7teE3azLKUCSMMEyRuff5vD+X0wxKGgR39ucfU8jJRXTugU1vxFc4lxj5uTsir4KB4Tv4XeuPNmbipCnYF5ia80k4pI7RWiXvQzrqDY5jqhpw+lrJ/2cRGnJ2c5spRub015ZCuQ6jmdfCP5UkzBL8xkm2bzmnXYndDWu3pbyYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxTHGPXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxTHGPXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ADAC4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791100833;
	bh=gGuJd0YCvL3iRZOtPpyFM1+KWMi97/v7to3i/+0E24o=;
	h=To:Subject:From:Date:From;
	b=CxTHGPXkBoVE1Imqs6jTVAJuuOvVfA9BI4G1eVIUWwQbu/fEqmvDoZe7zhehD/yJL
	 +/WaBvi+xXo1Hx+n4g+B2zOShouBMf8monyhp4Db92vhXup+owf0ws8X9fiXf2eCuW
	 3zl+Z8a47pOpCXt5ypEHpUb2hNga1n4/lgvGnT9EltF5ULuTVJo+6I/RTQtmjJZwgA
	 JREvZmlniQrjaFECc0C+wdR5Q+X/apP5GyS5AzzwQuM8uCX0VjsD5ZUjur3pcM7A4u
	 /Wv1oMGCAOMe4WKZFv004OryywBcySqUqT7kWjdOd5cO9dxshABMqn+KfQ9O3R8EXn
	 GxfKXpfLBQqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD594CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110083370.16679.3667787581811082843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7972e1ee426e477b5c3648b147b3bff9692c5e9241023d32e8f491bec7503dc7
Date: Sun, 04 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791100833
