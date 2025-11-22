Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD122257E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763822514; cv=none; b=CHEv/78BkSTKp4OC8qHNK7CAWNwjH1UCH65APS8NS321yUhv+tjXP3ZWlri0BTdb0wOft44kGd1BVaLfP5P2EfS3O+XkmejQ3yevrGMsCo0ekwBSHHVdFy99Sz/uT++02X3VSTq+NRFg8pHP/9zcjBmilsRDfyBAiuNWLTCvFIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763822514; c=relaxed/simple;
	bh=2y+iNdSpD3YLCdTMp2y1sjOQvxnvItXsgy+G8IeDA1A=;
	h=To:Subject:From:Message-Id:Date; b=EebISUpLO1ygcu+lrFGlUROaRJAdrHuKB0HBRxZN2hCIhO+txzEPMO+lPkgIc2CWMka+lVFkg8GPjGukGhGg5TNEYoPtxOjCr0/N9eitCKo8CsmW3vvoMDzYiUyHlMoHDbuscP4E98FaOcka/RlkI+vLgSKsgqZYZXl6mKhV6nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7qiXOuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7qiXOuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF57FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763822513;
	bh=2y+iNdSpD3YLCdTMp2y1sjOQvxnvItXsgy+G8IeDA1A=;
	h=To:Subject:From:Date:From;
	b=l7qiXOuBSat4WQGJNJ6Kzv8Z+1g+w8nX9ejlgZW8sYkmn769jl/sEDiro2zIz8HVV
	 bTwh3/8MsuzJwwtTtKwCOblomi7YDkI9Ro5/HL+T20jKogbfkxfkPtHAcTPFSQy89m
	 7WtTdUtbQo7ciV7VEtPnu7g3Sut0XzliDD/2pFEAPfAxYOr7jXB76yKndjHwn2oaYc
	 jGVHBFnpLGaBSPDpH9cdIAQ2bUMy7+cixNMbN4FrBZdVZyLoUd/VZe6fHPfhjChByp
	 /QYKlMP9byL0/lx5om2OEfI35KCaXtowEbB4Cbs+FnvTRJ3rGQHmKK/9QxHckajo+t
	 vl8WJpaLsPhhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB99CFC538
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382251359.15311.2583889680609952915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccd91862552a0f2dbff6d82ec5fad33dc5ef5075ccf98f005f31d04fcd6d60f
Date: Sat, 22 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763822513
