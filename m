Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3751423BCEC
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743606594; cv=none; b=Ci9W1PcGJ51+q/IQP8AN1ZvGeauCR4mQNM/DwbAM0yfjBu5W79qY7le3QYQ55RmdOHfOPjMoI+FDskPLX/jkqnipil7HTuZF3JiRFgotRm147TD5FPiPca8S9rBy9dbgcs76crjgL5azKulCOQeY0xiU3/fhZwNbSXi21UJggaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743606594; c=relaxed/simple;
	bh=EYAhNyEL3Jpq6ktxa4Gxr+i6w1KHILLj+mb+FdDUVL4=;
	h=To:Subject:From:Message-Id:Date; b=iiuulGT+oO3bv+Tv0ncoxhbE3Hk97EnHghT8ZxnUEcNTnv9NlsZ0ZFDx/MOUD8B+HlmZvgBHFXK2zaVqnyPdzahk6QGx4JDMZj1iHPqkUc5crlfTGj+odxNoTDt5QGo+aS1lrUfG4RlMLm7eUJrj+LapXfxaheheR/0fp4fAWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMPUgI2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMPUgI2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2FEC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743606593;
	bh=EYAhNyEL3Jpq6ktxa4Gxr+i6w1KHILLj+mb+FdDUVL4=;
	h=To:Subject:From:Date:From;
	b=lMPUgI2qxZLUlyK89JQ8MOaBDG+ug+HlfX7Y9+GQKDnS/EnHpnUo9+jyYKKRUm04k
	 0bq+4skB0azucnNd1F//5u4LqOQmN4JHIEdArdYXV/k1SE0flMVGz8pR9kDXGX3Xdm
	 7lzGmgjB8DGbWkMe8cC1MP38I1b9wuIWDJYUWHh+F2Xpxe1tXpp8aicYS+JsYQNJix
	 bCMkTz7hBehWIQN6ySu6OY0Dj4+UlaClgmHxnOt2oS6g0r2ZVHcxPUu+kZetlWMMo3
	 yM4BslXDt1NpIDqGM7T33HilBiH5Z4xdE2e0kEbAPMTzz4AkEqdQf+u1aDBaLt2Tjd
	 /nGvYleIzQp3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157BC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360659358.28732.12880669927906605028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd73206fe04e3fa2301a6cba2a49c2a8768b533fc06332336088f2c9ea79e7db
Date: Wed, 02 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743606593
