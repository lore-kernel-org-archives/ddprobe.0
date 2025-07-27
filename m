Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0E67E9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753630794; cv=none; b=j3uT8DDIQBWD2R89I+HlDOhxc5YCC5Pzq61OLbViu+UopKiaAoUWEVYB7oF3lKEEd4/M40vllm5yvF/01zbNWxvR7I/kA1CSV3RMGZV5PncxDVt+scfEvgWi49Ak/OFWAgpmoOia8LO2opYYeFDvZ1QufmwX1wLWDThxSGdosHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753630794; c=relaxed/simple;
	bh=scT9YndHvBm3tPMmb0whhXURFw20hKv4zMWqLvTgxbg=;
	h=To:Subject:From:Message-Id:Date; b=JgxkECH+9EDiEAbeJ3oweBSmoHoT8bF6tIQCRyAWSKFGR1t/1JtQYswvS7r1QvfUUA9yB619SSeyygvt8H/ewnEGoSXh/bnhiDa5gfJVK/OExKdaZ/raftB4Ap7qFVvCug3pIFA4pAQPZsxk8/e2afWJfaJ+LOfAwyJCL4WIbps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk74QlZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk74QlZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5067C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753630793;
	bh=scT9YndHvBm3tPMmb0whhXURFw20hKv4zMWqLvTgxbg=;
	h=To:Subject:From:Date:From;
	b=Yk74QlZZqKRBaY8urPh0sWntdBSAdZA5vT0X5OYXuGnKVHawPYnivYsBrCBpgVpq2
	 W6p0lfpSDSp9ut2qZ+Sh13Wv0QRpzKVHQZRo4P6PW8QvX82FUVeoeCZP1I1pBckEuC
	 tL4rN05u7LIErVvdFJ4mGSa/WPZjJbaX3WfZaQqYmz7kcICJEGveKDCegG2NPajnob
	 6VRuLpn0jc8HAFZnG9M0gj7icjnc/AGEuSJsWlCaJIWJjTlteVIEF+/TRNlBeJT5Yf
	 JCXIq9Flr4tylPMIjDatF6Cd7+4ZH4NBAQIkx6vfONbgRDtO3uEvRaQgOLSKaZ5qnW
	 Rgu8PxVKsJKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCDC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363079357.7050.9594794284822370101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700cc7f5fd815cbe712132b8d95d77fea8dce89633d7d4eef50da708229115d5
Date: Sun, 27 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753630793
