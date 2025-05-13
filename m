Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355DA1E3DF2
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747111794; cv=none; b=NaRj5DGV4WAyJv84m7Fmd5VC+zFM0dIhy/b+P3JwiO2KDmJEe7yv6ubBYQ/eeQy/sROUTKqxXjeGZIDOnwAII/9S+6DH8AH2larjtar5JvCAf0QIB05esxwoXkcF6lyIr9N/JUUvEXHsDPDOMjnWCZDYLef7XOL4dGGhsX+AqbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747111794; c=relaxed/simple;
	bh=rDmgjE8LMVlvBlRMybXiCNagX9pSZeaE/0d6fKFTcm4=;
	h=To:Subject:From:Message-Id:Date; b=qdytZ2EM0czeJWELdGau2zcnzWrHLnv56IRFDxRPXTu8Y+zBZ+d62/IgP2sojaItoimTsSfqvHDcXEoC9BMfoMLXb2qsfA4jHGpf0u6yfMG0cHHftoIAfX7FgtBrEMZBTmGqwtI2K5zqwm46vrz8iNCnX6nwA2OYHWaRNW0ZXaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvcdeeFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvcdeeFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1799C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747111793;
	bh=rDmgjE8LMVlvBlRMybXiCNagX9pSZeaE/0d6fKFTcm4=;
	h=To:Subject:From:Date:From;
	b=XvcdeeFaLQUTL1IQ7l5evmPUhEl4/xxk9ImpuIL5Rus5kj4CLzztA0mp7E3GSea7o
	 SI1bIbghTbIclpUu4OEdQg0ogRELqMIRmOCJn28os6OIdJUNXFgMo3H0JXYIswS4Wl
	 197A4yafiQGnJuu49trjPtBwIojCZrMFxrC4sgk2hrbJFWpTkcHPdXGTGhqvI56ugP
	 3sYWrvN7SZ/sOuLcdzZGHRm9effYKo4BabgJo6OKWvdErg3oFbBgIqOb9v2nbfdnLK
	 S50msUilj616TYqvQRy/F2t8mw4zTBrK8gKgqDmja6OfGIFfw+GywqAQF7BI+SE4Dx
	 JfAO5iFzxJADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE94C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711179357.18610.9614504929146052609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae2633811ade1425cbde3a7d5d0baef8e872395082042b35a39d847f20246ed
Date: Tue, 13 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747111793
