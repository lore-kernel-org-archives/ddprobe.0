Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F31723E325
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790301634; cv=none; b=IUcn6n4kyxhWXRq4fNgdNFVndI8IU6Ee8eZa57+If8RZpH4KV9pMlOCH4v0F2cm+tvx0RxWkONKfaE/VTEMHITZfXC0UdC3G7la3PMO91uYDkFTjc3AzA2IpEKBzRrKcNeAKNXBlM18F3pwsk0iGnHUIgZs/uNoGqXeTghXOxhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790301634; c=relaxed/simple;
	bh=A/JJxK/TZXd48HujucC9BphZHwfEPfVm4tsdAlvCTZw=;
	h=To:Subject:From:Message-Id:Date; b=g4DmyWmEvIKKfplD8QPW04B3D72FM5lES0j9a4aY/hkoNCQYMDQs25ajEtHehyiNKQ+DXucGpjsxnv8AGhlR/o/4DhDxZdb/KI2RY+7EZepky6WgMX2nbkct27QFcqVRqheBK1zBdEyScYjzBuLtB5ZnB0iKrpgoYyqege/3SY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHkiCVIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHkiCVIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC47C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790301633;
	bh=A/JJxK/TZXd48HujucC9BphZHwfEPfVm4tsdAlvCTZw=;
	h=To:Subject:From:Date:From;
	b=nHkiCVIxsOiNIkqymTJopQyPD4h3RxbT/Cu+4oEGPFMqO4v9oYNGpkq3zWj8WPZt1
	 iTDy8S4akDKUi04NVGedIiKQGDLegv4MGub9CAeEtAE2agyNAfEcXLnvtYGOYXx9ya
	 Ljr9iy75JVqkebjDAHL1Ix2ATBPi8SKxXy61798Dhd3149fmKJYGVGZRjCpLi85r6v
	 m5Vyr+fXcwi7jhRgbhNRxi/ti7J5VXzlLAaMbpyRESstToRBuuwy78px9VJZzn6sYy
	 OHBR8/G22lkn2u+GqDrVulhl9eSHQR1hFavyey9QIfnrSwM2oEOzI7a3bgl23KKhXU
	 HE/0/etEuD0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDCC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030163369.4503.16901061642009565480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f012b69ba8f451eeb2a99889b91a0b0cdc053737ad593dfa836f98d55f4456
Date: Fri, 25 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790301633
