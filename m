Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F4285075
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759459794; cv=none; b=Fvsvlrs3XWuaHMvXNeDjCy0ynPmfbwhe8Fj5W7Go7zL687mQmiz4+A+ya7g9MWZ0av/JnT7ODy24YtlPlDdVIHdn1QEyQ8XqPTbJ9EoX9E1QtQNBXYGwEW47BQ0dHRlUMK176aWoJIV3+Y4LyG1Vs5QpkdzYglLoxQeCq3JWGn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759459794; c=relaxed/simple;
	bh=cvJevug1XXDidk9wi3dSEyxs9+aQVUMKU4gZYDFtR54=;
	h=To:Subject:From:Message-Id:Date; b=MJyiITG5NsdFpsd6A/gxgcGt6oLwoAeaFRWvSvk+tR5k4ASPU5rTn6KO9KKZ5JtX84w4b0NndDq2QMvx1O4vTwx7idpFGrLReQ3Dl/ZHqi1xl80Xz7h1act1056xC4Pfx+cZCbD52AloNQ/AtSy+fTPKpyA3xjzHIN8m9rSdrtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4OE8Kvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4OE8Kvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759459793;
	bh=cvJevug1XXDidk9wi3dSEyxs9+aQVUMKU4gZYDFtR54=;
	h=To:Subject:From:Date:From;
	b=P4OE8KvsbLh9uJ72FLQj5kzKVHb5rGzkE7CgAh8RS2JpkpKhSYMVC6E2NFWUVYXWw
	 tX0Lf7Q5AgnnCN0awt6fmGrs2Mnri98OKMkJ2Jm4YH1QDQD0ezhGND8tlupA3co1sb
	 KazaENn2iIqp+10JPDagD5RyJV0NYLyzyNe/LInNyySZNlBqwtoQi1K1iHIRHCRAk2
	 HVGkcrMm0csy8p0xoV0gQvLBdoV6pYcdqhNvTv/PmFHrL2j8rmVqPoOiY5yfJGJh8u
	 tXTORduMIYDDbgkcjZf9wKVRAgGAp9FXH2yjxmAOLvRLab7+BZ2itfJTrBv605MHin
	 uini4vCvH8aUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB8CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945979358.24836.17600187233194535654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1458c9873f8ca6ac755b291881974ae1097da69df3a4b620fad24355a8ab611f
Date: Fri, 03 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759459793
