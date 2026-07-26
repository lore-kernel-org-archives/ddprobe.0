Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8F737F726
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785058234; cv=none; b=rHpkEOh0MwBbwIhLoz5n9aieZHZn72IhVBiTJGy4cM/jVD6pfDTc3BcPRlPuLqFRsxAJ9vYoeFSM8AH0R7Js4S9Rt4Ej4yFZc34fZ9ZliUcggUejvaCdFX/XBEIVFkYOn2neEjBdSGXtTMx08J3pCc8wEzBpJeyyk17AsyLUe/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785058234; c=relaxed/simple;
	bh=7tixYa0YBmK4w7qJbQxr+vX5hsmjGMmEooSSk1jGWp0=;
	h=To:Subject:From:Message-Id:Date; b=kqg63swx5060StjTBHxFTIfKiucN1TUfpb3HkSgR5pFo1sMMdIQqUoZxPUGOG+wy+ajzB6jJjYyCbeDQeo7FUvFbyAlRsmE02tnTKgK67zEQikdC4LjjC64M5SjZWFr/OQkAmTcVTe8WBBiFcwnLTmajc5qxkddLvUonk5UE1zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceXKj2wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceXKj2wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D351AC2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785058233;
	bh=7tixYa0YBmK4w7qJbQxr+vX5hsmjGMmEooSSk1jGWp0=;
	h=To:Subject:From:Date:From;
	b=ceXKj2wSZ3MmcGthld3mXMi1j/77BygNrKB2xY/DwkGAPGHkpA50C9+n+XCbTtnA1
	 rpfHrcCYB4gIPTc4YBm7hiNIVwfvnT9VRBbbai8VZNqN5zExDHsl/6mxB0VLX0FEnT
	 bI8toaeZt7D+Xhozfrh2aCD/CENRuVJi80jeVfYPfxajefh7RU2ap+zBEBFvin9Ap4
	 pUpISaHjTOdJL2R8BbzAELbLOYcAT7qRlmFShJB2uTetg0ljKrPAfLtTSOC9CG+Edw
	 5WXNW06/qy2FXWYdex3rH1eoShqnOemnFoT30dLLvpdlviH74vVm81D2/t+nP7Ho6r
	 zOLJF1Lyr3ADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C24C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505823369.18512.13134911614833737427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301079dd8e8a809efb7efc7b938832d1511c37b5d72815132e6dc34f8ad26b0e
Date: Sun, 26 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785058233
