Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062D41FF7B3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772897694; cv=none; b=HNYDXQG0W2Ons49xnkAMNEpBea/RnXJdD9uLeOK6jL1yNhk5KthJG1m4iEohgVLbmN7vLXuX8R9LF1b/eFXV/QtNZnGQ/c704+HhOmBClEcHO9NIQqZ2JMUsQuje6MABOcgQMqkV60d49PiOS5uIE3kTc5KAj9gQPaEFJDSazzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772897694; c=relaxed/simple;
	bh=UcNEoOONfxyx/NcxrAAnlPeXzHDjgA/fMol/oBZ4/V4=;
	h=To:Subject:From:Message-Id:Date; b=NKv8FQZUW2F+7BXg1vbnxOD2z6cP/Y76iSu5dfQ62XDCt7yGlBEKS/DbHHSzJzT+VAZqQRbN7QFxOwnbZe5S3k/6AkIDpRsAQQUMft8SORcdnxHrXRPmFmP1NBrNuaux6Nv8Ri87dfYtI0MH9lZdupT3xYNjLX1UvZLTNZ9USIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjek6KJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjek6KJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F1C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772897693;
	bh=UcNEoOONfxyx/NcxrAAnlPeXzHDjgA/fMol/oBZ4/V4=;
	h=To:Subject:From:Date:From;
	b=pjek6KJd+Ts91xOMWEAqtzgX+sMLt83L2vj9amK5rhg/a3t1lXVgNJYW5dFs58/J8
	 J/orFgcyBtPpVmhjJdJ7Mi3W/FEOoH1/PrI16IwfFbWrpI7M7TZM4kZpmZ3AIGo093
	 ERUQjeAnhkLtI5Bc5CBHjR0SW8zTfwl5GP8ZKy87LBhYu1hYbk7bIB2S7t9jhKenOr
	 vPu4eKjr3V9cr/qP8Z6M/tI9e6h/z2bTVYRbvsR3rNO46At5QdakwPBzw2AJ3Ot167
	 1l1DfBT9vCbMvvnBUc6DEByac/EXxHnTs9ipFEggz6PUd41BDT6rDWdQ31E7kcO6qg
	 FX4iPduTPqfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BDF513F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289769359.25076.14259417019986559762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208d5b68c4ed9cc8faf69b4d03b52b5afd1d065108b134f1ac2193b1f4fa1453
Date: Sat, 07 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772897693
