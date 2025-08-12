Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BBA2EA167
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755043194; cv=none; b=YsqXfHQnK7pBsJ2ZqTEJ9u+B/hodrFZzmUmhw9goQYra2gud3Ivfawo/FBaId5dWeZ42zmhsAY/HiHHZ12IwEOlJBnTyJF08V+ZagUeFizhKPNpgZ6gE++BZ04NpZj5MUpfq/sEq0VGAbHXoF1Ymn8pvoZl4FSBbVBqkt4wQf3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755043194; c=relaxed/simple;
	bh=VmuasyhJKbL+3LLTt411oTqYxjpThvibShZNBY1AtVk=;
	h=To:Subject:From:Message-Id:Date; b=C0y9SI1eQIpIq7uVwrzbwHiw0ROq2jj4jUu8SpkD1gGPnuIFbH38WHB/lrdWUIQusJWwqkhwoMscaWOfcP2PFY78GemknPYBaAI7Xbw1Say+RSUR6T7SoqUFsFCVovdYfFoil1A8TYmFJ6NJBWIHKT4CPB9sm4hBOja1Vr3oCH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn9a/YST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn9a/YST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C87AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755043193;
	bh=VmuasyhJKbL+3LLTt411oTqYxjpThvibShZNBY1AtVk=;
	h=To:Subject:From:Date:From;
	b=rn9a/YST8qYSABw1hBMQ+5+R3Tl8n3kKg1BUCiz1fOE8A4pkJ3Xc35+ni0js1RMj/
	 +v8/9dwnt/CF0SvNyUnHbp7oAqRbiVQ/KAeuOWKaJFffIzbCt8xKHjG5Y4ZJVASOHo
	 Ew+wtVtBOD8o8OFP5O08RjVA3z/7Bz9f+mUoAbZKdnG9b0AIIlXbp4ldDbd8s0ztto
	 YkAG4HuL4AyzqLQ7G0LMpPqpElN5fyh6IAcBKxIBYTRDRsyJQ8NN39/h8MjZrNSadq
	 ljs0bMbLoAfjRSTO1KD7QWM5IUafE/bmOZbyeTJ7r/Jl7ccsJyhChRpsflfkA06ndh
	 oe+xAMXlAwREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E423CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504319357.11524.11294925454032881584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec95ec70715d9dcf1eb383918bb649bfc9a67c03fccab21d14d89181871ef4c0
Date: Tue, 12 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755043193
