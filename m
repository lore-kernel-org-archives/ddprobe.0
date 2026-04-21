Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F0F2BB17
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776814654; cv=none; b=FT7CEDuvhNJP9BwUWo4p/X8DaYYdoyuCKxG4GLsWM0mMRPLD4BnioRIzy++d9Bvx0J45/+WzlH5ZZhbcGNbHZJXfExdpzwupPIHn9LrNEWl6sxEUukXUyUh0W5M4T/ZZ28BkpGv4sLb9nnxmchNfJJ4Z+EPgqWP1wSJ9HDpQsHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776814654; c=relaxed/simple;
	bh=F+n8K35l4emJuyCbro6OkKKoX0fVwnrLFWsLf9KHy9A=;
	h=To:Subject:From:Message-Id:Date; b=X+oHppCc2PWYofaPnbNx8DucwenuwWHiPpgfvxbv5fnUvDry/aNG1x658Ca6qselWJSVesGtkVEmqFmQlOzso7xSadWUz/Kk/ItDmOey/LRJn2duqBfxkwrVgH5uZ1ROUdKmdhLZ08z64TP7kOb5k2yHieeWKtgjQOfohqh8eSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb8PJbJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb8PJbJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0877C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776814653;
	bh=F+n8K35l4emJuyCbro6OkKKoX0fVwnrLFWsLf9KHy9A=;
	h=To:Subject:From:Date:From;
	b=gb8PJbJ09uyYhmMKb4l3KypeqhzbK6V6shj5hHeitujmEH3C7pKVZgn5rP+Eefx8g
	 gYvkIoHz7pNoN9AFRN588kIcGObwcM/Lb9WyNeMRHyZz54BDlD2kgBnonWnzBltN3+
	 3QcLdDrSqYZTfpw7KAOqSTG0zHvq2p8bVnjdGHNzyuBLs//w1AGaNPrG/rEwuFOuWa
	 R5xu23p27ylE1p8QhGrZxa9F/RIyq/as6EeBlnCv0ouTX0N0LmaZtYcmhb9NBeU8CA
	 ZZ3mSZtjK6Wy3SyOGU1a2LBtgn+iHytf/lOlmn3WT23qMGSGCFNCFh0vkgdcIJ8kC/
	 H0M8kgtY6hnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC61F94CB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681465368.31856.1504641531801676387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e6aff01a189dafb4b6b1f15fa6b459423664d8c66fe2b04b6570b921d72c24
Date: Tue, 21 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776814653
