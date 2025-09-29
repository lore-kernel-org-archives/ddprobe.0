Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E79126C17
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759156194; cv=none; b=FQhrtRqRVlDymw/8lksi2+AOHNhRAnGz5ZFuXCT4BtrXKoCU003ffPpn0CCA/9CKdlls+xkoyMuc5kijzQYgn0tniT2vsAaVm3XoXioUzH3uWNer5NXt+yRZhpMfRW7oKk5o7+Tw5eStDsw30R/aq+3UMcqzYFbY1S5bEq8RhGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759156194; c=relaxed/simple;
	bh=WAeE81+IQXLQWw6h8xqXQOzPFYzLBrDGbW7DxWdko0o=;
	h=To:Subject:From:Message-Id:Date; b=UYXM2giu+nxo1orR5jp5N746lTWFTeyujugB2Onc0z6KnHXV4Om8DDhT6zCLE/wzuFrEV7oOpaZ85dCT/3C6UHm6tEnazF/OifSyTMq4nkhht5Pdd+oAmKQwQ4gsMJBJuCglxyGUbz4qLX4w9C6GMPjcSwQQ2fpfNkpo1ZcFXxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF+m3t2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF+m3t2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D7BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759156193;
	bh=WAeE81+IQXLQWw6h8xqXQOzPFYzLBrDGbW7DxWdko0o=;
	h=To:Subject:From:Date:From;
	b=bF+m3t2kYdcqdou/Yrg8Oew1YAtxSiu55PqUUcaoboUWgXN/O1eeq9Qmu2aCh3AhA
	 7DzyxvFg+GxdJR7i3Bjf5d0l9L2xmbFpxd24a4tNFN9IOmkc7b7mG9RKEtc/OJznwa
	 D6Rv54VR4qkYndnWAv0E/PwyvCw6dChUgKJerM8ytFtRRcZp1Y/ICtRxXGiQ7/E5mp
	 p+eAn3IkyYPlLyAP94MfKtXAKfXYzqf8QuE02E01r508OUQFj/0liow4ilgYENswxx
	 3yfpk+Aag1PT05n+H4Wuv8bbhyNnDRkMBC+YEbw2YMUj01KGST2N9GxCbufziY+fq/
	 nBcpVijCg5bAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96484CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915619360.14141.16087985248861488793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971c3c2f14644181292e6225a9f8a4ea31745c6fc8463bcf22dde48460d48f9c
Date: Mon, 29 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759156193
