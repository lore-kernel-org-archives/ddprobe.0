Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1635836E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781438794; cv=none; b=WPyDRLu8uM4mYIyOnsTzqCP801yn4kue9qJazaz3TdEm/0hXBDy+JJFGwnY8PzsVUk8XNpUJMi9KLceLFszkm18WSLnkYtXub0+r6RSlD95h8b2cBiGDR/OerhACnDNxGCbEk26Tu0mSOjkn+hCklr4UTUyTRJ43MhxLpf1ZMX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781438794; c=relaxed/simple;
	bh=oKWFdylarlq1oat2NLExaAhB8yKOpJhchgqegCyRqu4=;
	h=To:Subject:From:Message-Id:Date; b=DgCVl1qKHSAD93GjsSelJrJq8l/4zCehhlvGP4OpRlAq66WSFMu3z9X7HPIa50d9fB05Viu3m3rF0Rmt9PNtmtJmCwxJJ9oeBlJUYMnIb+OKouml1qhKb8R0aaHx2wK2js+xFD84MC9guibrm28dqysr+tRVZttiJFtxQUjzMpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRN+Jc4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRN+Jc4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781438793;
	bh=oKWFdylarlq1oat2NLExaAhB8yKOpJhchgqegCyRqu4=;
	h=To:Subject:From:Date:From;
	b=SRN+Jc4FoKnldfGIonFTiy1ToLsAfzpjug1GxgTXX3L45dbQ2KYjGg0pBsFHRrKoM
	 iq4vlGZ023tDiJEvMIVjQNJhxJZu/Pe1d8bf7zOw/e0ArpjmIpHFKdQ9wxfEszXXxk
	 89EcMv8zs4pPMuPMrGFo+wPMkKwvanXzyGgpib3c9Zg3AQM5pYuMQKp+8WfZctqc5O
	 OiwpR3QO0n5OflMZ7D8HY7BK0fHtzDt6OorLaVPUtZTums5HxbyF27TFLJ3GVJ8mrz
	 ycEKutkR/MQp5HA7IIJqKLq0V1CciM9y9KCUH2c5RHrLjyhhHjgYnguTry/r+L5R3N
	 rBJwCySqqLnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE19BCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143879369.18575.6284234375178235526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce2454473b15a3d3e5a70372990ea7655e0d79bc2394c0960c1b193709f329c
Date: Sun, 14 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781438793
