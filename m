Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C468F58
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746289794; cv=none; b=b1pZAKE2gK7ntsTMc2Bph0DZP87T7x7TfHCOsudFVz8w2KfqQ4FM89rqfu49QmZTegXfi7L1f7YuptZPQ9izb+u0Vag/GYKpCYPUJ+2CJXaNBZTAG4p4vWoD3ITxPhfI6+jq7UpAVdhUvq6VVgz0J+sHYbiZkW0EHqTndInnVfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746289794; c=relaxed/simple;
	bh=n6lJRR7NjWs2/Z8rP4HPPKNAOK6SwZkg1+Ov3BPEysM=;
	h=To:Subject:From:Message-Id:Date; b=QMLj+uI/ZrrWuN7h+0h7TBKHzoQLG5DWAxC48gnZA/8apXoHaEWHX8b/UIrcaUqWCG30aW3jQd5THjC0DCAHAdKgbDHIbWyR6U3quE5zYUfpbtWZ0E+1oMgAWoVDoGN5CKeEw5n/CrYBfdrrkFnRNI56ZElj7Bl0HaahsckR/8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJrQ4o6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJrQ4o6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746289793;
	bh=n6lJRR7NjWs2/Z8rP4HPPKNAOK6SwZkg1+Ov3BPEysM=;
	h=To:Subject:From:Date:From;
	b=YJrQ4o6HeIx+HgKDx1sozHCtIoJ5s9fJmwRQXJEMTP2/d7oC6eJs2uGytpKyAk/cL
	 r3rWsVC0xzorjM3P3taldJr6SvxT9aryhTGB/BgAgkC1g1nPoASd8YN+RT7iR93rAn
	 nmkhcvzN2w5eBP2nnAueUc07ovccgkjdgfCm7yyFe15Ixo3u0BgKtjTCZBtsYXx5OH
	 St2+9OxHi/PcYaYNG4MKDahXYVz9PSOQBxbqASU1PFabrroNgMLx6cSz1l0QKXxkTh
	 +GXfa3Y8KvugCUA0tzQWkOfssKst1GkwVseeyGQH/Nd+J1NiKwA1iMtDjklKrCFq3D
	 J9IS8SAcegbAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141DC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628979357.7094.10813906092948208436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2090162791270637143188d8685d04882fb87dc682ab283b4b322e0a670753d4
Date: Sat, 03 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746289793
