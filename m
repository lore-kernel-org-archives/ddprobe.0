Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2DE23E356
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765359174; cv=none; b=VBLrqBa7bIkmvrYSbz2/hfl7pC/Z4zCTqjvhgZqBPMtWixExg2OREJH0XSoWD4+u2d+c9xwGvRce51dQnzZnmFC/rNBotehMYDInxesWoX+JkCqWdYaEJfphmoxl3ETiCf7Iq4KBibIVKa6c00XbmNT3DbYXdxgalj1aKJiRr3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765359174; c=relaxed/simple;
	bh=7ORcLriUhQzJEgszksz4U/+3/lpmt6o4FOKuU5r/ouo=;
	h=To:Subject:From:Message-Id:Date; b=FBI5CTklfapBvO/De6D40nNY868axkirme73DXYP66kxK4QAShr4DYJHGkG0K4NXLQyyaL0Ct9fYg6YhUSTjTb4QJg6vOd4XYz4if6BVpY4BTC3dIwfbi1OeaMuy899xLkaIXweBzuabW3PkuJp9yL6RIW9rw31MrI+GgkCLiSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmyi50wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmyi50wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765359173;
	bh=7ORcLriUhQzJEgszksz4U/+3/lpmt6o4FOKuU5r/ouo=;
	h=To:Subject:From:Date:From;
	b=Nmyi50waIDuIr5bIFJGX2KE2cq2NLPdbX+seMqRsIl7yFiey+23mTACc39cuOb9mg
	 cRU8M/l6Kh267EXzUHOPU/dF/FETHbN/N7rXKIA7V6v7ymxGdgEflV9H2YCR7B92ZC
	 ukNNuO6+dYE+pmSxqa/vJfdqNIso3P7J3PHXGCFzT+PI9n1/gtvgliXzBYhEBtRT2B
	 lUer5WVw7XbBv1Dm6Vc+S4KD/CrqEQUD1Qf/lpt8e7r33/g7S3eRePOUs3wJHWBH7J
	 hoSulRUJuMBHrlTY3T5d/3sZJBvVX8MtaWTvNUkJiwsN9LzBzmm25hW+zalvzew+4T
	 e1v8woWmfX4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085DD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535917358.28933.11707862283420121024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4addfe6d604758bbaf5b0d1b47f91e961bb8ef6d11cf3a791f14f0b4c9dbff5d
Date: Wed, 10 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765359173
