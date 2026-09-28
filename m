Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1DB493621
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790617834; cv=none; b=sQvMF8lg+b80juITizyKYNC+odPkMGWmG6chetxqjxNU2xWrVSaGMDN4VNdWnOHApzAerjiQ5WT+BTVWPD4bQaUpSPHjTS2MS1lBZ6n7aPZFVhST9z8GGF9wMmItBGTDC2LOAgsXTtrtSuoEEpfBnr5IW+H96NKgCVqPpoShytM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790617834; c=relaxed/simple;
	bh=OliK8GNIpe5zF+HEGd52hi3Z2zbVu0zQRnPu8s8omHQ=;
	h=To:Subject:From:Message-Id:Date; b=V0lqQErY1vuobXUI1DyCezBybaQMwPr6as374VxmU/4OHHftS6Q16oXB2qPSRU681mVjrO7Dj5eqOvxRpqXOyH/EMnmYbjyaWC/iwiUFBKDJn/rVNev9B2PBIN0/usoforlkjM3SoJ//2t4DCOwdRxjb0GACAfxeZ+A41LtJyEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPphCGIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPphCGIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF4AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790617833;
	bh=OliK8GNIpe5zF+HEGd52hi3Z2zbVu0zQRnPu8s8omHQ=;
	h=To:Subject:From:Date:From;
	b=VPphCGIT//opNDkA+Aoa85ulbQa9iC/5iSePGHC1F9LFEwo3c30wXfqA3tKuhDvM2
	 HA7q6qUIsx4u45qsWQDfozEQkmjZvGeTxWj1oiRz+Wxtf3E2BpPWjgCC2HNtUbY0SP
	 Bks5K1Kndb/+H6KwJo/DMbOCLjpnVhuMlnsN1dt2ECU9abFmJ8H01hn51qBSLZDBop
	 DaLAjSLVU7ovYRJBQ0EIqZM5e+qNyxzEyFbe8ckUkJmZ8wSlp+vlGvauD+iTTEk5Qk
	 DjUMIqPkWBfcRZA74ekhQ6ZK7b3wSQGPn5Kqio/60wnmoaNr9L+WMsyJXhsne+q2qQ
	 JVNUjYtc7cQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD98CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061783369.14957.10233425493607297560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fc7233968ab48df2667ea06d78a3504179b10a25550cc19863631867d8e900
Date: Mon, 28 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790617833
