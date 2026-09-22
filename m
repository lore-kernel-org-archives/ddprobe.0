Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71EB48C8D2
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790055634; cv=none; b=fA8jRy88v2QTza+nQTYT0fn4vPDQJL6ibMQ6+llsshpXOo2R5rfTdFN9Vabn4N5HqRA4VoSW3ZxXiOvm8QH2gnSDbBTWejZiYNZ1bR/t7OXJNz4C8o8XIaNGzzd/nt3gqtzKgsbTqgPnTtLwKBVNbQMlvIW8smVsKZ6/LaIiog8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790055634; c=relaxed/simple;
	bh=+s5RE3SLenrdApWwfCriSdNfFMi2Qfu4HnMxAjvc9Wk=;
	h=To:Subject:From:Message-Id:Date; b=h//cNc2Z+WiqCkb3SHUNBkWvxv/sZ62zswENCzgNIr3oZjo8q60mSN/vQh/qUf1cFMSF1rbCtgtMAbdrjm5R0WOr1w5lQed5PItn3CZvnH/fSFwSBH1ZZcwxnJ4E2M3+kRRDPb2+XurPuMW1gXjUVddP5dMo3VzqCUpDXZ1z2GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aye71ZxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aye71ZxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCEDC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790055633;
	bh=+s5RE3SLenrdApWwfCriSdNfFMi2Qfu4HnMxAjvc9Wk=;
	h=To:Subject:From:Date:From;
	b=aye71ZxIlf1B8lCCd0e4P5dLDEyZCKW/vQv1GI4OKARNkLVjjYYWum4EweO4IqTLn
	 GNDyuXn/Gg0o9CCh+wmBdikIBdau1/g97KoBs6LMNFRYabZGkJtjpyPyTi4qwoN6aU
	 r27S2Lv6FVskjrjXS70BWDYhF4b4uyIQhYFMbNdA2+v0ED6GFN6am1+is0x4vKiUiL
	 vHbaXUkX7AMG3Jfeb+ww6H1A76s93H/ku7wuCzQ6xmMXvML1M1yqFKcJ3Iu63LQrPG
	 +5/DfSysBa2LbBpqcNw+d6e2hFq4CKFlIBLj+kbuWiZSzqFCqbm1iFC493Ggt2kNzR
	 tALg5IB1zxq6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9832C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005563368.7642.8434590093584939328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26aae15969f8148e459fcb80900f46d29e85877691a7561a9b32eacca08c8b69
Date: Tue, 22 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790055633
