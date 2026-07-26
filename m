Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E7E285CBC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785100234; cv=none; b=dXoctPJUk+DOh6F2ImBWJ8AZtE6yYiQcf5JkYVjXp4SGxanCk44Eej5OvkEkdaMXRBpDzFPFisqrWbdRyIZ+3IQxUDi1kkIaI3Gz/JcqXshN2MmW8HAy7uZzsIshtsEG+Hu4upC/CiEbeZ7vLOz7GUPopaLBgeeU/x4drMvZq4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785100234; c=relaxed/simple;
	bh=4J10LcmInbhjAb2VQS2jM9bVqDCjgosoTD+ppphYWNU=;
	h=To:Subject:From:Message-Id:Date; b=Yc59DkAPRqtHB8Y2F1LAFgYo2Y0bm6/zSDGSHSSfEI+2qUfNFhqKacF8NF7OMKJRW+sxFy/Hj5Tepd2cTfz5h+FH50ZyUzqojeday4ty3fzOXBAZCCfnH+tH336XQ316V4dOr5nkmsOkvJ8oQueqE9bzyJSFDSwccsR0ope9JQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMRU3PYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMRU3PYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4CAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785100233;
	bh=4J10LcmInbhjAb2VQS2jM9bVqDCjgosoTD+ppphYWNU=;
	h=To:Subject:From:Date:From;
	b=kMRU3PYfAUeHDXo9QuvAsUB9MG3vOmII3XnoUK14Pr45zY0HaqVDJzgUtU7v0GDmG
	 0bz5t/tuai0fA6BPpb5C3ar3YxnO2sAd5y3xXooZwP9Si/ZzDdU2uu2zkag7n4hJtL
	 SeuyBfsmF/Ei+3nd4J9aFSBaSkDG+2kadPeEpIktAUAX+avrk0IZ7ynqWfhkL+ntaj
	 6NGtv7OXY199S+Uw8xY1xZTugOo/EQRHgUsOYmpRnSQu7R4GdV2PuMk0PA6mGHdQbf
	 P0J8XZZyAC32pMLthZW+DUNVecEufMtE5RFnERfQIl88WE/PjoXVUDQSgLW1Uy6aBk
	 HVbj2wwZeuauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D83C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510023368.19054.14254189120444712492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3d65d7bd73231fd052c219654bd70625a6e8df25e78ee672024bdfb578f37e
Date: Sun, 26 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785100233
