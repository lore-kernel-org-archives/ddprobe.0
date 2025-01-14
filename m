Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699B22DC53
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736859954; cv=none; b=nF8siLrYaFs6NTjQiBhRrpoYX/EykWUm1LaYhhXobqrHO2FpT0r3kIKsajtZpyO45aqREgBXyfAHjkZxOs84V2gQvMrGSgLOw194XC25V3PPYecuKTh/UqWQ4OEtmSwxbs5g+vdHYuFQvRWIPrIdbOUv9c21vOZ1YujxYKjA8F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736859954; c=relaxed/simple;
	bh=K1iOCVLM0XgfKZkOT6277ema3zz2hJR4yxt7c7ioj+U=;
	h=To:Subject:From:Message-Id:Date; b=JJ6VekjW5P7GP5oLT8mNSlAUZ29Md0OatriSaiBIm94FM8TzRK1snhtmCY/qWyhDon6xpwgAmxG7VGt1LARlG3SRGuEEeoP6CDvcB6q9JSjGfi1rQkV7HMXtoZTd2sjJbrxB/ylScoi01lQ1QCJ/6GbwahQ4yh0WFP87myI+sjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myzb/46g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myzb/46g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C8AC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736859953;
	bh=K1iOCVLM0XgfKZkOT6277ema3zz2hJR4yxt7c7ioj+U=;
	h=To:Subject:From:Date:From;
	b=myzb/46gX3koK8MesU0kBr11RMKRa1uJ3xIlAPLy8qow+xoYq0yzNRvDJw1KhYG2V
	 iig4SrDpZCKp9ltfIxhIjHGtWOwo4zQpZwi+3n7FjMKPEHH+h2iiOApaurBaGEOzG/
	 1Aj1W7DUmel/IxDpBoD0W1ZGxsecLLoEsTbBVh9dOBhmowFOs4m26gFMFUkUb4z3hh
	 1B8X77HQ6FRTBINv1mJNmYx1jVFyKdYUcxiJwdWLmubeqkP4/jFQWERIGMt9FNwhwE
	 RsiaN7qbFBSwG6lO8VbLsAOm8vbDf+sK5hX/7ZB4K3mQXScOPC8ymX120BIHSJj1xe
	 EoUyjTnCUK/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B60C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685995359.7154.15836047995030595801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5742d6d821b61fb0e44bbf50a4e12f54277c4c05c74e1835129ab6974a2214a4
Date: Tue, 14 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736859953
