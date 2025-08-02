Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6323207
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754143794; cv=none; b=VeMghP754KDmZ6SDLN2BlMrPs3Gv0DiFo1L3xIfMYYhmSfzmgXGM9II2RoHRZGyvfpj7/Ygr3Ynfine/xqEqmzIc2dlQ3cB5MgLUZnIW5XP3sPnIjkD47BJdaaXwIC2bStLFjpHCOdFWovXurNLOYql3F5pqLPB04b86mBM/hJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754143794; c=relaxed/simple;
	bh=XyZ9XOt01vjZZeY+VL3AcOzmrYkXS7rrcDaVo0qs/DU=;
	h=To:Subject:From:Message-Id:Date; b=O8/HJNn+FcDKmY9QNW89Gx3S/AmkdiIrexdkL2DnxbxByxYWe8jOhRo/WgdY6EbVsx8IAZ5PIWY/jVzg6Wg72re1LLzoUBTIV7/58hPGmaPZsheolAafZTXM5dBfyKb9k+9/IwVbdtUy+lOmbVU08SREpIa8OprnN+gOk2XefXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl6KnemG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl6KnemG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754143793;
	bh=XyZ9XOt01vjZZeY+VL3AcOzmrYkXS7rrcDaVo0qs/DU=;
	h=To:Subject:From:Date:From;
	b=Xl6KnemG/2iRt7LN28Gbhg2P7T+CmM/wzjrxvToqvN5Ac/JewnMBrLrii2k58ahFa
	 I6LFv1rysaxJunqXVb3whPZrYZKhsu8whsCLeLgAfPNgGMK51CrfhWUHdBn3fLimPL
	 p19EErocB2ig9T7b2z+X8w+p3iyVZbfiRekNErrrZCjcNFQaWW9HQrBXprLsP2zDko
	 rwJoaHt1q6X5T1/PaTKO2B14XyGjHRhd/almOzsUpfdNhW5RmBOtSdcwYsOHTFQL5r
	 WbVckP6ZlityNQWTgOrLB57qyUO09DTDPzLakx1JpzeTWGHwNN1Tqd1MK7QUCdWmqD
	 +rb+cbp4BLA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457CC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414379357.17344.7869649167174283559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6664efd822bca4cc974df8f1fe555539aedfb30c144d8ddadc8b9b33cf624be8
Date: Sat, 02 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754143793
