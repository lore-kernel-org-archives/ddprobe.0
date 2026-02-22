Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE4156F45
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771760094; cv=none; b=Cw6kpK/zOnb2iQYwU16kqAcmV2wvgXiM5Ity2HkHEc5+sUZQJV/qLpmztuEUYBPaCYjTtYrH5lrjQPA3BYxiGGCWOSb3spMSY6G2CWyrsin2vZG56mKXMpUvKoNBK5rCdAdvUQm+Vcxlvj4XCYfEGGMGEh8OoqZoqqxoCT6AOi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771760094; c=relaxed/simple;
	bh=dba4Q/A0ASDiRPd2h/585/pSmqyjG4gL5oLQgYySqeE=;
	h=To:Subject:From:Message-Id:Date; b=Iy6b0eK9qB/j6gcMKZxfBl624AjHVT6rNLIG+afD9/FClI27GOeTx9Wkf9eQL3mIMw9LPdSHwDAFXWMGA6NabmSLRYYkMUijFExA61BoqTMlNa2r3IPj08JTmlIGsIf1K8a1EgcGPm5qyKsbafdn/o76pyaYjfMAUfz2BX3d/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV2x9Lw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV2x9Lw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C72C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771760093;
	bh=dba4Q/A0ASDiRPd2h/585/pSmqyjG4gL5oLQgYySqeE=;
	h=To:Subject:From:Date:From;
	b=oV2x9Lw8eb0jzANgB3Mj/cxdQHhnTk5mTBaknP2hPUW0sMEJqPv/aATnTJ9RVYiCb
	 qBZ6RN4fZnmgZblrKix+4mhtk6mxX50pVY55VaHcWgYlPS0ptA7uT0vXBT1m79/NST
	 hCRSGNvX2bHcHnVNVf9fkvLa4pzXnjVvnqAaVd283P3g6cqh381DwqkUXskco4DhNl
	 Ij2/smVtUud7GmRqbYdxdJlRxbaNe0WqkfAHumYDXiQrCuyAItNVRRgjdYl9wj62rR
	 bleI4Mqll3Kl1tC6pxKdWeJF9Vxk+J8Y9vrP5OdCLdPSMwcLWHQ8tB4T2Ih+WTbwcP
	 wkx6NtuwyNX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03A8C5DF74
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176009361.22398.292495073666150656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be62a291693f01ce6b84f545254577050a82a99056178876bc44754358512795
Date: Sun, 22 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771760093
