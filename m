Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5800618E20
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738288554; cv=none; b=cDXfysIqNNmr73A+stPaMaqTQ7cDFtxTurODlaRRJFV05maWaPtpx40t/SHlt+PLH1Wq/tWqbb1BiiEFXFc/2YWn8CES1kzmwMFq3qDwdRluuKnxrYibpI8v+xPl27CGX5vS9mol0VexeNZbECsnLJyb9r9Ksqqegs0H/1I+NY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738288554; c=relaxed/simple;
	bh=nixFWjCqwQoCPC+0hTdJ6tapftuP5LyE8v3VOMX2Lkw=;
	h=To:Subject:From:Message-Id:Date; b=rwG8Lu3rEPVSnhCi/lllpm4El0EdbmJpK32+e1N7DAqppXINSQihty2bC9x7TiR4uQrkJRBjbAJXxTIU8sYDfutZcWTeleXd2Xs5DxQ4WgHNyr1mUSghBSXik0gh3kYdDsuS81VBsK0c7WFQjF9XrO4N9YZ7ZfQiY5cTKNTKEuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfAehXKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfAehXKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA75CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738288553;
	bh=nixFWjCqwQoCPC+0hTdJ6tapftuP5LyE8v3VOMX2Lkw=;
	h=To:Subject:From:Date:From;
	b=lfAehXKeP3aGyTTQke55wC5JKeHhGZUHsvcufYT2cse/gvsjNnD5SHCJ76gDdAXSO
	 URYS2nVDbdoeZctFpkjypOnWPxro5/xgQBUtd8/VVEk1RnhxzUZmqrBjgFUxPgPpZE
	 R0PunaucrZJszeZso5k7EH3pV9+UpYvXZf01IGh0p8+uADRUsBy+gcDu54ioJ0cNfh
	 xry+jRSEC7zT6LcvFjb7ummtM6Aj2Z4hdtm4LJ/Qna38h7f1Yuhc7yJlnXb8FxgMRd
	 ZqnlLiGH1IZYR9sa70BdyqdruZFgaLWpXu7FmACaTIk1tskHQMJD9uBa5LlWlNK10E
	 px68rgLq4HbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7D2C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828855360.22966.14436441737241787910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e9435ffa8a4d78d51111917fed8e2157e1f1ceaa5454bc09eb9c49a636022c
Date: Fri, 31 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738288553
