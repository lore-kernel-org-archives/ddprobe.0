Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00ED9364CF
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708779497; cv=none; b=C/LRLWitNjkJHOS+BTOYTGv2/BnUg/g8O4o+oeQ4ZOLUoxG3zbnnSGk4OtCZFlZkgl1mb2olmmdeGExNylQ9VpjUHmTTJ1ibq4bsFm4q61TtqYFTMn8AB5fZjdt1M/9WNPPdV393oA/drmzN8kyAHNgv8+Ov7jgcIfC+Deu6ors=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708779497; c=relaxed/simple;
	bh=0HSfwj0/kgSNBx5D13nQ3Rfkf/5qR1AbGa3n28h4q58=;
	h=To:Subject:From:Message-Id:Date; b=ZMKFSki4WwvrLHH+XVfJcdPI6W9/NVBWc0uN32+zT45PRUIoXyXD/xh/W1tgLHZJxqdW3Tv1wSCw0yu0GEhlCUxoVIKTA7oSq2HpGjAxjGVH6E5qkRAUh/Kf7lrW9KBIU2zZqSp6dCYAxVO3oJfbqIBsQuxA33gOJ7jBWwhufY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaYuS1Un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaYuS1Un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 868B5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708779496;
	bh=0HSfwj0/kgSNBx5D13nQ3Rfkf/5qR1AbGa3n28h4q58=;
	h=To:Subject:From:Date:From;
	b=TaYuS1UnJc9BRfRWlW9CvLwhtHkebH55IR4GuV1neHwiOZ9B6F6y/E5WRBuPIVg5y
	 yTS/lWKZcJXlxIIF9VNeegPqgHqck0R1uEm/fWDSgz42jgfZhWyu03cCoJDoHHKwNU
	 YNSRZrRvpFmhK0rMXY1P1s+V5v8GplmvGpQ9WLFMQnaKaC6fBot7IZYh4uC52vx39h
	 uGsxygrkFtukQgxVxF4JIdzkxmpf5sf0o59wSnMqQR7JAjzXO8UwCWI3XHVcevbnZv
	 NtlKKQBkksAyyfRU02Z+flvmfMJ3XRqaRtiOHGZ2yVIYoZ94CNyL+l/mvw+8MKMPIz
	 YmZKKmdjeD0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688ACC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170877949639.25012.10206987386612333034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775a9898d06471f8ba73e777ed69c115e3d1dd1510e038c9ec0bd81fa232179a
Date: Sat, 24 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708779496
