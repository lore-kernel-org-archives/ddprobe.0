Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D26F41E6C5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790292034; cv=none; b=cn+r0hdi+PPMf2oC5fX9l1ghO8mMD7T9iC/6YQjPCk62Uvm5WbiBnZYl2nHu72+uSy1RnYiSwjRGcAH+Tcez+qxRkdQFxFxHZNrOCKXdwURqVm7LACu7d4wapC+tSl9zumO7ozeW4FPFdFpinyyv0Z6LnFbg+k/KnRGM20PgiDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790292034; c=relaxed/simple;
	bh=PWyohzX6VJQ+pIsTz9L1C5D8V6m+hOZ+BdoLwPCN5GY=;
	h=To:Subject:From:Message-Id:Date; b=J6vYuqDKvfVODY49Vn2hZ1AlzqNmZGqpzL6gD+5CZC8o5PFJK/vhDv7lTeU9NJYjoYEOirBjHVOa3PvGDZyiNTE1ogsUI23LK9IiCbpgcKnpUurzB61/CcBBLFCQqCc4KQaEaCN1HMjWV6xn/SygKKoWJb6DkGdCC/sSe9UWuV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV8nPtDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV8nPtDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE18C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790292034;
	bh=PWyohzX6VJQ+pIsTz9L1C5D8V6m+hOZ+BdoLwPCN5GY=;
	h=To:Subject:From:Date:From;
	b=mV8nPtDLvCxy+MU7ay8wo8mLDkmWsct8fTSGCBbjRnkbh7/55OeBN52z2kMFqP2kE
	 E3juegexFDtbMgIP9ah3pAjgd3U9o9ewg9nsYKLbFzRcr7FwIrw5jqi47UAKEDNEgq
	 kziQ5oSvvlENcfyEJ7Y9S1y6UtRLo5U7tP8r9BRj2DTfxuxkh/VBJxPRX3UHiiVqmS
	 WHFPuz9dhKkkc6RckosbX4uDeZ2kv4J1VThpqSmcM1BcLIjQ/hJ1E5BQnIPAYu+v+4
	 QmfAC7LGdIuxe2Uu3MT90V1IjckEc+FntZiZvhRc4e7CQFdz/P+9tXlj/NQYeLWChW
	 GGV8+sTzl/t+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28BDC9831E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029203374.29150.15599244849069601241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d653f62bb8b389ba6676e15f048841f3d217970aa87b90b5656c90ef6b0b971e
Date: Thu, 24 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790292033
