Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4451928C01F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746736794; cv=none; b=Dq2CavN58c7vd1hLZrvrRCLJ7/h7+JdipUsZwpK8G3x2zlOviHNH11GnoSYwBBWsq3QSDQaKaksfL35LvcA8M6h8FvoxlG8up2s98ENix4AtqjdXvmTbqxuutyvq5F970lYire2dc8erldsvK/lexTvr7ATJYMXiKHv7TuslQUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746736794; c=relaxed/simple;
	bh=zxmeRewz6zOgb4ka2R7utT2C2YFczWuCuz5nr0jub9s=;
	h=To:Subject:From:Message-Id:Date; b=K2lhCfkJFvik/Bwy5KJ4DtqYlT0nignd7bNail4buPjqQ0eLH8XbPFSahJMD0DWe6ApsN0PBCEHdKueFScOiiWp5nAqTiQw4vuVh9kfm3NpSYlCQpYjnICesyE5p4rX7xN7Z5WfYPPeiCostLU+VIN5i8yYxvwiZlTmFRjUjHbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iW58sm8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iW58sm8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746736793;
	bh=zxmeRewz6zOgb4ka2R7utT2C2YFczWuCuz5nr0jub9s=;
	h=To:Subject:From:Date:From;
	b=iW58sm8U5rfYAxN90suOQxMc6r8fJVkvY3cjSrz5utsXo8tHRzQoXBPrwFaXzcqly
	 /qZHCKVZp8QbUHZ3wtcTwPKgKeYvP64Zoodivq+6KN6V1QDqqOJKEpin54zuaCY0Yw
	 Kk+Jm/EWovHY5B76FDFG0FMGrv1EO5OmZ59UIhwDTR2V2W5DpLZoNle5fJiMcglrCp
	 3Js5ll9BFP47BLiKbR3wCoh094Ogtc9DB4dGvSR4dLF8iW0iQzGmNkv/t4Y0tkmhz6
	 nlkMUn1nGQy/nDips3oZ+8S9LZVgJIO/bykcpDBauR5RjiCBb4isZkG5FRIGpoclLp
	 Ly1q5/OxUgn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0DC3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673679358.810.16220228896054261781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e24fc57f3003aa194dccf97e367710659360155b635227c8b71158ce9ce67cd
Date: Thu, 08 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746736793
