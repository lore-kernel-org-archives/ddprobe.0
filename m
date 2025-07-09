Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C138479
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752045594; cv=none; b=QOZgKEzkC3CbpQRM2unkxkTeo2e8mgCMsLf9UpRsJoMbGd+yJrmLrRijqcQigG2xm9ovmt1ensWzjPcWUaFAPM3jPnkzschfjPDK/7s6AGnFQDiqsbypc/7AKShwMP7VWDCjHu41pNRTGATM9cyUBjuXX+VHFw/PnlK8csKPAv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752045594; c=relaxed/simple;
	bh=D4lwQJ18RcHNf9gS/ItRlgeQF58fxFokoYfITrkvRCQ=;
	h=To:Subject:From:Message-Id:Date; b=PCBZ3mRh4vkGujOqnzcWFZFZ+AOHZNahCBsRdGvmwL3JnIoNlQrEdwwb5ovnIqKLmR9t5Uc2c36bZYo6Q9Bel/F3Za+bN703JY8INLkoGiBbX/wooe2T95Vi7c2iOne9hZ66ytdocck2goiTRwQFQ0JFG3yDf5yMKdYrt+cC9QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j66+RDxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j66+RDxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE60C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752045593;
	bh=D4lwQJ18RcHNf9gS/ItRlgeQF58fxFokoYfITrkvRCQ=;
	h=To:Subject:From:Date:From;
	b=j66+RDxEKoceDWOGT8EbuzuDd2LrBSh5DPuERkEMc3obFzcAEowrKDqN/UKhkRcic
	 5jngJJ+EdAawtLHlBBSIGOCjVk9RyU7Hc2lcdhRN1YPb0aE8yM0FfxydM6hqDG/fxM
	 zJB+dzt0BGzTnh+7L7nFFR7SUxBTvtewvlgMLj8eOJhh5GdMm4aSNi0aRX05uzqpap
	 IWyfngI/uh4mZGag83C40RNtfTBjMsuhC2nVHz9q9a/XgFtaK/mrG7r/33I4CQG2wv
	 bWb39uurEhqZ1n87td+5CB+3Ib3nn/LkdjG+NJZ36M/099diQ9/rtlvV6h7hdLkTNV
	 6T5SMoHaD2S2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204559358.19148.11550387136645118457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6028b51b05cb1e15f42db5b37b8db96baf51575aca97d62e9537155e733fe1e
Date: Wed, 09 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752045593
