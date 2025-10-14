Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32130DD28
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480994; cv=none; b=NX9ODxRLW5EyNGml/5grms/ri3qtXa9mX+QNp7Zt9eyd00eJxzV20qmK+rO06W1FxIfRpEiiQX0C3p7wVCfruGcf4xjp0ToH5H86ZS9vrqjcpO45gAcKKAbZKDdxKCJbdSO5kPfCUs4nYBqBsyJqvOjElBaHKmZS3NQSHBgxWj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480994; c=relaxed/simple;
	bh=Y30L8ypItt0DAh8RiGtUvABk4ZAUvkoLO7/B7VSwcUg=;
	h=To:Subject:From:Message-Id:Date; b=nflQo1WC/N3OL81TKtk0taU8tqyxWUdqZKjaYoaGnZzhIrdweTBe5mX/epnjBUi0pmynnELy7l1VZKqtGODe8GXtqiLdabgmFTPblHTLOyOQr/bUjAeWUrXewUFrSItw6Ptj7OpCtbVcOL8+S3QpVUCTuqCKrjSoLexO4wlKN14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD8TK2UX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD8TK2UX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D10C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760480993;
	bh=Y30L8ypItt0DAh8RiGtUvABk4ZAUvkoLO7/B7VSwcUg=;
	h=To:Subject:From:Date:From;
	b=SD8TK2UXuYZcJQTLzCGsnX2PXBWnozZS7K0aBeNY9iiz/VYw6ANnq/0swUjdujR51
	 USPB+tqJxxlJYSSGDsSPLgTN6ro55JBXOfZZsIZXKaCOI/g/fbu9QOIrAep1YgMgLU
	 rm35L/T/VPUvRFlJnDZ54tiJ8geHbV/kUrXOWn9d9t3i99QI76iSeX4QiyjXB4mxMc
	 Vdy7lmvdq00oajyVXZvRa/oebLVa4CMnghW6ekCwFxmtpU9r1el5eEQ2ERhYa1OKRl
	 FBVcvSDrqsvbId/8TJCFZ5jj+etG30raJRqR0RoW/Jys2i8KZjOhZm3HTftgeyM7Ob
	 eyU9xYH7mISkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA5CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048099358.14081.7265348110491236683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad7b8ce929b1dd7effb7ba5e0a90226f75ccd10d15eb2c3296a5eb93794f696
Date: Tue, 14 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760480993
