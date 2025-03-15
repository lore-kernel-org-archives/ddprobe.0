Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87B1DF969
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742041134; cv=none; b=jLF/LRxrH+bCXBiG9ajFRGPO8TDwt9d+fn4rD8FXIYcbO3dm6jIXqfo6cB34e2RzEr1gK7/tWN7T/UaX5hH9bjSbqEIIIikU1R7+Y0GFUv2cAdYn5pNyazaLEO5h2wtODdvrDVoVySZoDRvSal1szzUrz5bI1h1Rc4GJdGTjrOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742041134; c=relaxed/simple;
	bh=13yPtDsFoVMtzSgqfaMeWzw/4R4dud4XIgnu8/uas7U=;
	h=To:Subject:From:Message-Id:Date; b=V5fyj+c82J4AGBQHHBfDsfVgxFyyVEH8+ZbWhKgEY00RnZCQajMsnYYMs4uqNaYrWMaqi61ifM4XJId+EVkb1UJDN0S1dGey3hhHl5ox0iX38Tozap9p30qM8aWWCeMTX4wp9Ax5sN+RFrODCdReLmjIoctMuPuUmRnJ/hithSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRhceZ69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRhceZ69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9ACC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742041133;
	bh=13yPtDsFoVMtzSgqfaMeWzw/4R4dud4XIgnu8/uas7U=;
	h=To:Subject:From:Date:From;
	b=HRhceZ69E9DsHMWDWfygbRFteWs+FzRhr1AekLU3fD6YPdhUhBVJBPwdszMbPJrik
	 CJ8awoLzLAyCc9bbXWvnRseFRY5WVoh4N58x2B3xMP4k9pr18gllAh3PQZTejJUBbO
	 V7EEkZBrzepH9oXS2lD76CtkhcX+hZnL/CQbgkfRtspIRZUBPOM1fYgtJMP6WNBT7i
	 8lCOrMxSFnx3J1zwfZzuRDE2UQXNHkJlZeTkTWQgBN1A5LDASvzShheOAmWDuJLSQC
	 K9lqlQRYdnNP8565GX0gz/G4PuiKoKc54SI6suBeDh8xlRl54jICk94r5vAFXa1hlg
	 WhjlGl/+5VBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9439CC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204113359.659.9106035952640558165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef824973d1903305141b349814bef27a8a0c28c3266a19b12090d8976471f158
Date: Sat, 15 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742041133
