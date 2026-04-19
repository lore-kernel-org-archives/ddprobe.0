Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAAC282F19
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776637654; cv=none; b=YL90T94Z5OPD/YYrGib9BjNCto6Q8L/fs+RJGPj+8hIlkcedRoA+4xWabMTeVxqbdNYJuOzNBwYiH0wfGYVuDO9xggSSg/aTzzPFIR+fyJ1xEMUcRQ/RCTYf2aHilK70kR9nfm5wRDdrB/BuwbF9ZdacHiu3IiHU2xBqMWCTM9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776637654; c=relaxed/simple;
	bh=bymrz8urT/iIAmynzGxcyhalPM9hX1+UO2cHJKzrfcI=;
	h=To:Subject:From:Message-Id:Date; b=tMypUa00IZGsf7D9BevEkxBCBIOG+fSA1BOEqqa+AFIv/i/selvOSg3IGkDtesWgn14Qbgu+EhNNuyEiE1PybGwlQmj/ZRqmUWjSEeJA8FrfqKJGeOc56wD3RsQmr1LKo43xMrDI30P0TtwgszgpETFeEgm9aiupl5UBXknGFQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlO6d1Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlO6d1Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0A6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776637653;
	bh=bymrz8urT/iIAmynzGxcyhalPM9hX1+UO2cHJKzrfcI=;
	h=To:Subject:From:Date:From;
	b=nlO6d1Sekjp4GRqY2k2RVDhX/WHDgWafsZHHe+p8Ct2Z0UwJOJn/Q/S7KcxGZwx3E
	 AJZ1eOF4yEjnv5H4sITXRLdmOBT9196e729U9kGRmhynFFSUFvhlqydsDB4A0WWkag
	 QrJc6EkPSjkfx9IMtAAHTweYkMtsPc09Hs2R98ANYNbv1T9eeanHuqETWPhHaxniCH
	 eFU3+wW97zMSLD7/fZGkUzyNjOs+kan6MFU+Oow6hMQ95fAST+WsHheE556TGqCRFR
	 hpgayjDvlz9o4ZOIzuqvKhGNJG4suIoXdIKn1t0pwzwV2IREqB6nj5WdvRXLc09vXZ
	 3O0bhyJjPLJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2C3EA71AE
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663765368.17064.12581174564589283533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d48f6d6f21900e5ea277b26a6c7a1ef6a04922362f0430eaf528603e5d151c
Date: Sun, 19 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776637653
