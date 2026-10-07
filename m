Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D05447FB13
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791365434; cv=none; b=lpS4vW39pWze1spBCsiEOmA7ru9+IMbZ6XakvYdww5R8/LdoVJuADUaEfK+fYgMD0z44x769ql4mPBoIpW7mIsIV4cqfSzqHzaoyGokYOlENd7yx99OktzR8OrjJt+eQkTGeCoY0aRPqX3Xiflq2MXJlsTfEWewsinqo1X2UIK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791365434; c=relaxed/simple;
	bh=QrpmO78EYTpm6WkKC79p4S7TihFgmE3r+QM733M7Alk=;
	h=To:Subject:From:Message-Id:Date; b=LM4Cw8cifJpfxFOUdLinh/8NbzgJgsAXtnbJXWovBpAPwFX7uSJDCWO/eeWswyK20ZJMSSMOgmUXo6Iam8X00se8cWhbc5pyUxVeR0oLDU7FgUrgIsvMjP1nebZxx5CRWvnpBoZ/e2hljgqtkmpTY8fAiW/FQ9q08czPZwGtuHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNNBT1Vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNNBT1Vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6214C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791365433;
	bh=QrpmO78EYTpm6WkKC79p4S7TihFgmE3r+QM733M7Alk=;
	h=To:Subject:From:Date:From;
	b=VNNBT1VwuFu89A671PXuZMYGlKVP66Vtn8C0TgZMKzgMBa9V/LYrmeCKp7gNkji81
	 A8f1hUm/Uuh/9Lzmm/sAEMgemTrt+H6QrS2ybOXWPoc2q55CX+u0FEL983iIloX3eY
	 5jCnvaCe2+ye8UyZz1D4hTTeniFd/7KpdEQVeium+YJsAtIuKQsZH81vKtb4dpRdTJ
	 UyosXvlNvPmf36FpUEppXWIFsFob4RN2fAjftNf2qrJkAy3NTU/NoOiAsftqpcpkGB
	 q5GgE897Xb/pOK2hxMtHOL5SVJ9i9g6vQSkpygX+eW2DVyNAWcedCTcpXDTs/D8mHL
	 rwfVR7tp4mRew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65ACA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136543369.29175.18443806510892061910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f215ef64f7cec1105df1578e11fd2c21e3183c1c6a2bf94d31470f369f18de5
Date: Wed, 07 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791365433
