Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621528F947
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749856794; cv=none; b=u0MoF3avdvpAAbIcDCa3eu+8Iqi9MGgAoZKyvfBPsQkrT6eQtWEJLihEfIKoFnA3htvH6l1QXYajmOjysoMb2Xdewh33vw31lEAi6aPP8CcFcRVf0ylOSF8TEoPxkm6HIOaBNtRAKMh3/pVYC8l6K8G1/dsNOcF1BTAqiwh96fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749856794; c=relaxed/simple;
	bh=h2jPTlho+t8iCljknoTIBFRgjMqwiuvhoabGKutseXw=;
	h=To:Subject:From:Message-Id:Date; b=WCssTr8YIYY4pe3o0FH1+mdzrEcr012wNv5kgkRs4BkrAegRlCJ82xwdhmOIn1DGLz3vfb4c4gce6f2Ka/O+gD4uJtaJEtIhEXMUknTkdC5YixwxqclapmqzGRgEBvWog67Y1LbAxQtZgOVVNt78W5fHWlUaEBB8TJ1KLRVFWV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDXl4k5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDXl4k5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95EAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749856793;
	bh=h2jPTlho+t8iCljknoTIBFRgjMqwiuvhoabGKutseXw=;
	h=To:Subject:From:Date:From;
	b=XDXl4k5k0Z+DgMxtgmPLn6bbvfBlDbgjGU2aige6J5p4AZtnNEYcdWfIE5Hflc8AK
	 509t8mEoKpKqdZe2wFb8989lAviNGEISqX+0uvBnKuU+NIfLjktRM/ypn7BGSCmd7z
	 5r3onOL7CW68eIeqxQGtAFdfNhzHFk1Z1zWFMJdkpVNW0MkGJ2/Y/FSFAaSs7XU8zK
	 JiAtB4i6J6P5u9WeljZQdX8BALoZhkysIkwt1C/8lYzAT5PxD6NalQy2uqIQpYi7Z5
	 OR3QUn1NLSebNppC5X//ecwNM9/0cEfIQFh9NPLs12cr+b0HvYDa6Z34eb3ztcraJe
	 c5UbII0BFc7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9604AC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985679358.11450.14573161977549785650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0f038e90475cfcaccc1c7a4b639085e2be0e0806cc0a9bf40b9a1a5e894a31
Date: Fri, 13 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749856793
