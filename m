Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39120125B2
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753838394; cv=none; b=A/exj8mKfldEoTq11tUBBox6qvCST3+jmfOYs0H2KGdTjuAYwNR5JCdU/A7iw5pmz2DQestmdvN62iw8udMupWcY7xzLsf9zFVYgunepeS8v+/LiP/QU/XSCPY8b0sbBLq/jM+IQkq1Me4SAMdCnvEiqrpBkHasCD2IjY0Okwls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753838394; c=relaxed/simple;
	bh=dlRRcQhX4IT8V3n/5r+MAfHfh3LhepXymKLHfoHgW1I=;
	h=To:Subject:From:Message-Id:Date; b=qTC17sqkJz5b5LFzdkdAZkztGO2HcVqAd1SbmbtrZqTP7MtqHFxTVedr6jm8W7QPtYxuYX4KGg4Pz/sgX3ZnpqyORDkgS7ahECmzNlZbzCOtaU/YIqAvWa2fpOcRznFwiw/xLU4roix7xOWJPAbCi/ukyXUHgnv4040DnRR20Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLrVlCdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLrVlCdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D6FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753838393;
	bh=dlRRcQhX4IT8V3n/5r+MAfHfh3LhepXymKLHfoHgW1I=;
	h=To:Subject:From:Date:From;
	b=LLrVlCdYj9ctGZupD3smLrE+/yA8LbOYK7ekqXNzNHYWzaHb3LLUIuPM0RPQaWkVN
	 NxroJNj9IDrdZgkfEMGMGqFWO9aNAU/2f0j2KsPM1reADE7dPORHQjVstf9WaS2TTc
	 Imqw2ObQzNZBJ6BRSQ7od9BvCE0MZYd3BYVBSMcPyxOKMygyDnpvzF3CiBAr4UVuqC
	 osriNeqQpW71kdIlYAwjcxRj5CQcNipmxa0bFb4dNZLWVJvO/hd3DRhwZod2I9BN5P
	 HzeMyIca6GMoKjX4YWqzhAWg3jofhsAFzmmmKtqxYcKIHlzgorooXwqrFqVZcXLSde
	 eFa97l7/inecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFDCC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383839357.12508.12646117354961675732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eca64e99447341910e6df0c8262b44d84db24422a7d55ab735e1595313efd47
Date: Wed, 30 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753838393
