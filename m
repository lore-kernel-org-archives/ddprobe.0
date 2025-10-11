Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55034BA57
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760145594; cv=none; b=t8gW5IgSaSzY1gCdsVVa6nC3kC9+I2e9uWsd3FUSrJNPQ/COSYSLn1NMdq5Lb/Hgi+pafxKMftZrouGmyEYR7qSnwZJl+GdoJJCWhhOmyrtz5ZzEvwuSAPfsAS6ug38g5eFBcTM8jEUt9iXYufkvGk/2ci0hw8UYeXAbM+RhaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760145594; c=relaxed/simple;
	bh=TqpzBtHQUrLLHxmLJPO35iU3V7WATGJnK/6wt5qcgqA=;
	h=To:Subject:From:Message-Id:Date; b=qaccLfvjJSpLRRk/mqYQcRPaqExoepVHYd8TnJGpYNcfyeiEj5BHfq3DgZLhTBXnmPFZRjWRgzbTHwT1hVr5W5Q0IrB0zFR0igPR4h1rFpQOWo+LrG3GNPh970n9DB58EXPFh13v8YNTfY1KkwmTcVBAsK3cU9Knb9zuJuHhhTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfm7ElFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfm7ElFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DCBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760145593;
	bh=TqpzBtHQUrLLHxmLJPO35iU3V7WATGJnK/6wt5qcgqA=;
	h=To:Subject:From:Date:From;
	b=bfm7ElFzY3jmSI7Omigt8z+eHNsN7nMb/cojjTKcFkB6H4YjdAlmyfSfc0OYK40C6
	 hfh/N0UTc04HYYU3ntm/Zq1tdBha9vRnuQbNGvpYspUj1se9EiX/f778zfyJTQd6Yt
	 kwKZGbWeOdcLRX4f47QHo2kYcZL1URJhum0eOPKoReZ2y2/6vC/wV11gPaptLCczW+
	 JMsEdCRYGlAe3N5BFsHJ152flgKFqasZ47ShlwxCfb2aISag+/+fGr7ExQwa24pgvD
	 4+PY3Sb8bPaDosCr6ge2QrjaiXudf0Z3tBsuVGZbOWpzKQX8L0CooiNV6A1C1fvoFQ
	 S/qRFIaA8E5FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014559357.28319.13489579849106055964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9c1de99b83501d7872aad057c344c14a1493778af756f7175d2fb2209e7fc6
Date: Sat, 11 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760145593
