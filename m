Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4C7214818
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749124793; cv=none; b=FwFfcfRFioD9wXCH4KkalldGblwedv0P+RMXvFVuv7LxN4/mwpt3YeOaUdO7AGiU8YMdT75kSsE5kBevigcll1PpQDczO+bS7RIUmOu47oC1ein7e0aXTn24H54TxfMnIoqS+RxEWhs5ofIet5pbomuyGV0hoy6mq/VuXhsvS38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749124793; c=relaxed/simple;
	bh=uF5zXPvS9oXFVOz2z7hYNNcJj6u9PnCCbOW783QM1IU=;
	h=To:Subject:From:Message-Id:Date; b=lBSkCfopYC+uHUWKvKTOYgYZ63NMMUp4IG+s7KZyqQfBW8Xs/7hOwc3hSPlRkK+sETbIMlH5phLIdv4q4/fH+bo1fxUG6hBTLhQm+ulONf9saEeeQOwVtNl2PJicanCudu0N4MPTLCiFdfCrYs9FGAudAMoeWwa9osxd8kNfXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb7ZazhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb7ZazhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E376C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749124793;
	bh=uF5zXPvS9oXFVOz2z7hYNNcJj6u9PnCCbOW783QM1IU=;
	h=To:Subject:From:Date:From;
	b=fb7ZazhVxybUGrspLFNkJS4TYnTDcxPM/jDG+IAg7J6OzEi/o1lFdNtSvbQQFANK6
	 FkenvHMH/3qF4vs0EZoqFb8nGRyxnXMaZaEzSGAig0XIIrSZ8niseYl2MuqMWPwBGw
	 RfEhED2M5lKqBRHi69/p8kNH08c0NEopk/UVTNcru5mWjKdRw8LvT5/RmBFrAdmmYi
	 92Mt7GaU+M23K5niFmoHLhCKDW9g6Cu4BZttUVPGg91uuY9YVFTpiq8GN+bKzOnLnA
	 5hpGEpY50SSP+q5zwzl9JsnPkVqZQcpPNeY6zj3oHFEl3unblgPfFtWEy4ttn7wkva
	 EhVPB3VYsu7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D3C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912479357.10344.7461953491724592680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf2deba423734d5af6f09273f4c6649a7e75df97f611a61b2a64951243eb809
Date: Thu, 05 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749124793
