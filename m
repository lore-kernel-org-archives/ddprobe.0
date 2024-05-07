Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22C915B12B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715084543; cv=none; b=C+omZGPpguDPBQ0+Jiy4QeaGdprBUeqpsTBYzSZ9pEqmbbaFbFq3c1gh+90e+ZkciLe96WZVDJfDAXpmg69CMN40K4xb9+ni9+nGoL5oj6liU4HR1L87nX15+7zZFcYMkhNRJVdA0ARt5Udbaunp9nK3E80ZdEJ8eisyoScOMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715084543; c=relaxed/simple;
	bh=OBED1E50YocbD6aiuPlIISpJ4cHpxlZfi1adI5wrDC8=;
	h=To:Subject:From:Message-Id:Date; b=MfqpM1MXHp38UA+3+BPKr99UObqEIzfdovgt0lvnsavEPOUzz5HI95/pSetOIu3pCC7tx2gq1VSQiTzPAXoD+sesRTEeTiWNzNWx+06FF8caiL3qFILHZkJFbcZdfQgHRYpDCqFDU2l3i7U/pI6ni9iqCK3gY9ztT/FaLEacFJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzA68TqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzA68TqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB44C4DDE0
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715084542;
	bh=OBED1E50YocbD6aiuPlIISpJ4cHpxlZfi1adI5wrDC8=;
	h=To:Subject:From:Date:From;
	b=SzA68TqCsUOeTTt1poQl4mdV0KdVDunySdjC88po3tFmZI1MFU5dQJNTXU7NXT2yj
	 BSSkTH6hKLSvTMRcegugHFY6/eUvy7+/6JDBp+AtVBlOzvn056VixOiNq1zB3jN+nO
	 PsXro0Z9y8O/XVK8G7cKDI+R7HXT2lTPWbPClsfE3MdGOmPyDToTtibZRQMPrKWWL7
	 nij7S92Q+uTwKHkpxRHhs1q9nMF52KfQvr9aHVpdLOtsfQ69ntcguSFoJQpmhH6hF2
	 KK361jNt0NoixX0xIvJxLV4RfEWjJlCOZaQU3dcjrth01f2oK0Rjz3HtGu2/CCfSP1
	 q//S+zCsk8B1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF50CC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508454277.9490.15120630962634252555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69006e53d3c549dca4881729653a9251e5e6ace103e3f8fa35114cbfcb58ffdc
Date: Tue, 07 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715084542
