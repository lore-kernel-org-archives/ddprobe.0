Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E21D2F26
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732412154; cv=none; b=TA8zMo9H7PdacPaYqLCmAtrNGQyp3+PTYP7CPm57q0x8h0Ua4Ir9TzgQ+12XY3l0TdazMi55gu+D/6FaKGSw6wW0bjDFrAKXw9ZOpB0fTVsp8QM9XnzGNEv/hDJ0r0UbwgdgUInAbkRcvFwydvvx1jJjq+3N4/t918QTmCfmX20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732412154; c=relaxed/simple;
	bh=jQg8dw2fo7V3U3zAUK3luxr0jgwq5VTYinUjaKJaOzc=;
	h=To:Subject:From:Message-Id:Date; b=tVAuynS8x8UxTsh+h+G0rAGLR4S3ybhk8iivMa3No84gsIrIw75XbI3LPT5xrmJ8Qk/F59tg1eoQwKtx5zGQMUnsLwjgqPrELPuUYWDRrauUTmMKsQ7ZTDOiBmBDgCIK1+sz1/7QNoXPfiReziazwTunH5M0C4B9wz09SfMC0V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CumLZ+/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CumLZ+/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EFC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732412153;
	bh=jQg8dw2fo7V3U3zAUK3luxr0jgwq5VTYinUjaKJaOzc=;
	h=To:Subject:From:Date:From;
	b=CumLZ+/xypaknaBOyczF5IwM4cMdHJUVmFldGuW8FdvCJ4uUnxiBXbs1NeFCulniQ
	 1suc+sTOVNgqeaNTDGTinyC69aj1xnahY0Te7AczzVT51KOQy9PRSbnHjhk4nblJLV
	 MSYDlDK0hRhJonft6ijw5hirhDhZM7auNaAAiWjrDFM+uV+CCjEDOdeBOeu662ZQlA
	 ejvg6xiaklyPX2cHVR+EQSrjpBKWthCUrYeQq1zwl28xOL3UVAFs74EshfoUanHSy9
	 LlQYCSeADgz1K2JgwYD5n2ITfTJkM+PZ8nvPUB3h/C38boHXilDAhTfT3XlBz4A0lP
	 zA+Hr7WrBzvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96484E66893
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241215358.22802.10619821524188080763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c99ea18f4488cf82ebf2651e43acc769cc90b34d7c09b602d690298176cbeae
Date: Sun, 24 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732412153
