Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD0134E255
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892634; cv=none; b=mHtRQuASjEEg6236ZCTnNdQ6GEsR/7Kf8RUCwzo47vuRU8SYApPCAhRgBUWD5Hvdn6dOB04DS1brO44MSnziI58M4ldmuB7CUkmCU90Xr4UfZyxEmILBAa6DrhQBZyqEzhlkC+PbLAgWkacHqVjAFNmy2aMoUduwMKVmYfFo4/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892634; c=relaxed/simple;
	bh=vN6CToKRK0smL44VhGqvHoU+diApfufCxnDcsFMZhus=;
	h=To:Subject:From:Message-Id:Date; b=bp+PvctQmgjWdMZlpxMZ48CCsZ8vd9ymqnOS8WIG0lPkFOpYGy1Qf4LVZK8GLZJOYj+iaptBz8LoUmBKd1tc7FCydOvT/ZKlOv1K3ToOtGgKWAcjskX0OAbJZlgbUeT1oTvd2oomVunmnetQSpuJdc9tVwQ/sTVtIleXhMdCklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUA8SDIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUA8SDIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765892633;
	bh=vN6CToKRK0smL44VhGqvHoU+diApfufCxnDcsFMZhus=;
	h=To:Subject:From:Date:From;
	b=kUA8SDIFTm84jNMi//kQlCHmlcYMLUgGwGwcGlaBdqmt4qHdcgFYk14zsKsvhuO0Z
	 z8N22/RvArwgbzrc246QAI/FSdW8BoOxkI/WuywfvyKqN2dgSYneUl6Hal5LhdCs1D
	 d/+0sMwA9WpSK3oUzsDfWlEauLH3D1kccNvwtLJW9J/UDsCury8saE9eIl63BtSiI4
	 PUuneBLXd2wMDPVn4i0JB2zTIFjUrvRzptMjmPsRgp+bx8v1i1Ajf6gqos3UZSBBg9
	 WIvFSOwGZUFdXxWmOC1kUPOdY3L9yaMdtzWtG3LQLVVgoZT4cQyhRs9F8qBQmigpsj
	 dss5upq3a/3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED8D5E15A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589263358.28415.5202563576182694445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0099af1f6c58fd196b41d0f5eeb69228e839e26d7e1a5092a49e6b504b123b94
Date: Tue, 16 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765892633
