Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1725B20C48E
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730930754; cv=none; b=nbMydr0P5/Ud7VdVvYfOTMBT9mC8OIJI1heezxQpcvhwEDhSTb5HQaVBliykdb70AnRTyONL42FJxQwt7eIAEsrd963czya9sXXkfepuTYbHevws0SbyqVXHXSIWdeVinn41ug1KmyFExRqSIUr3RhKK1e8xAt0059sac2JNFTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730930754; c=relaxed/simple;
	bh=Bb0GAnkV/L2Y9Jzb0+ydU6oz7b+QRMZwpLcB1h3AVk8=;
	h=To:Subject:From:Message-Id:Date; b=CwYifJcASKIpIUVLo2Mw0FWlprpJbVPMBimOzRfU1aL2DMvmmzlQLHW321Av9mNQcx/TEoi9LRzdeycoUMqoWSBnZZldPit8zp9LgCQ8C+GE9xDDuuf38LoG9R5hC5QbRr1Ob3mJ2kGPMzZfuVp/xJQG5COjzOhCIXxfbkwubGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/R73F7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/R73F7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B204AC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730930753;
	bh=Bb0GAnkV/L2Y9Jzb0+ydU6oz7b+QRMZwpLcB1h3AVk8=;
	h=To:Subject:From:Date:From;
	b=n/R73F7qlasGDR6tcBKCBVR/m6DvOnTRr/j7Fy/dcv8cLIfTs+1nZ4LvJ8YM3fHmC
	 ANXkmx5vnV5fLf7keKPhp4zQzJiNmnVGLpH5utmxq0RSFHxL1J1t7ncBIDlZCClOOt
	 YX46CYJ74hMRuDzCQzU6nFzI5lXe8C3QXZHrJyns1gqFVyONqJ5FTCPOa7dia49ThB
	 9x2kNGoHvozJkxXv5aGvrw9vI3DMnviD2QZit4n83LsugNtyEIHIJr51/D60s3aCSG
	 tXBRlLn/K+vd3GLTtn6F8p4+lD9YctTvQsIryI9DaC6nLlumJUCN950qSdl60nj9CO
	 HJJEimYOn/B7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF28D59F78
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093075363.14063.7735601891323840372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33116f4cea173fa5f6e54cdb321c20707457b0c7d58dd0d3a88b3a5ac16ae1a
Date: Wed, 06 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730930753
