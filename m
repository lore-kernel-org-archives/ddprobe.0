Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B10D1DCB09
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746389994; cv=none; b=aPwDH2FuRECh7SRKA9HYcth5q/0sbmCNviZjCyHLKkU0DatYZXSbOiob08cQtmNtgyCQzLG9vWoYf29b7vnG3VwsvdK4fvWzBTfkDU2/8NDpz+IJgsHEzlcNkT+Lu0xVhoHsuT3/E3LZnvlFZzvRD9r66lvROLy3sFfNXkGphyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746389994; c=relaxed/simple;
	bh=z8W3ss/CX5Tq6t9/Afme6vTnZsApwfVjQirM3qiJCnI=;
	h=To:Subject:From:Message-Id:Date; b=Z9XFouqOVPBcTv+NoX65lKOzxWdchl8UpJFtXyeQNTAwEw2wa+PDTvTHqQU6FTzxpcBylZVB9e1cKwJFzfmuaKJ7drgOidC00cjCl4F3n6PxWVYBCeXD8txboQgGh/MTdq3yr1XqdMLEr5+LQQOZpXSG/4LWltEAnBar4dQISHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ3fS3b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ3fS3b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A900CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746389993;
	bh=z8W3ss/CX5Tq6t9/Afme6vTnZsApwfVjQirM3qiJCnI=;
	h=To:Subject:From:Date:From;
	b=oJ3fS3b2wVMjjNx/CnlRAqlAsdjSyobdSPVOLE2UxypM6xVUS2qorbb/0bi6uLCcW
	 Se9dajKn7pOTB2BxoWJw1yhvD7nFcsG1wQ3Et6PlvWSZlFuXaObbZUUkhBMP/jyi5Y
	 fWwmR9bWNPWDExvmHTMErt2Dm4HD9hOVzotLvTXwETuFaEn6rJkCZSj1d9SuJCVvO1
	 GxhX6EaNESk24I/dKatbUthlcdrOU6QKAQ+2b6LYvbkjeIxDHpLqhHJ2q9LpUgPX7Q
	 edhafKfz3BiU8D0yLBD9sklHDAiTkk6qEbCAyUSzhBORpOq+4R8uCbR2J6ADAyxd7C
	 YKIeR4WQfy/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638999358.11892.6345775023446054858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4debfbf917433b6ee493384bb308421a170d32570db6fd385adb28192070c5d7
Date: Sun, 04 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746389993
