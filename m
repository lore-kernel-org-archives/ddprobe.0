Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340D01B960
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736047554; cv=none; b=EsGyLvH1aXPAwkVX8iFvMPnauRpDTMDHLgs68d8+lhSSZspz3hC4z2T6JBMyvJQP1G0MZGEWbYkmW9EvhikwkbRDni3T5fKcFd7LPDDzySFxYM+BBALWmJJ8s3YJEhuNveTgcoRNTY6TzOM0zC6LjHzQ7ZQbinyuJxp9v2S3tGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736047554; c=relaxed/simple;
	bh=l482r15WR1bMGZsaS8kwcjdIlhfRJyPdzZfhv9S3xyI=;
	h=To:Subject:From:Message-Id:Date; b=MzIcizzVWVfmL8Qu83OyJoRjvJCQvan+AXi834w9mvPdmNc9dprhPK330yWa8ZTQpgQtoiYn4n7BYimqu9zMTXPQDAuzvycLdHXEdcT2cEtfDGf4fmnG8gYrpTAfiJKiNsLOizWHew20ilsg5bwe+R4vqb9GZUZ1nLA0oLnqvvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJyRCGFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJyRCGFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ADCC4CEDE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736047553;
	bh=l482r15WR1bMGZsaS8kwcjdIlhfRJyPdzZfhv9S3xyI=;
	h=To:Subject:From:Date:From;
	b=hJyRCGFT6PRv8x/7SKhvBQU1eT3j2VN7Zp4epYvCXnqvWxQNuj6m01tgWWh0/QW/M
	 U+itz9i0H6gk6evw3/iiY1vbFqvkpparLWUqXA16BRw99cGyIRVxJNu+nwFnCdL66A
	 7fC3y+nSxYIDU2+erjQXXNQ+twwmLjzqcSHID5tAIU1BJOA/RQvTMijSCPTZlKrHGY
	 T+t57km+03xlgfJrUm6w7/7F6+yqP2bR2cnjuUzPz1Z7kyH/mggsW3ziJoSBd+8OBK
	 CSCA8WsC4sTdtKeYpndx0MK1NEdP1NzN7S5P82H3yQwKVa3vQMdszlh81yruqh5y6u
	 rNWGy7/t55Itg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E5E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604755357.16539.15418337305076059498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9539d50432a3ce56c63a71a19cefd7fb34d496fbf65628c3842a3d530d9bc27c
Date: Sun, 05 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736047553
