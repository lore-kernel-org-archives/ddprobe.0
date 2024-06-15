Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B261DFD2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718462303; cv=none; b=ktbWdYUbx7x1/+K5/XHZsLwy9qAxCCFjEbC38tIPCAGTD7UFO7zAoUExBLs8j1yjT7Jct3dCjxS9a3F3OQjVvp4w9yMtl1aPS/I0paXyLW4ylOJMdSKsDXeT3eCdAWa6SjNl0gfVPuUF7bELyFOPKHaJVE/joyIE4rAQwu+NQjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718462303; c=relaxed/simple;
	bh=cwJafGRuENfJjuXO4NV2pxQGpqqN8Zrd9YvFbW/vPYE=;
	h=To:Subject:From:Message-Id:Date; b=dlTdlRmpQX9v9FDZ9rhJgo1F6c6bUVtINohDUpostsPnGt/ItgSGvVngPyqhb9yxPdljODTDBaTPvPu/ReRidxDIZhNURRnXGGz35Zhstqf7ffsUxMlsBt3WJula3I3SConDsB4fdneFlgs5aiEVDvym8u1+RLW0VNqofbxBKIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs3PFg++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs3PFg++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5665C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718462302;
	bh=cwJafGRuENfJjuXO4NV2pxQGpqqN8Zrd9YvFbW/vPYE=;
	h=To:Subject:From:Date:From;
	b=gs3PFg++isppN2I2XmsfUMKNMRVdsXxog7vUfzjX1/QjrEaKmHORux0fdFakbEB4E
	 Ps3QxCR1AuPEzU9+/UA94Q1/upEeJDUrBb2t6P7AvCBbiEEt6NeNhC0a8pc7ILIn54
	 GDAsd5KERTyyFAqXDgmbME3nXPGRcPs00NLVnJTtjmGmcFR0zMQCMnTChZGg8ZPQBQ
	 QHsS9ckRzpSUcl0r3abK3oPwPmRlU3IfipZNCk12xxcovQ8cTcj0VPdWetWkC3QJzz
	 NO5qaRNSzHZk3iqgjFbDeIgzV5H0jSNhK/aM1rgKUgdozY9b7etCuOhCfH0Xu/RgkP
	 pYK9YCkt/HADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FC3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846230278.3014.279930281681298482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2820adde0d99ba0bab8229a1e6035e532ba122f6b2df9a708e2875c658fb6495
Date: Sat, 15 Jun 2024 14:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718462302
