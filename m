Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4812414659A
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735429554; cv=none; b=Uwfsuw8016ibE6mGIf48dUMzQMxY/D8vsq+elQK5BkzfU2H+pMyN0kL5sdnEV430uXIRinpTXLpCtiyrgqdN3hZsKynoaPou4lzAmDPjUH1XdYAJ2crCGZsTwetrOiZ3mFwtO07f7GJbLtzu5u3UGaBP4NCUcijUUllQcAMb0ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735429554; c=relaxed/simple;
	bh=0/ldvVPLyorK2o3k1yG79sdWi4rmotBIgZwe/UYKD6A=;
	h=To:Subject:From:Message-Id:Date; b=lI5RRkP7pIELtC+Yq0Y+7nmientNtZ7Xb6THGtP7CRWkHyMGeo9of+5bKv2v6Z6TsKLkpXx9dCqsfRCMA/z/+LiOhc4okr33GXblY37Ppgv7Is7Qauetc7LLSPPfp35koyx5OsZBshUID31H/RaM8G5fF56wgBjGOWJKs8Meg3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msO4Bxuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msO4Bxuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEEDC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735429553;
	bh=0/ldvVPLyorK2o3k1yG79sdWi4rmotBIgZwe/UYKD6A=;
	h=To:Subject:From:Date:From;
	b=msO4BxuqX5jzbR8a75muUqS6k/OdqZI34LADt9IPNfeb67GYvXKDc+S4uOF9Yk8Hk
	 9WHG1wXD7QzaR8kCchzx+qjy0SjAS/N4ApURBZ6ODJutOsJx8gu81q7Gkrqc9PAp3G
	 1uPOgT3V/vztzJvNGpLdTswdXeMgU99IZxN+HQReP+s0B9fqVwenonsL8rOQNXRrfn
	 kCL59g0i7QxSlNJtgIVAx/7wQK59KY4ioVUN8ESESB8wr0HEYCfwb0vclhgGwEm5JS
	 MMVRCfBZDmxWHl0dXPeFl1vNhe0UtZAavaYx5R1TsSc5tuRzbsfPFVcptKoWfrRLb2
	 8YzN6P8bWv3LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA9E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542955358.21510.17186264048138712885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee655211386180bb07e073a3b1c33530483efe50b6b736291228ea1d38448c61
Date: Sat, 28 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735429553
