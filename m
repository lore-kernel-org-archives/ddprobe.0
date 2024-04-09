Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37AF4E1DA
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712627897; cv=none; b=PPj7SCvwTlKjD85nW8x3VAvtncSuTHRyi0GMJWk1RKEvX2EKSsuDWLaokha1ouxrCuzXD4rtWoGY04bVvWA3HWihFhJ0G2lbfw0iMsuwsLsi3SQ/DvOnNpyOoLvommi/jlkOwTtw4+Ps3Emw91nsFJRo2mau4yE+4VZyGTiDEl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712627897; c=relaxed/simple;
	bh=XCFvbrnFsAAjOZi4sZ4vgarMSPeJ3/5AnFKEE6jdDLQ=;
	h=To:Subject:From:Message-Id:Date; b=goR2pvpEaACUuT3muA9yLDCYDTntNJvliTrydWyD1+tXEXLEOwMOf7dqEaT5C8L17TJWmbceXrScQWQTxkb0ArZNQdv7VK0M4ihsnT+fMU5MOkn9k3wcEyw3CVm3tZ1Y1z2qTKewo7zjVgq2bzdTaHY+DtkXmE0xJw6ofLg7K/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivMORlre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivMORlre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B66C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712627896;
	bh=XCFvbrnFsAAjOZi4sZ4vgarMSPeJ3/5AnFKEE6jdDLQ=;
	h=To:Subject:From:Date:From;
	b=ivMORlre+LtZ5HQlfyHvUpJE6+wBAj/v0JMYOtTYxocjtB6LFCyYIMD3dRO+TITqB
	 cQ+mXel5wxk4ph5yjH2Uoga9PoVXNZ3noK2NS/lRXElCyHgR4d0Eairo3cBG7Q9GvI
	 AOGZnKmM63yVjV/LKdiWajrjQaPVAV/oivGXH2Ys3ZXisgV/o82/bgvOmiElWBvMK4
	 0ktvmNVxHc+e1+6KXUUVEvt1nWsG9VWUV77sXPiOK+PqhS+Jtzj7xB7eIFcv7TzmBC
	 uSNCo1KUHSSiXRIxO2ZWVjKt+foOAgtBpOQfyYeIVfJCaRwFkEGTnRu3+emY+FYBh9
	 liF705knYhdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9EFCD1292
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262789642.16441.4900426523659801726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddf774d40bc57b8f385e2cf452ff9a87210303b442db6a1dc48465cfe4d79f0
Date: Tue, 09 Apr 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712627896
