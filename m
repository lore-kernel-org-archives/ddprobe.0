Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A31814E2F2
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772846094; cv=none; b=kgqM99AvStxKnYilMlwvc9OzkxMRaDBLhDNhk7jY+hui659Nx0xoySaqiFsnzdmh2NR8YxpsaFtEGowEhcv5S2v4PPArkTLS4e3OWEAtxaIv1+idJwrDdbTSBIqlMJdPxavfyaQn1zJkDL7Bhzob4/KEp+fzkol4fcItmrsFSzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772846094; c=relaxed/simple;
	bh=KLb/hg8syfY/vrabENQxFVCgTiA5Jyo+MXqyI52VDHs=;
	h=To:Subject:From:Message-Id:Date; b=pW81k1/2XDlCZf06dl+IAQx84lMkGAFEttF5UhdMCIthuEDGoBrva8g6QBIyQKZZsP1c8OFDXOGlQzc3EAUqYLSfN0vfue1ud39Dig5ulCOMCJzZ0RHPpXp4FKJggGpN35I5XguMHrWKFGCzTvkgDAd/EsnHGLNzCf+PQBj5FeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM9lN+tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM9lN+tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772846093;
	bh=KLb/hg8syfY/vrabENQxFVCgTiA5Jyo+MXqyI52VDHs=;
	h=To:Subject:From:Date:From;
	b=kM9lN+tnNaUdBlTkyMzYsZ5OIj+dq9JnaeM1rMYy86dYYT1f7J+tolRZgkZoaz9/p
	 c0tJI5t6l5fLSr9WVtXbqO/XJL0zBaW6et2qZ3QkHJnRA3qunlYa2pxSJ3M/NPmVGy
	 vyAoCCzoLFLmf6yL7FnEeFd3zOTNIJWfN/1bfC14oG0hcjr9E7PpsYQ+RNrE78rbXh
	 rFUViOZi3y7O51t7RjoR//WHzW0IlgRtgo1TR51QejNW4fOo5x1vVWaTtkqpH9W4Nv
	 UzDOOPoe/ajN+9ix34nUDWZU6zyX1eUjZomVsNUAJyoymqGD8f5Lix4sqp61ZzTE46
	 tJKGJV5RJUonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538EFC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284609357.4573.6877239147170255249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5483bf1e21f9b1b9c2f57ac785ca16037e5f9a08e3a9b45b422526ff686c323
Date: Sat, 07 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772846093
