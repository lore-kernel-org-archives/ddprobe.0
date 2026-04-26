Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C55293C42
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777205253; cv=none; b=myRFZKnpgjCWQmSKOJDBRG76r0IeT18PVf1k9HxLasT98b3mEtxSx6fSp1FpCNQAjb2+HfM5efnUOqaTEkct50iJkca77wsr8iHFx84Cf7hqWai1Fbzh95Vm2xCoMHgWt9TwbzCuycDklAyKo0MwBoOc/ySvIIM0J8LN/pixBFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777205253; c=relaxed/simple;
	bh=1TZvG16Q+L6wx5DlJ7YhTKC9DRa5QXQNkkWHtt7QOpQ=;
	h=To:Subject:From:Message-Id:Date; b=dZS6MvJy3Q+6tiQ2vfvhs1raeUgdFzsY27xzTnoIbEP7CxsfISvJQ40lk7VCTNQFWD6c7c/IvQaGvHA7u52kRHBt8BDqNJi9kBF1/hPi7hzbL80VfXHqFf7TyqhuBTBKkZVYzVTa/Odb03B1Qeouk6O/v9I12UOEX0hl2P9RpN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCxjNm7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCxjNm7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC685C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777205253;
	bh=1TZvG16Q+L6wx5DlJ7YhTKC9DRa5QXQNkkWHtt7QOpQ=;
	h=To:Subject:From:Date:From;
	b=HCxjNm7MTP2FBMmNkDIKoOeRdF5BPOBMnSrIwTxPP2y1qCmx4PTTfHzkWXVJh2VFy
	 q0X5QTOB8SqBSn25cOqf2a+w+E4XuSrG6qgigHcgbCIRmEp9UNBxPZTYASDGZ/hNpc
	 dM/Hws0B5o9mq1f9sfTI9tX1g5RKLvgS0PgD+ZqGqiDPY5zccdsZCRtnKpF22mCNPU
	 AZHaAZQ9AmmGJsXKwy3vqBmskNgpB67tNzY5xXnPA2o3RULtINPvK9tRyBo6o4HjqO
	 wGpRNJuK52OQ3CAyTXTYke6BnUzCRkFHmyu4jZBhCJgMBMCz/m/UDoPOM/qFA7SXRh
	 +g9dAjHfTR8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1AFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720525368.26026.10467251197612980764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc6ffecd5fb27cb8633fb185f559152a8a47a798414e5b2f351087195c44d15
Date: Sun, 26 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777205253
