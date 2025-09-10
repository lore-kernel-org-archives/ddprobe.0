Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172EC25D1E6
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757519994; cv=none; b=cZxYHptKp49yjvftJoWwL5lB4KA6Y3om5LRe/VtMzANv0/6lDi9Pap+8xXf16xyFUTiCxsOAdMa3fsCiM6hMmA6uLtn0Q7vXPQw4WxWBbLGMnaD9lClHtnwb8tULrZ5X+lcUAUpP/vtS16Ou/Gek2PjZUui+c3pB1KqDLNj0bj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757519994; c=relaxed/simple;
	bh=ZGrdFL3vR6yBT/AEh20nxeX+VurYxWCSP+Sy9gt6Mxg=;
	h=To:Subject:From:Message-Id:Date; b=o7umlkFjC/xZAXuLCcCDWlcfqNHwfJe7epeWCCdp++1PeL4CYbqcA3/gqLJrz0FNB7eIXqn4MUygylab9s51IMdRHHcw3y52uozmE9hwVkN1YFzMlM6TmETPNsKXl/PZ6amFIZngjmwI2DDRpJK468gEB2pbXvP3SDDmuqF71yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtFa06bX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtFa06bX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1017C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757519993;
	bh=ZGrdFL3vR6yBT/AEh20nxeX+VurYxWCSP+Sy9gt6Mxg=;
	h=To:Subject:From:Date:From;
	b=GtFa06bXZRUQuFJPgzimG0P8phB+kSJ0/G859x02YbLA73SgmC883UOVATAwj/TIk
	 xahOHlt520M3qVwgoFWDgVBsPesyVgYuTUeqi2+Y/i/wYUFVEWsTpBz1ciDk860bxK
	 08iBBZwVObko8SWhdqYhJdhJ5RVPceTjHBH/Fj5pjB3ySLuLUf8as7E0C1EoeyH/A9
	 KIg0YOLN/SmtFaz1k5WMWAYZ0TTJ3g4QMUddg+nh5SkSQRim3KYox8l0ezj04Uy1i1
	 bp3yT1avtp9rnb61g+zZQp7+S9RGLm3adyAgKGiw+X3f9510SjZJBBjnm/0yjl2HZv
	 cx+eWAb2/IFPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90187CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751999358.14235.516742403372653002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5bb71a4d32d8d5060b76cc6540bb9aa612795ed5f2e69cfc15d61bd5baf6da
Date: Wed, 10 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757519993
