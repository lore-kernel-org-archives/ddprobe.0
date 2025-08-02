Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D811991DD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754124594; cv=none; b=P9EBYMYJjBDyjT+FveHlU6bP2b4RJ2Td6AAQUEfZn7+rB4ygHZwhzWjEB+OquE4JmiIBQPj5VByBeAKtzVPzb1a/Eu1+n2iX4CQeGLAYNNmdxHSPfd6Jbk9D/dPWxTZ9V973xwWvE7fdDE6CkjOXX/3rKvEib+yDC6nDgwjm27Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754124594; c=relaxed/simple;
	bh=vnOcIwAm9FumEwf2RvcVmlzSsDp1isvskKuS7QbpZhc=;
	h=To:Subject:From:Message-Id:Date; b=jOFyWGHwf6hw6LBfuz6HExhLyJvRW9CQzrnaci6p3m7q7TTBIkTBaA69RjRFRY7M6xMpn2W7Cq8X4OPTfhbVRCBtyrjcr00M2m10XdAyhB/esgmqWXaSaIt/D0qhBV1wIRKkmTcAFcG3Vfv01CYGOokzxvn/5lhw4HwSHkxTP/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA8L2wr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA8L2wr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6DAC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754124593;
	bh=vnOcIwAm9FumEwf2RvcVmlzSsDp1isvskKuS7QbpZhc=;
	h=To:Subject:From:Date:From;
	b=BA8L2wr+lUJkDklaq0AzsgsZwujFbrZ0Li2WfSlY5pfptKsVRi7IRUBZE3yjPRm4M
	 5+1Cqd7NvDRbf/mCCZqhfs1e0/wbzKhnYbi/uDVwqQYi8PPjfK/uT3IjorKGC5oLCI
	 O8chUPtuN/Ky0Xp2Odfz5lkM8Wf15jSZFX3d0Z1AsMz+9ACHj+HX9Jmcx9M0QtNizD
	 +HlFMxMJruU916HNfde1Ez9ZFJlGy5waOTbiQ/k+uxY/eSmB94NhvkWxy+judzdfUl
	 cj7bOjnlHybkBdoFK9u2VXug7T2YjerTgCecWsptbVoB98QX2p/hXtsi7wi2gHzX1k
	 wqfT+rAazpGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B475C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412459360.11100.5050260731084610883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544ea9c3ba370d65ce0dd546f8dcea3f297a1532058c5575f8f1b865ed410339
Date: Sat, 02 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754124593
