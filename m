Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F1FBF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764127374; cv=none; b=DNhd1PuxpRQ/UL9i2dj6x68T/s8JHCgt00YJLqztc+sHeJ7nH1b5ssL6OmKymYryyRjTFFFe/NXuIMqqXsqHhQNsHuE7IANKJqk5Y4sOZfQVzlo+n6DVoE4vQGvSjQnDaDFhvsLOE3tjuSIQ9Vt+KFtDA/6Iv0hgJG+h2A6iaU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764127374; c=relaxed/simple;
	bh=fKRFz796RpOg/EbdmZzXjzdGVNHYx4KHqIbnDDe839c=;
	h=To:Subject:From:Message-Id:Date; b=uP8/RyPhH29UsWEhNFUiH3jgNv5QWfDnQeo/AmBE/1KpJzKKV9gkCRJLMvHLUi7XdfeHqgl9XOJx1sVYTK0fhUgrNW166xZfEIpo/euVESlDmaLk8Zz8flSURaNeq9OA5OYRUIe5QkDjlS6Gv1wa5TqPnF/bXwGNjYwoao2Dk4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy6PcL+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy6PcL+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DAC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764127373;
	bh=fKRFz796RpOg/EbdmZzXjzdGVNHYx4KHqIbnDDe839c=;
	h=To:Subject:From:Date:From;
	b=Fy6PcL+YObc6T4m1ZCryYvo8dvo077luaotHWXu/JkDYMcMGYQpBI++hHkOAMqgZB
	 nm4gEIyvpGeUAuCo2p5/a6fzvm6w6vjYpHMUe4PYna8Aol5XFqlD4mArlTpe5Ly8TS
	 wPHtOP4pJzY9ziHfcB5ePcyYavTrADRFwVTEiczVdnuAKjKrf2oMLlfglmscfC2Hi4
	 UnGek4DGoWG5EtS5gC9UHb3TUojvehcaCmSvo6Iy+SFzMu7StY8J0JaFYshhVkLhSD
	 zu1Ik68ca4LedsGX9nF/mmqvnq9gIUOQh+f7gPJ38szb4KGuWj/Be8t5Y/zLbAFxwu
	 koMy52O4xT//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268BD10375
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412737358.18871.13244785008604134664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9261dd2b2fbd0cd8eb188f16bae037045783d36f5b96e30bfc2260e0ac79a1
Date: Wed, 26 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764127373
