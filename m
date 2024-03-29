Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040AC405C6
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711697297; cv=none; b=sCFP3kgCOcbP5ciQ/PleldRg4Qcln7PyR8P2EsUzY2FZLnKfMU0U3f7DM8Ao0cHftZWmJ5XEiDrGESXWCcwBWBNnzL6y8aaPyWQVbSE9A4L0SPAsx7Kj1p/At1jmHZC0kIq/HU1ZQ4igbuTJy41V09atIWC9QUVZYrje6KPWufc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711697297; c=relaxed/simple;
	bh=LRzIJkjoGQ18TgBNS2DAOUf4hFHU5p7l9S+di2Ziv5I=;
	h=To:Subject:From:Message-Id:Date; b=PxtRU3Zw7d0RM9AjeU+UiUcQQ3+YwLG+eSqcHvJyXdvzlPk/cz5r+mmFTrE6jWj7aQGqM8Px3cMLeTIaD/FAAtK6BtFjca5ay5fdvbcpX/Vg34qFv59QHGAbSoONfnyLFVYH0Ek3N1TF7cHibFlyA0fTcgyDEQ+fzCSmlBfl9Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERYmhyuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERYmhyuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8643AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711697296;
	bh=LRzIJkjoGQ18TgBNS2DAOUf4hFHU5p7l9S+di2Ziv5I=;
	h=To:Subject:From:Date:From;
	b=ERYmhyuKvJr1la35p9iLFvJmNYf27+YD02Sz2WqxW+rg0qqKcc6y8Xr+/L+uf3e3f
	 DCTzPKs6/ub+5d5G8koR9bTpmJQHGOIJ5kMf0Llhsf10IdCIJg0zt1QmwoAxq4rXmR
	 HCUyjn2deX3G9Xe1rpeSkk9FVVh8lQLWpcA4w/kSiMViSsAt45PMLtsuRxXosOFI5y
	 pHzqD/5sriezBhlmQW/U4yHH8jsHo1ws24AovUURPM+v0yfUnOtLPel6Or42oeih0V
	 uXrytW6w5M4Nss0ztLzwdbd/Ky7E5K9wWWcysOQwWGWidYBKqluYqDX5oZ8mTSO9Kd
	 D3RVL2KtZg91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A8BC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171169729646.26569.13554008128870096576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555d7526fe0a4b2f0674d74a35f777a15e65d42257a7656129145be811f1a107
Date: Fri, 29 Mar 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711697296
