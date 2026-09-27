Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39765348463
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790531434; cv=none; b=kgVJySFk8RNXPsceIQirLjiD6zFgLjIxWHJEbZr3m7VCBxwfGUfI+C2jKNRUBw89pgw0J0nrJyqwpAGzXk3FI2bWAU0q0xXg/tuFuWqLqv6Xohwy/BrTjM/Bmk75GAJDeyBemOFvSEI/LW2iAaKOipYcmM9Y2pcGZ2nwrxTH1Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790531434; c=relaxed/simple;
	bh=q3Rk7p9i2aXohvRTjR8xzR8F2NwjmxTE24o/hxAXVrE=;
	h=To:Subject:From:Message-Id:Date; b=Qld2Z0TqEgVCDCLkI9idonjgga2Ck1ySQwFWrBfSjj79w8b/lo4jZB1XIoSWBsMd5rwYqKXQk62YWkiuQs6bA799j0mfotvXa8A1ZLEb76Mbe49BhCm30wbe6lwN1rnV21TbngtQEpET/58Rty866VEqQQx5+liFKjmcuCRbhiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABXLJ8nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABXLJ8nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790531433;
	bh=q3Rk7p9i2aXohvRTjR8xzR8F2NwjmxTE24o/hxAXVrE=;
	h=To:Subject:From:Date:From;
	b=ABXLJ8nl+DuhkIO8vIbVwPkkwXJRMyDllmzkY5bHr9Ry8xBlA8TjVa01LM5VZEhv+
	 n9tm/FUcAQRau/NsDlzW/L4VweuIa6vr/UpziI8cZjEFDz8uc57C+rSEoWrIMLPPN9
	 OVi30kGrwsqCvKIM2hHr9hFLsWW/10H9G9PtCrHrfzQieEntmYH9ZVzMVX2fmBX33o
	 7uvpuni7YcExh4eETBYWdx19T3VSTWIQqAXlVsU//T5W2iUZaMc1KSYj+lLaeV+TFN
	 Lv5uvsmV3ZDvpKvm5miAZ5udVLXqczfEas9zNN/EhoP7oe7VxRTFnuSm3tT3x+CgVT
	 YosHh2fY5OGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D6C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053143369.21334.2710189152343539295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6a3d3f2a54f6aee0f0f93e550cf043bfcdec8ee33e303510a618e500410fe3
Date: Sun, 27 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790531433
