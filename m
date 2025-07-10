Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B027A92E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752182394; cv=none; b=A7Bx5i/4pDF/O1regQFQeSYnnLze43LrxsiEPd/+ysU2dEdP2lbIwtjkyxuXz54197UJWOWkEhlDU8+42Mj2br1yL0eZyRQgp7jB2F3hUeqcFBfkm1Xh1e58ZJNwV64Tno6kv9ezWvFqZhPsWFHc+ZcdRr0sQG8A+pa954qay1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752182394; c=relaxed/simple;
	bh=l2dG/GihPh4GGF8RYc8xCiYWsrwYJDO3tNODykePVNg=;
	h=To:Subject:From:Message-Id:Date; b=lIlKgHkIS1kG9OnVtncbeJ7EPYNmyUWjd/3Moo1Efv9hcwSSTb95iOnKYpOyRitHxmHn+RhC541FJGjwDz7tZLp20B+W6rc7hRQ51R0NtHs24fZAraiE9UgJCdLCqdqTc3SUPRIh0Vxt7mokEO6SiVsBGwASs5/rRs1pZisXxBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Af2+/MJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Af2+/MJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E655C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752182393;
	bh=l2dG/GihPh4GGF8RYc8xCiYWsrwYJDO3tNODykePVNg=;
	h=To:Subject:From:Date:From;
	b=Af2+/MJak/PH1gfD2Sn2o2656zGyIQ86SKqM064DJ9LNmrjlwws08oABRBKB37BvK
	 YvEE9x6WdYar5YlXY4nEc+GKNeyaDEmAB9M5qFgiuwNs/5zKF/h3OB5dEMDXF+ArEg
	 CGAD1uceKdQ8xmUIv+3FMKX49ZBy3onM90XLFiPG7CfNNPQbvira8qD1zxcbAtGFyx
	 +oQO3d4E0xEoM+6YHcztFUdkSzPHzpUuX3AbehQ3HTQByiRi1vgNa+5UfMh9Mur+DH
	 iimaud//vaTeFAB0iwjzhBMs1SJVDXi9XsQXY/gwPzWiu5CqsC0y86xe93qgTUyrhQ
	 JBWGiq1XP/hqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F625C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218239357.802.16596201658405188737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef1461cf99695820269c828ba6734a6dbf081a2551e47cfe21cc36f0fdf1dec
Date: Thu, 10 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752182393
