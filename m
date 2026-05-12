Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BEC2690F9
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778581834; cv=none; b=dNmh3qVT+KPbmQsJz9JGGhWshsdNTq5PUPUW7IstDGklhFdQgXV36Pf1fq0CFeGsZce6ifmJU1dmK0RWP/Bh7n+QP15wXcoKxCUMZFIO2UBU4wnfsNnK6QZirRX4hriFpO2RfcjFTp7r9gWMT9hv7SpB3anIWEVLAOLgSQmqano=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778581834; c=relaxed/simple;
	bh=2TK05Ljk4mGnhs8AOMPfmbxKsFu/AwzmtK4hHEEJWBA=;
	h=To:Subject:From:Message-Id:Date; b=J2G1LNrFX0C5x4xVlhCNecJBtPrN2hfumUuwvZVV7o+OhqkBLsQtXfilOv5nIEKd3ZA/hUZO5yirg0TCONugE7CIDBoOKLQ0APP25N71yZNQjFUSiuwray1rL14bk1/2i3fpEQKdOMCuNIEbDZs6WUzGrBBY3O9GUPA7INnNbTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gODHWaTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gODHWaTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7976C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778581833;
	bh=2TK05Ljk4mGnhs8AOMPfmbxKsFu/AwzmtK4hHEEJWBA=;
	h=To:Subject:From:Date:From;
	b=gODHWaTplDvoqe1WSDQ9AxvrSAEGqAc9BfeWuD3Dnib8/wDfgEQ9hT1lk6sp6BJMX
	 MQmxj1lc52ybscYV2VB9oPP2Izw6vh/+Ee8t/3Ps46j7e2N9Iq3eL0DV90gzG2iV+L
	 /tZFrLGraLhM39kXqFLA+10YO9Hf4oMS2MnUS4ATPL4HlT585U53cQwKAAs+d1+S9S
	 Rhr9gUBRChxaJZ9glChRYfUw9OKgscLVz0tdx6DVuSIV0SWOdJpXCRe/tBiHO73eMK
	 cdKk6UT4p0nbeh2HLG90kMRBdVk3TGxaGje7Cz9ADsz2xURPuJ9Vfbq2AvdvdG4fbJ
	 TbDx2YbZ+oCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EDCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858183368.30797.11182361043939358092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea77717daed56a8d958d3b6edacb0b1ec87f43e73feadc96d4cc8f4966cb7b33
Date: Tue, 12 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778581833
