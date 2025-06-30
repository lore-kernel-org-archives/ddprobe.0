Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94723F27B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751275194; cv=none; b=CcM64DTi9Yoz7jzMGR1dWkPRM4BEzCfhmDgI+3aRG6Aq3vDViGBwx9ArdlvWbyoR5S0aZugH7FJRoMEilhzCHBhO9qV51yd8jSWwQSZsFksAfz5ZPirkTQs5ssQJVLthiQSkkeridhpyLAZ+kgWhCIWR/HJ2DnBwlahdOS2Ib4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751275194; c=relaxed/simple;
	bh=HyJ1UYpd+aKOyriQY4sWEJN1YsWLTtvU27iv57UE/GA=;
	h=To:Subject:From:Message-Id:Date; b=PzBAAZIV/0BmTpDT3yNgTtgcO/aU/zVbexdAAYKUcHC3kQ8406tzn/ldV66y2g83aSvPGkOvSw0mu5cKMLfpSdw0vkpX81v6YPTD9BWpfaGpt2vgafNJ1e+cP4iQO3iQRDwzCAUasEjiazBWGFqTAo+FAWdrBu93E5qqxOx5sRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWl8zkjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWl8zkjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2F2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751275193;
	bh=HyJ1UYpd+aKOyriQY4sWEJN1YsWLTtvU27iv57UE/GA=;
	h=To:Subject:From:Date:From;
	b=cWl8zkjMfxTDV6zJ7pBpZdoNNe+am8Gho9GzCJ/JVJYXRtqYxkAPfGYzw3JBP4P0O
	 u3KTSIOtqAy4aNe/Gdu6UITimam9txuozSxxX//+BJC2SfgKirXF5lTA2QmHKEo93q
	 Tx0rTbwBSeloRwxWps9+Dx9/k5o2QemSo0/+kvB++iWnsI61teONlXB2Qw/4XnaEqF
	 K7DemQdMssMdEReaORIa4By0qYjefG2eZlt/uUmrU+X4EB+HIXBSSD3EOfp9rdK/6K
	 evRUTcj9Tnjl3aVVKtigL3Ukb4hVxjyLGz0Lpi/JMmCpf05Zhd/FiimwcHVsqIVbal
	 i0RQitvr5YcmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE20C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127519358.10658.3081068054500590487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4856340a3b4992b464ebfc8689e6cf9fdbe3bbf001383233d52c6f62c99d0648
Date: Mon, 30 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751275193
