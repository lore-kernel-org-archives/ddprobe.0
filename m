Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB0F1FC8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766705634; cv=none; b=blCt7O0XIlIUk8XyBGhOgwxv9pNBO2w43zJZiyy4Qhxpw4eml+u35X4zmQYOvZR/zBirTcvWOLMWCSU6QNgLsRXA++g0nXOy0F/AuRq/p2hHNXnyrd6ZjLGpizpeL7h/xbyqn1H9UggvJvp7ViwRooq8jI6IYegq1E21He9jrLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766705634; c=relaxed/simple;
	bh=cSG3w8ThhUDmFp0b4cJPbw92rU3bCdGWugBUdWNDRvY=;
	h=To:Subject:From:Message-Id:Date; b=fifgKlbzX0hY/lIJKXxY5LD3WhFMZ4RPkD6/bGOljcmFGYYDbd0GL71E0DXTrzz9/vbaZ0Sm6GjkhqBCiJFUa09Po8VCn1wlTc4a6LBF7pGRmywW6Vyj2eZaEFhfh2gQLPvq/7WaL7NFMhgnjO894Oe6BJO0BSLinMyk2vWk/GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbT59iDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbT59iDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766705633;
	bh=cSG3w8ThhUDmFp0b4cJPbw92rU3bCdGWugBUdWNDRvY=;
	h=To:Subject:From:Date:From;
	b=SbT59iDy93cblrYr0KQFWGCurqywePdaSuPBfdOWgA/LiRHnGFX40TVuJge7tQanH
	 RlTSKRYXa0GzwmHk6mN5cHs6sMCC7oPof7q+y+r8yG1TXNsegy44fLQSNV8ClVPumT
	 fueg6PbxEGMfW8rg9cw8O495K3RwOCqBTXoj591vazTmNMEFNMrnkRyXYnnUGbcyvW
	 KLx3+TFQDqKfaDbVQrFO5kiFCf+v5fqRvSZDJAjXh0Qb3MgZwpOwswtVMfRFVMQ3/K
	 saxwaq+W6g4aAhfl67pqDvqBEo/I3ZxMHqLEb3jvJJqf+XVLBvW9acPjI2z6jrW7Jx
	 A2SyJG8tEa1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B4E7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670563358.25516.4062039009046958181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a847946fe2e3ff05754647eaa40214342264aac8538a6906ed0bb50a7c2e27f
Date: Thu, 25 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766705633
