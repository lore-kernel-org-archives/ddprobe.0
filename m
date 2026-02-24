Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28B2D29C2
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771913694; cv=none; b=WFKsndp3hoLycD1KWZ2Xwv5nFmESHH1MrPm3MM5s0a0GHVV+cbScY9RQEazSONASmRQNqiphWqJ6M/Iigk64OBQ6xRjmuoUjOEnH9AFbNtHkSsfaSPx8hNfqPonOhhaG2DYpd3vQJzC6Kio++Wi+W3H7QXO5ebtbV16nPpqpoQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771913694; c=relaxed/simple;
	bh=nNGgnF8IdT60vuvejVSWhh+bG56w3kGNfRSeWNEKSRw=;
	h=To:Subject:From:Message-Id:Date; b=Q+Aq+8NKkoiwSqRmsq8V8gyra6STpvBugf0v5dywRs+Y7wJWmx5h5XgRmSYACOY7wbA3YsU26I5KNaYQQBQ2YJH4Nlpi3VHNlqgVFj1hNegYB9sb8Mey83jPsBqgXUhnG9dVQ9RXIMRDK5XWK0nR8frnZ6TW92LNNauPbm0nXTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL6zeHUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL6zeHUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D2C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771913693;
	bh=nNGgnF8IdT60vuvejVSWhh+bG56w3kGNfRSeWNEKSRw=;
	h=To:Subject:From:Date:From;
	b=vL6zeHUkiEfBKlG81aXKPzy61FzDnKNz29/BkJwNZ/yME6orrbOnwLWC4EcsEDTXt
	 h2JhR5N9Iofedo5rqFLRP5ejDf/XvaZ6ndzayF/vzIrvCOQorkrbe8dAakXDE1fSWK
	 6TTbPYv4Z4KAg6V3epyFe9T2MmRk5GqM1m6ZGGfz0sgYnWb+MLYVEu4tzgQ06srRHx
	 ygRafbcLIyW3Ub8zlb7Kbz/uvHfQqXXdo2VgNezv+/rnCdk3f/0QHboUhN6AuSCtZm
	 NtE1kl8bX9pZOzdOS4MXu/PmXczMuzTxHFP46tMej5DQ9W7seocpG5Yt5MUQx9giir
	 DHDCQEvMldV9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A045FEFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191369364.18560.12550471346512961470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3da2bfbfb04b559bf9a5772d16309a1262b8ecc9e0d5304321740c15bdfc0c
Date: Tue, 24 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771913693
