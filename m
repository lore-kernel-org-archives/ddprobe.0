Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4873783BE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785109234; cv=none; b=O+BILRng/uqgZnIchR+ZuWrKqiid1aSXDRznyO9rpwvCl2aEjIaW94URfcykb2OfpeRmvf/QQDKuPVQ0dTpoNfhbfe6a9pU70E+7NjmSOPodr35KdTTZI7ydrE8pce2TD6TjyzR+wDBL7Cf6rYzUkoUVcqtz9CQui2ohMVczWVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785109234; c=relaxed/simple;
	bh=RxORVZVKTWo/cHKfiRB7XBNWDW7Qbj9jsnr02NeXWIk=;
	h=To:Subject:From:Message-Id:Date; b=Q85+kZVlMvD9zf7FkSyOz14sVO2Q2djyUGu/eyUF2SUWV6GmQlrJ1CKvfXkCsBYnpaeFlqrcPVzPMEL6bPjd2PkzfmRvVDOVA19khwcigqeYwD4Xl+d++E1+IWNY6jzlbz6Td2xdwfQDxjHNYmdIiZBTPuJWpVgvWDO9zT17lbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHl/JH0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHl/JH0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E390CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785109233;
	bh=RxORVZVKTWo/cHKfiRB7XBNWDW7Qbj9jsnr02NeXWIk=;
	h=To:Subject:From:Date:From;
	b=eHl/JH0F7ZpskyL/Xgh5IVA9tRKTviYBL+/Nh6cFvcpm1qWUNmQU1s5ROjFACpGFu
	 qFEim/jxoQps1Vyd0uVJECvrtPrrhQPgUcMMHgQgjRfCW16zcYdpTPX/nymhRnfT5n
	 FMOT29a1O9HUZQP/mMBEq4AsfN8JS/EQxuSDv61Ul2Auzk720wIm/P4GqXVqUmajUu
	 xzGHL0rml7p9oUA99Fi1FDhn6e/9bibfoh3s4hHLJVE/pC8DuLMsX7+ZYBL9AesXMS
	 vKOnPdMC5LjdH5VYyebnOpft5i8U6njlWmPP/BfRX+giIJYMjphkNLEUya0CvGO0T/
	 4LrS/51UtYUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB287C53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510923374.30810.8015307547728830870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c70ccd1f82d39acecf1b1fcbba1fc57f7d291084a3b93d0e83723f5996d589
Date: Sun, 26 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785109233
