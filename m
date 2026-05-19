Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA8D14BF97
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779232234; cv=none; b=PsUFp1OyrxqzQwil3OvRAr3Nla8gMAlPzWOqlVIt6wUycA8sfN1quzT5ZM82j4csym+qWOwHaT8Ev4fXE0D8Pgufk/JwPWsOgTNVLdaHKZq3k0hr7EEm5T3uCD9Q3adV9xHAjP4W4OIuY7qWaPpMb/NXiH5tt5+TtlNfUZDzaGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779232234; c=relaxed/simple;
	bh=elIN+IO3ki6Kcsdoa08666KfwCwCn35gec7kvOtlWKQ=;
	h=To:Subject:From:Message-Id:Date; b=jNF4XMksDKc4U27Pn6u15+NSXY25NzsdG+xiCUtvDUB9y38qtGLkkoJjPyxnjU7EE5E3291LBJwoNX2Lz8XfM+Gs5fhWn2JztZPxucS8M81JOAfsLYQw2rvUa7usBJwIqay1qgMqI8Mmh2VoUeB4TQdxuuRHRHKsizAmu9myg/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEt+QpKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEt+QpKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E10C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779232233;
	bh=elIN+IO3ki6Kcsdoa08666KfwCwCn35gec7kvOtlWKQ=;
	h=To:Subject:From:Date:From;
	b=UEt+QpKqiQGh3yHoofDwRKjK+jH8qU5qT9nGrfUP4zCHeHqB64PaRxX48rr02Ym4t
	 d+mQILgm6a79HY1JChpK8VZHNXjr57T+ozG8El9+5GSCbMR9vIDK+1G3ucn+CCTgNp
	 kSOOHvmAT0EiX4aeJfnt4+5OxLdzojFlgRBNr6eavm0V2beZsx4SW/3h7zs3ty7/hw
	 TMY8s3rh1eeZYOy15aycy0F3fd0MSqvIj+HVqzeNws2nIl+tiURUwunEAN0ogDqgnl
	 pClKXPZ4c0Gx9zFRb809YH7AwNm4PRBQlZaUdtIouPafWJ5bZ6G0YBQK86U+T02tCn
	 FUuIkFTKPV2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AF8CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923223369.29774.17362591586014404538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a260f282d767b7b0b26c2e57138dc2a0069b2a32a871bfadf879ad128987d584
Date: Tue, 19 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779232233
