Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4F31C32
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726277154; cv=none; b=QocP2tNynxzP0hnTynvReQCmrZzffDVp1xOVQgZ1CrQCWymPq8PDvklfU52UQu863lTvXoxtnIarrpUfNWzc6UZ92fMZcAyuUgo2Brpc2/rut/rEA80XEFpkcu4OLMbjCSyzIYhYutoHujXARLSL8t4ltMpmzUpGQqOwWJ6o8gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726277154; c=relaxed/simple;
	bh=fyecE9cHsn5VGw40GFZO+CiGPgO9/U1rGsspob+sph8=;
	h=To:Subject:From:Message-Id:Date; b=K1Hsx/j9OsUSQMaDVEjZUUACrkSJCY3GW2Mh6krt/q+VCRdXinueVoj280Fzd3oHyL6NbOefI2Sm8kEezJRAjJctPJRWxoCSVzuRCBxEWfG+A5AQQJWZNToWsMzmrq6G5wIUcAzCPfIJ40fLs2aSKHMO9A9UwgNqXJ9N1NDzhmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mL1iHSjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mL1iHSjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17ECC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726277153;
	bh=fyecE9cHsn5VGw40GFZO+CiGPgO9/U1rGsspob+sph8=;
	h=To:Subject:From:Date:From;
	b=mL1iHSjl8IvPF+pCjr13bDFkZYXcEwEEjR+2p4V8Tire2gHEcxAf7AkDNCu8PUllj
	 qZK6RgdFbjdCpUkPbvXoVbdeQl3sCmC5Bu3UWsPUxQ7cemHDgy8nbD0HtnsZhkNT49
	 op/bVBkNcvj6DaiRKFXMGePc6CZArAOd1S7y08XmzZUQYOkLJc+/MaQXLGFrkIhadp
	 AZpesrKtL6iKSiIWDftW4+ER0IdEoygkjBMPkQ6+DMp/DWSczb2qneOc7ifYjzmSNe
	 gLqOcKBIQMxHx5tgtXEOe83vGp6l1DsgZ7rePSJBCMS/haeokQ8qHhbbpG0uLS3wk1
	 b+aYpIxyvV6Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCAFC6187
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627715358.15113.9087747729821924865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407c8047c545ece22bed860e62cdc54a15842a2b598289aef9b1072b40623799
Date: Sat, 14 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726277153
