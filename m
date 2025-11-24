Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2087026290
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763946714; cv=none; b=e2QcuS8PD5TETPHw53WXuiQLsv7g/SZbnxrRIGkUeXXY3ICg5y94tRGzYmtrIbS9H6oUDES/rEFIHC41ksfEevisk8rFq+VXGv30Flt9U8Ktt9NdKxZ4EC2C/SGvzVxCahr3ue/0qjDzTCmyF4ge9n6pUG0grvSGOgVFu3ZFHPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763946714; c=relaxed/simple;
	bh=TiGETNnC7Z8UZ+qVwZesQKzuekisTxSqS0r1sTYE0bE=;
	h=To:Subject:From:Message-Id:Date; b=L2ITjZYoDm6vL0WaOfIssaWF5S07jDvom1BNDqj2o3yifVbe5/QVJlvvFbh6FT6Uize80WbgVNdgQOYrKHBT/23xw1khDJ+Ra+wtvSctEEiU5spQBpqenH0oGH2YmGYAFsLdqqAytUq+05c1XKQOE2+3Ld7B3eApII0M6XgE5oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TognxUGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TognxUGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6ECC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763946713;
	bh=TiGETNnC7Z8UZ+qVwZesQKzuekisTxSqS0r1sTYE0bE=;
	h=To:Subject:From:Date:From;
	b=TognxUGEBiGKY3+/s9jb8G/4c4C5wxeK/5CdlthvMfjBhCegIGhkk1Q+gzcFeVxKG
	 HzP+UT2ewU9veH7LOufOQeprDJ0+zNmguNUWJnYqNdRPC9bg9BD4qYbHiLxdTAmp/1
	 D/RlQr9c/k+ew9I04hObh0lPjTwibyJQQTWBO2squDTmr3tSZQ4kQC+knIr1LLsxIe
	 vMC091o7EzvOcMdDGKwNw+4GSYXteZmPrRYSDJjSc4SFiKjjy3RrEA1hphxO/mJy02
	 7c55O6PvsSqKXE2dXX65VvS/hGtKYbGPs8q4uAJmYuv/U7e7uLfNI8Lj59fFI1Mnq1
	 DKf8Co9iVVv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B2CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394671359.23131.14432038345572153177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6048b7836e7632f95a10089cc0f4afbab5810566a4f4b35a7ef90c1fcae07c21
Date: Mon, 24 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763946713
