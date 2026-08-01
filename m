Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA6E23C8A0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785556234; cv=none; b=T7bKEn26ruBVJ0qbcoG1b995FVHGV7Pwa3AbhNz/wXy9LaQJQVuZAG2wraVVUcuLFEaxdG0MCuUDuYFeVgv2JkszmkUDkbNQ6Z1SSfsIT5wl9m5Jyi5djcj6YveFyZLdpgMcHSO5il1QCPGD140YQJQGpNnBgtJU4LQ95rwnclY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785556234; c=relaxed/simple;
	bh=8wGTj+WE3eKqYINpNne0ZpEk2bxfMxoUg4Knwve/5sw=;
	h=To:Subject:From:Message-Id:Date; b=Pd0agS+jgLj/wLScf7xFvWrGSM+KhwaQjANd9f48VRyxpZDenwMxr9a2LP2khb7DQlA6KLU5lVda1W+Td35EWpX8omkntYwieecd5pVeJMvratAZ3grV/QiXhMky/CnBo2hr7XzMxhulcPP70oh7CCVKKnHfaadUPesxbCEkP3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9pcpLP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9pcpLP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF305C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785556233;
	bh=8wGTj+WE3eKqYINpNne0ZpEk2bxfMxoUg4Knwve/5sw=;
	h=To:Subject:From:Date:From;
	b=K9pcpLP/jR9CPiE7SCoqiuma9mZHyTs0zaP02DCThdjowRGysk5qBREkIr1TxhTpV
	 G8W1dtfPmTAZUqYy8ntDJZAavbeuVqeYiOZ9PUNmYRni48Wkc4fYq3Jr6XCoIbbqLW
	 gLDR4SAHkhtL5zv1P55rM6iT+RMTEzIzDzoQ4y9602qS3J76HKkzvR34bbI1ISRKhh
	 63bqr3G9FT+VNyS+CXmAzo6tqDfCf1UfoAsJ8d8pa5ALaA5jyfyIbsjTkJtea+gCo1
	 /gKIDSBGMwT1Ln5XOxbD0RseQJM3YIgO9HugrvKwhRw2P6i9nrqD2R602leyeI1Lrd
	 P1Dv9fbuU1zUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8384C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555623368.332.18008799431640268656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d19d598b592238a4251adfd385b867677f4e6cf9439265f0cdbe6d2d3dee1c
Date: Sat, 01 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785556233
