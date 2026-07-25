Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37298397332
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784974834; cv=none; b=RnXSq65g3QKQjFah+jNsaUEg/ohBD//Gy7T7tFMTm/i74nb/LX7FnuUfSCQAVOZ+gGr4FVx0VZzL4CR6gOm/IKgR5Rl49g9PEd63e49IhNHXudktaNXsslU5ranw2PNA1AMzkHHoWSn5jpG1NF/WSxzGkkx20zDcXIxg5OnNQ0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784974834; c=relaxed/simple;
	bh=rjT+zQ2pFYNYSAMgWjHXebuAUeuk/CPA/jKAlUygBgM=;
	h=To:Subject:From:Message-Id:Date; b=jX6vgOGZ99rPs9uFQc+nMfsNeie9LEaXD2dyh21z0YGvym6zmgq+BjivXrf24ul4l6PGkGtQeVYfSoUMAdfVBOas4MKhSWiKhFnuZoqc8XLl2wIvYrAJaH+bjaMfZOhROdLCYjTBB6VtO0Wmgb8wYrpQ3gkoZVBAcXxQui2LHrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQPnimZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQPnimZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45F1C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784974833;
	bh=rjT+zQ2pFYNYSAMgWjHXebuAUeuk/CPA/jKAlUygBgM=;
	h=To:Subject:From:Date:From;
	b=tQPnimZoiQ+Z/AZ84d8qq+9BahnTcEohUN2f18Z5b1/659gpxyNBQzICjC2sBFSnl
	 z67Nt07YTJQpsdrVhiV1yKCQWhA+4IIOeBauWtlmL+C4cIQnIS3P+SDegFnGMqtbBy
	 5/C9K2XWJyGMKiN2b3GJA5ZgFKTXvFVxGPIxC1kk7O0uEYqwE2hBYSoGFILaGuoFQO
	 ttDpyTorrf+O7FZUFasPT2Z81EZ3Ej5Q87iVTtqk7TFSjFCNykR/UDC/D7FQEppzMy
	 j9Uq5YNcZYG3fEsiJWfiNc+GqChhf08aAUCifO9E/G07xKfNOq4n7xl0aJpyb7PNIQ
	 DbcvFmnvAVHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB99FC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497483368.26168.3302806262567015397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf66b3df86d51e323c6e798527c917f6c09f4e7dd5e26353fe032b2877490a7
Date: Sat, 25 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784974833
