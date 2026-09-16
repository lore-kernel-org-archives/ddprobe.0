Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E83BBFCF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789536634; cv=none; b=gG28riZH1uQGRbO+Q0GKhB6aqEcKxlL1taHpSYqMJ5HCZwXz4/5knRBd1Oym2+zdzumxS60DClM6jc98Na/UzLleb1vG4VK8dPI9eQGjTbJutx1hO8e2jl3HNmqLyAgiNCNGfu9k4Eh7jCwmFkK6KD+aC4kfD2gZOIL3CyBRUOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789536634; c=relaxed/simple;
	bh=dZuBHdN6bzUir20R5qg6gAQyOenfGVANnCoFlTXqkFA=;
	h=To:Subject:From:Message-Id:Date; b=NoiMVR7DrPkseJGEYNWmSah43CBmSv/iqomUcFrvzkQahpETFPNnBeQRpBsoRuNwN2bd7koD6qBmJs4NdKgEbgzM0C7XvZ08JgxoYyy452UrKWFAb7o+WaBgM9FDVzMxl4ZXyy6hVpMLKglrKnjH9VU5nwdWkzvRzn5uOiqbMnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDgjaOLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDgjaOLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651CC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789536633;
	bh=dZuBHdN6bzUir20R5qg6gAQyOenfGVANnCoFlTXqkFA=;
	h=To:Subject:From:Date:From;
	b=ZDgjaOLen1VtXY3UzU6xSDlNONpUV5VVf31ZW8WIIAPGk+4to0IyQEuazX/TRGMIv
	 IsUekucZ2gzqe1u1FR4MBflS3DTe5uUOnB25zi4TGFq8NmHHg5xE0Iq2nRexxxKMhy
	 7mL9D4H/R7KYxpPqhsSDQo97OgpAXpCtQcfB5N16F5v59KYGNw/6vUG8UjDpkLlVYc
	 Lva0Ur4JfOO3g7b9p5wXtAanN86sxGtEuTMaI5ycirFx5SR5RiSwtnfP3rLlkTkXq/
	 vMj4nfJOoV0G41E2CwaTcE8AiMXb8tnuaS3k7QO0p9vqsmj2GoijdByDSdAX0mKbYS
	 GKK1YCVyrF9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0172C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953663371.2731.12491816276636162782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11df3e7ad69cf4d7b0e820106a147a4cd589636e28de8146cd5766a5d1555f66
Date: Wed, 16 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789536633
