Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F025113E051
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712820497; cv=none; b=Nn9nPGD5m9ldPihhPLIkUCe1DLGTY8jRAX1qf+nlB1CtTZaTOzJnWa9uRsWidlwl+QY73n1Oeo3DWrmGg1/4SFerZsrZcqqAmoY5zXDkcHDcGhhMMDYt1jkV1EK6n+artFmDebhGRGebQ2tPVp6ylwIta4NaknO3O5lCWxdfkKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712820497; c=relaxed/simple;
	bh=kG2DNVgahEVxQEsGYc4SCuriBeSkVdCY3q0XaSzkJQk=;
	h=To:Subject:From:Message-Id:Date; b=JeKde1PdQB7UlyC89b76W5vuG1r4LIVbAvqzh9Vt2hm3QV29SxG9VfsdUczwTzjWTEPg7LQm3SjDRKHbyybGSk7yL/ElUsV4SiyIDHA5nmF2OyyTcb3SqHLgxvvpR7ghRc6t7fspWxontX5KN7v4YH7pbAJrU65cHezzpC4rd3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdcCEv3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdcCEv3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78799C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712820496;
	bh=kG2DNVgahEVxQEsGYc4SCuriBeSkVdCY3q0XaSzkJQk=;
	h=To:Subject:From:Date:From;
	b=jdcCEv3ksXntUMVpKwbxDBE6lU1kUVT+ZzMLHvAkWG3akPG4c0OK7iz1mA6mr3tOY
	 R130qB7noYZdYmBcr0AjS2vrPMNqPncUQUAS/+JKiLCsIRy5P81+tXI9pYY/swwHdc
	 IJpdDz5ouVWWGutfCng31vOBD6J7CzkdNXIO5ESMVzAPHx6jHTqTi2UHr9nGNphso0
	 lJMF3uNyVJ6kqxJ9y6OuiTJ7ETYvTm/g1pLo2LbmMLRLaPryjBaMQkcSFVJTRiPxE+
	 /UsYMneVYmfOwBYQNVMebKTe6HOqK90RkrQNLItP/aqxrBitDe3ciAJgZllgBbwt8J
	 5jAVtmtFXXMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E4ECD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171282049640.4072.17662258143055713163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f6754df0d2ea5abfa640872b494c76ca14c31fe5fbb6dd8c59c85410b37e4a
Date: Thu, 11 Apr 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712820496
