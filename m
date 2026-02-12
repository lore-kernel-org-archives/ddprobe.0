Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36869284672
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770875694; cv=none; b=JQA4m3NhtNtbrFxl0XBQcwKdAXWaoLKMJD5kM0ZLcVLGn5m0sTjEUDqbpGngDfoGvDdV5I+nx/3zr1NXfMqZmdREj7s+5SAJGpemNrKHONW4TWST2nWg1jZjxyrEX6lsGAT79VGPyIlSWyoipX8scT0ekAzhf3GqcbqfofOpO0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770875694; c=relaxed/simple;
	bh=B0WsAO5a6Cuus/aZcymZC/928JbFGPJCe2feYSCAveE=;
	h=To:Subject:From:Message-Id:Date; b=ioMQdDLb1PklTSB0eDJc/Zi5nXEFw5uBcGNDO/fu0dKjKoKFv4Gw0/Od/8UUsqjAB7CpyNaLgqb7SQJjNilFlIR4gDEybEuObLvkhghIdYjiTaBMSrieqoyQAItt4fe/ceiqS3w/3TdaA45AP5INUtmQLAQMXd4fDzgCZH2TKHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0Hjn1mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0Hjn1mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF618C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770875693;
	bh=B0WsAO5a6Cuus/aZcymZC/928JbFGPJCe2feYSCAveE=;
	h=To:Subject:From:Date:From;
	b=u0Hjn1mCtU+GnI98hblqiTJUhjt1JjmNxLhEkipRIBgq4bRXPyI1g918qTaZhsv4t
	 ZEadguE7ZYepuwV7kwdFDDYnESudKOqme5qsSE5xvLcvfrnDSURR2e7L9YheHiZNpR
	 LtWvDkW/vViT8wjpwRUzHzwwpOTKaswdg1xL8lj81mKkpeU3gLX0oILG5ctPow4tpO
	 HVg9tcxuITo6SU8zprDKm1Lz1mOJIXbPDlcuQsk5cTuroQYQLIC0iJL+bbq5qV8xIi
	 wpMdhbBagZZ9A1IL7afqIFd8rXA+AX1UTE8cO4Dly6+lYMbg56W7oMsGDzw3sboybQ
	 atDxSN6S1PtPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BE9EDF043
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087569363.21578.6047186276736190076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a492bdb950e01e7cf7771f2c99fb12c7501fe52691bd6182c09940486ac6f353
Date: Thu, 12 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770875693
