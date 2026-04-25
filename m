Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC9C4A0C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777091854; cv=none; b=HSo6IWhSPzXUS18CAYQtgmV8zJ/xb0LXDbCXhcZ8PVSNb6ht7cHBo2amMatYgiKs9cALFFZVfxAq+RKOFGSxQIOhHLBFLsQIa2O/H/rZU3x6EUZWk4IKU73QOXA+xUXHLKSQSaAwcLoRFa7mO0qq7+stSnX4MvjttKe8UgRaNrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777091854; c=relaxed/simple;
	bh=5L3kvVHcEtd2X51c+niUTs0mB1lPqOW0Bd4OQuJHROw=;
	h=To:Subject:From:Message-Id:Date; b=UacvFwocifCnmk7HvGVlfh0chRlDNmkbeUAJvVEOdwMTIHxwp160gSHe1UIkPmEDU059MU2e64cSZ1PcabLmpRbqZV3a+hIBgkzhFH7SL1u18VX2OMcu+TcQ5tEpaGN94FmM/r6b0qpIhrkGEjSs/KTjtlCXv9UP1Ik7Cg43lhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAthgXDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAthgXDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE22AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777091853;
	bh=5L3kvVHcEtd2X51c+niUTs0mB1lPqOW0Bd4OQuJHROw=;
	h=To:Subject:From:Date:From;
	b=bAthgXDCT19jF22Dz0BWxq4+ZYnLATNTyYOnuIihU26rsNzrFocC+p1V0mIE8FI3o
	 2+fi84QRH45hV+HO5Zh5Rpu0oPv6KI6E9JPV1N/MRLTctuNTrvMNDm5iY38G5eNmbI
	 /QDLXNIOUwBNiqXWj4a6x4ItmjT+iMz3ckQ681+Bq3gDZW62dnCMUP+0F+USmi7oJt
	 1nRqW0muVxvTs6Bf7vJE1Qbumcuf2ykFfYCYyEhTMU/y4lcexG0RYHCibhTxnOfmd0
	 6dSpMIMTw4+V8AOTdRt+N9TZrSAP0SynMW15lx2nb0gENGW9ibsUSATm46neIJByqh
	 92yYWwcLCIigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA00FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709185369.14924.12308458203262034846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef016362960ccbcabaa0b68e159120ccff290f55ba2a4f288b581ef9dcdb9d1
Date: Sat, 25 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777091853
