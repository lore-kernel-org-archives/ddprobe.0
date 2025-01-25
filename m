Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B81A1DE89D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737767754; cv=none; b=YeJhkllX0pHyMQwDm0f/h3DpbhW/fPXQ5H2zRBcsCdMuMh+fpSFFku7LPeWJ+leSpB4DU4P75JoFpyKZYN1ADDpjWic50V+p+0sNx0TxMZnrYnln9X5aGtWLcehlNBN+QM8HXOEmNj0E3mIa/Z32jWwU5FKhbESgPjGTL/U2DY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737767754; c=relaxed/simple;
	bh=L6twOO3dgpdHuECyvNMpqa5dcjt55KtLdiEyRwk8V1A=;
	h=To:Subject:From:Message-Id:Date; b=biHwliQrY/6gPkQK2JLGdp9QMeyoe7qZakKQvans1IG9z02lTUwqH9PInakFDPdvcmRVZE+edMA8gQyMoOvdZFrd6msIbIIFGatAcEV+QehicO/jIjSD8Fj5UKegeu1l8aLki6cy3Cry8xDel5BKKG9255jAJduMrI/GWeHSM5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRFD8pCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRFD8pCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FC5C4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737767753;
	bh=L6twOO3dgpdHuECyvNMpqa5dcjt55KtLdiEyRwk8V1A=;
	h=To:Subject:From:Date:From;
	b=oRFD8pCzv+O8EZtuFwWHM9bLFpRX3G1GSHYm8RypK3c4yx9ZDd34NUpl0Jhw8wjaB
	 CXXo+y4MwHPM6XSm6Pk4i41gHL4/CdWgt+U4Ew6BLb9zzjlsJ7JI+K32JSGlIRJeDk
	 OsB2NNH+SNuiGXuYQk/faVNwNwER9AsE4H3Z4I6JuZTxsoaeKWDB9K+PMjNy+Qkmco
	 8A+yPiWuWB92jerSumse7olZJg3JJKEKiVbAKqO101O4rKi7GgEnOcPwxzS5v0kQQA
	 qkbWhfHjrkrNwvqgwx+2o6Qy8fHtmASGUjLLd53hOLQNPfkptCzNWqohDO9Bjjw7vO
	 mZLw1G70GFFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF665C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776775362.27186.4016520618661948613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1567fb2124ec9af38e47e11a3a07797657f90662fd640fcb07c85af174c86d3c
Date: Sat, 25 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737767753
