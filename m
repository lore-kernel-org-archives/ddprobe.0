Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A41139D04
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721706954; cv=none; b=klusvnWDKXQz4VXab5wVA24VDi0Dc+PqbnUT3U1FeUOHq2/gOrHArKmdHWxnZ93XrJEY6ElzaD5R+9m9YwsHVxs8kFKd4CJL15bMxpCGqfcF2pX+k4FIZ5fdqDKQGz7HKYUrDtx9Uh0wZ8QKreUmDmrxpLo4CeMpsuUevvfy8Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721706954; c=relaxed/simple;
	bh=kI2CO402UBd2vc4385W/9lbvKo28NVkFcrsoTO2MBm0=;
	h=To:Subject:From:Message-Id:Date; b=I/baf4dKznHNqEMYp2G+oha6X4YBokXN4AJc7Lshp8yen/mLoHbUV2Il9fl2WUUjNaZ84XV/QAtaty7ZqyM83Q808f6htUDHFmU1uQRGb/Pq/Xj49pu3wsvb/uUEmfji3aTr03W/MAMe4uEtDc7mgWjxDBK+ypoHQTHdC07e51U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9en1/GX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9en1/GX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FBCC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721706953;
	bh=kI2CO402UBd2vc4385W/9lbvKo28NVkFcrsoTO2MBm0=;
	h=To:Subject:From:Date:From;
	b=D9en1/GX0KVfnJ5qx5Q3d0DbCpPz+gEzzZows5st0o5CCzDP2/w8m3R0tCXFQTboi
	 42Cj+AELiNNhcNy2/g2lNziUzQ5Lh2ETkUIJNoEsvX5CtAs7J1coRyYvgydkHWPqem
	 ++4qOy7zstdmeOrEPbaGk9lV4dqE56PzOLTiOyTJJ0+OXFM1v3iGHB9xfsmovojruT
	 MtZfDr9sD3zauOn2EC1fpNvlOhd3fYbpKNouzBQbnXOM8NhICIFbLMunxvI5RV8Lgd
	 ronCIVkomd0Atiazy8+W3E+cN3YEp03gWPTdq2rIH7Dl+VIV4pgFuUyPTc42hn5qI0
	 FI7PlEFle/XxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F02C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170695360.16561.4524817993633244822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821ce197b10003ccd3059d91ff712aa722447764e8effb58b051a8a04ef6a599
Date: Tue, 23 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721706953
