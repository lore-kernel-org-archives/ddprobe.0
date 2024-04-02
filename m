Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104561272C9
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712068697; cv=none; b=vAI1yvB9p2wXDFonnt2WgcKneCMzLAxq3+Sz/3J3SVQj2rz2Hhc3blMuWvrgRKj9SySZLMOCqSWfFn+dOBB9niVJGdOr2chTvplNwsU/Jnh+vib6JWb2D5v91twFHQToSDcFP3eyMBQNf5R0evnXnQ+s4JiV9rwU2SgxTqA5QE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712068697; c=relaxed/simple;
	bh=DySA35Ex7qX/i8k1KP2CvmLE/R2eG9RwyrGGNQnO8VY=;
	h=To:Subject:From:Message-Id:Date; b=aB/ZGV5wvhLD+kyQ0CE4ASYpOGjJVUGjsva1ZXpL6bXnok+7PGgiEbxRyX8cFCLK0QHUAfFVTGkzzhoaj3zIFujOSrslSnkHHGofHrTCf76Tt+0bwtCBIQ9+vu3XeTVIBidMewh2zOYbuIvUmR995OlIZMYWPZPGQAzVL9bIusg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aerfn2CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aerfn2CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771E6C43390
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712068696;
	bh=DySA35Ex7qX/i8k1KP2CvmLE/R2eG9RwyrGGNQnO8VY=;
	h=To:Subject:From:Date:From;
	b=Aerfn2CZrhxPj4dUK9UDWVkaNTMkt78bxgmfQSdhXqcGt3uJD/CrVKGSwIs3lE9Um
	 yE9DGUG2MeAtuLDdQVenzjlP4qBCc24kFJxtxuF/6yBpiUghL7w0Zlk1jB75rv+OaN
	 zGvjMYnLEHbUmQ9ngtvySkqGHgBLlZabHobYTCNnXg3MFdy3g6RgLC3KUIO72p0dm4
	 iLcsSC6mdQA3b0cowvUUwYFmxQX65kiRWvAlHzxwtAnYB+sS7TsX5vtOFK1m4/6GTL
	 Qv1kIDBcrBpjnkJeanjQ2a369SSqN36W/srAClo7a0ql3TAzWQMJxdvg8ea/fGRvLX
	 HAk5S40zfPQjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66891CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171206869641.26644.17923077872064758926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689b5c8cc398f060d0957d8d96093d73ab8786494c3e4396549681e247716a5f
Date: Tue, 02 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712068696
