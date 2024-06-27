Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D7D4206D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719479063; cv=none; b=ACMWrdpjQAD93kfodaoxpXauHRAO/jRMR+f63a7NVsxE2JmuYZfQPXsV6ODQD/pe6tiSHt4ugVJCDPSG2+GyPQl9yKy5JbB97S5Fmopv8wy/DYJhyc8rpiWyKdq/TKl1hwlK+PR4ZUrQbvSxSg8+Twn0dMij3GETaVk49KZ14M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719479063; c=relaxed/simple;
	bh=MXSCnNmPbu+D392XSAd8/+Uu7KXd286/vYECpN/uzZA=;
	h=To:Subject:From:Message-Id:Date; b=Nf7UtSVHV56wtGMcHffPQNU+h248frk4MEnZNGEP5tqinGVojyWuwbHFODvHFTXYZ7urDcAz2hf9QoyQ8vB4GHsILFWSLJ8noJyYeZW/57rd7/AiLGKLeT0eqEWxekVn3ze4xOefnysbsSTtE8BMARBwiSoc4AcThyUKjI6TfEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/X1d4V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/X1d4V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D7DC32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719479062;
	bh=MXSCnNmPbu+D392XSAd8/+Uu7KXd286/vYECpN/uzZA=;
	h=To:Subject:From:Date:From;
	b=G/X1d4V96F2P1rZGHy05zhsKLvOqK9AI4jUt9oX4T/0Lnh1zW3rzqzD4H2qkAF9tg
	 lVkPpc84CLzwYuP4VOCw5V8h775Fzm57KIkiapohw/w8bSvKA7CYWkgmCmdAlNAaJH
	 XmUpZYzpKpG/YPZN4E4ZmfNEVhnMmQdivkgqfTn0sLFN934jWkEgV3rQzmmU1o79nO
	 WNaGJinDrfFoPImZh70K3BzGvK1u1BuLDUZsYGJKgRscXREXo9SaGrwcmFZB/q6eLt
	 6K9CNgRHXg7/J/ggV6r++38+EY2cfd+wUeByYiwKx7PtG98FY0D23bC3JifXmM18f9
	 Ujtp9jB3yx7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDF6C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947906276.10753.3407926890740603683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d35e278da15701fb5da6b75c0c05f5ad05c941bbe98a030f33c6bb7a9266a6
Date: Thu, 27 Jun 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719479062
