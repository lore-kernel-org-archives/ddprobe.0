Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2891140DFA0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776631654; cv=none; b=FXoJKSjM4I2c5epeER8JQCbef35n00KNz51N0wyihxTcw5BYcnHcpdoYSvhj1RLOq8JKjhuwalGRtWMU42jgTPbeJUwWBNH6i8ZXMaPssGuPVZYdZh4DKIKXP89M9fWfhUbe6f3dSaDnnpCSPzcCNblh9rO0w9vmuR6FWX51YOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776631654; c=relaxed/simple;
	bh=4gGuO3fSyeSjD+Pp5fmEw0EoH/Mrev8MF2P0JQ3YHJk=;
	h=To:Subject:From:Message-Id:Date; b=ZvzlaFonu2ge6oU0N/nbK8Ydx95mPuSylHgQtiM5tdr1VMRCdoitea2hZU0LL8qNmoARSTppLxjrsILTsbk+qayfIOSeL3PgYpDZ7CZXYVA2WNbOxLvQ1Zf7aFotQQzB80NIfTZHogtWcwmy7jf53RFmvrD7Jp681RxqTNF9Jv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW3kNWvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW3kNWvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC6BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776631653;
	bh=4gGuO3fSyeSjD+Pp5fmEw0EoH/Mrev8MF2P0JQ3YHJk=;
	h=To:Subject:From:Date:From;
	b=PW3kNWvnKi7pnfj96FwvmJ/GPUck2UnkfgVrF6kqa82mIxVJMbzpK0US8MwD8xRQ1
	 K/GLOgWn+ol0CJkqJZw69GryEaZc3V3z2uVT3qfODjN43vdwWZ0Ty0wvDSSBUyywNd
	 yxxD6/3dZ7IDV5p5H8OuvCaYJYkcfOEEJ2NIANkQU3/JYTF+qjrfOR1u8HXO7VjoSP
	 fSy20ghjvxw6mz6yGCP5u95EkohSaf8XMZN7AW8DDJH1OkzDl+cdGjIT9cjmIsmuzA
	 YslC0akg3/vghQdLhZAemx/kHx4ZOwYaaiTs2uvVjl34CsHrXhzzmCn/nthABsi6OU
	 WyhzlejbYlFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2FAEA719D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663165368.7737.9185146951703111025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4989e196a31cc3400f0c5711e48d55af5dd9768e5c7bd7f96967946365b8b9
Date: Sun, 19 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776631653
