Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534471A8C31
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718886623; cv=none; b=dbL3xnKG9QPvVlVSyYb3D/dRUc4D1ySPqyMQvWhP2R+G5dv4EHBe4kzgwmJhKDhbyLDYMxV59JYBpFS7ttuJhspSPAIEZT8p8v6aI7fNufWaekOaGODVIMZ9oEkAxEjMM7/twxGHmDAmVRSrPbE10Gx/Hpq/KVNqngm+62TN2J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718886623; c=relaxed/simple;
	bh=3EkuK9U35gy0phF3ZJG2R6ai2nzvXu01HDk0JhnJS7Y=;
	h=To:Subject:From:Message-Id:Date; b=KpV/5PFM2o98xP4es5D0ejn1Ys0M8s6oJaFMRoJv//1oQppu/S47RCqEwNIgwMPI8YA0ZOzZOD3bbl1u5G/HygC8X8CZiT6B1ljms7kyV7ymJUr+V5M4ZPI+rQF8WATtuzSoNKutJMVmQ/HVnsL38bg1UZsEclp2IC9vxw6RTj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3eX5EMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3eX5EMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA021C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718886622;
	bh=3EkuK9U35gy0phF3ZJG2R6ai2nzvXu01HDk0JhnJS7Y=;
	h=To:Subject:From:Date:From;
	b=f3eX5EMxUJ3ZIFurq/EOC/7i2oql2rCAr+B1H5DNa0J1Q2MR3zgJS9OD2afmMwkfS
	 CkOCMzcNxsee+rtzqtjRLjaGe1P70FPbLIZNBN1fAZOjMAaWFIPvoDU1Ce1giHrCVi
	 5KHygtNHGLN8R48vgAi2dnNAfO4iZa98YPPd/sB9wzF9AJsHcbLOMJDyDJaU3ijVSl
	 AB+khzwZEBvaqBBryS6lq2FIhhN3GbIs//EplJjsfcQ0stS7GrIE87gnWYB6quI/BY
	 zZ8rUPrzAyFlKFQOZZGMb580qupGElXDDk0te/SYMKJN7m4fBVO+T92qrXYbp1Bh0L
	 cgBENsAEG57fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BA0C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888662280.16421.12962404932691772990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8e1233e4141e6cb4a1a220d40390dd471be718c1e82dd1de4c250aa729ca10
Date: Thu, 20 Jun 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718886622
