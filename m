Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A71296BB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760287794; cv=none; b=vFZtQc2YXGu/GdtJZJlWipmuGbGDRc8yS5bStXpmqNWbWtanrxRtrDuiaq/sdjOEmkqSc3XI9q84F6P8SLUBqkVHjz6WzTIr3cJLfHoA2+C+T1BdU09K1aMVnisgQKHUswHTxTD5DTRl0b3Sh9RTYVznnYV0Oa/Q4qFUoellT2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760287794; c=relaxed/simple;
	bh=I2FgKmPpW4BV1phQrvUKQCl/3zkVGQYsrsaDQ736VDo=;
	h=To:Subject:From:Message-Id:Date; b=Qt81GNT7ps1OvfYdl3kyZ07Bk0l9ZbN59xqEYTv4rW81J53X/UWTW8znUxVZAnLcyFVqO2rEQjidBy2p8rNbVk+4gOVta5mIOVEUxLLVFo+mSuwzegSEDe2c73J/CeOZPc/681gC1l/yNHJj9CylZsqa028Aaka2QJZWICL22v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpZhRN7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpZhRN7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A04C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760287793;
	bh=I2FgKmPpW4BV1phQrvUKQCl/3zkVGQYsrsaDQ736VDo=;
	h=To:Subject:From:Date:From;
	b=UpZhRN7S+u27vjLE0sAnfgFH0GLqY9HXCLI49Qr6gFuU6L84Psl7NCC806Z83KS3U
	 rlq2bwIkrNrZooPiq98+KxlX3b61XzNSjGvkTnfhMsw3Efx0fxeH7jUlWwJupHN7Qw
	 Z2SGIms5AnXpDKRSGh45opROJYn2JwS6IGoEBYfWW8v/3rniNaQR1JWz4peeXPVwH0
	 PJXKPqG8D6bd43mTLPud/4TdOxjKmqYQygM8MaTIQHf4WUFNAAcTrW16J/IVtsKQ8a
	 C3GGEA930sOgqW92XQuTATqNuV8Lhw/24Bw45wGdX4qcgW1IhJV35+ome/e8CKR6DY
	 CBUiqCOsVRD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073CCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028779358.15398.726082440028429329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a554de40c2e8f8eacd0f9b2b9465b98b20e829f627e183a6cd8418e8ed454d
Date: Sun, 12 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760287793
