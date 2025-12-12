Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC92D94BD
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765563774; cv=none; b=HevMBxq1FKLyjNPbsGy6a3oltu19Fi5e8xiIChyJNG7m+PUW6hpq0l7ZWN0RSszsSCEZc6uU6yD+4IdWC0hDc72JaaiLaH2ggSeFfmtSNmHtqcEj2z3Oq2aKbausUpFk90oV5cpN1v9f94lZOiaU++egH13bvLtNX8qhiMknxLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765563774; c=relaxed/simple;
	bh=6dYBF6WShzMsnyWKjydmpmIPAQ1J3jyGsczaGYf7FdQ=;
	h=To:Subject:From:Message-Id:Date; b=lq6sDtDsvhRUePrzXPtcR9EvgqPVS3Rn2oCoHZPW9qMwc+Y9rjqLip/Ta1+HW1AJoKz9ho2ZcNk5RBlLximH4+CMfdLcn769oxIkMjQkHkIfqu4c2T0KopBu8hMUqVUAQcmEbwTbcH94Qf/+77mvCfI5kgIRMMWnCyRD6LfyjX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNkj3YNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNkj3YNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A94C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765563773;
	bh=6dYBF6WShzMsnyWKjydmpmIPAQ1J3jyGsczaGYf7FdQ=;
	h=To:Subject:From:Date:From;
	b=VNkj3YNP1JudVj8N4h8wMrk4n8Nh3cja0csvWBA6QI4nAHDemazTm7k5p1NNi2wgS
	 D1BaBYoCPIX16C/Q+L2eXqn+VREPN+dHTz77SlswqMTR+u8+U5QT4B/r8SfuJ81Kxz
	 6bX3rlxANHfemeNLnRb3JJkM6M86Y/dFLAR2H+nz5CSjA6RF5rwrDRSeLQiWyOKZGw
	 isBPb7Q1IUWda/q1DmKr1ULN+5ct+zZTyb/Kphs0d6AAoZQ43GDSfqTswNtNZ8VfK2
	 ASiwJLrYvxVo/OOTC97fyx3xYTS5FOFSeELDM0N25IulPt/Cu1XoWDVVOt2tGwAeFW
	 ECqKS35VPYUZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02B2D59D81
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556377362.30496.8604323934735304977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e539f2f457cc7e0f540e5c0064ddcd66fd9ed4d5a08dbf93f01106ab328f789
Date: Fri, 12 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765563773
