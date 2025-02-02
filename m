Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298133985
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738487154; cv=none; b=PEdirgSh1RsLopmi4s12xQCc+iDsiJbUm5Qx5bjjMWYyREfgYjXFSAAZBlDyxmGJ1/I4ZtQO+oTEsy2VCjLmff7vFWh6+N52LNfr4oXU1ZqUT9gQNEt16W/08R0oYJoarclbM3M5kHU/ynMAo+iFKMf6Gfba9MBbsrXRO1KLx2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738487154; c=relaxed/simple;
	bh=mlsSqhT1jUHeKUnOhT+7einjDHah/YpvDs2cBDU0mW8=;
	h=To:Subject:From:Message-Id:Date; b=CdNKWPFJM88WHiho2TJzQEXYWaZ1YFQLQ4HLGMank7jM6pYaP2W2cT7N5wo83JNS3YMn4BtGYrxGeRLJxpXNtHDl+pTxzrABD1SUcgUO5aVKHj2WxmXSD9wDWMNjrMsVrtPvwCRbzpYVaufPHUVt2fYh1Q8UgA19nH8shTWHqfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSo2tizv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSo2tizv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B073AC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738487153;
	bh=mlsSqhT1jUHeKUnOhT+7einjDHah/YpvDs2cBDU0mW8=;
	h=To:Subject:From:Date:From;
	b=QSo2tizvTWB9ln24aE5c6ArZkmgdQbnRl8suFldxXVWUiYPEeldtcBxuWtfd9c+gY
	 vbGcfGLtBM4euhq72k8xL8PVbHjqKy7+lfZjCizVV86xSj4Tn8t93IdjDJqgpni5xN
	 Gd4WB+LboH9J7fDScmbsyLmhUDCpqYCQ4CaV/yt9nlpHq7fOsAkstzRyUX26/llfjP
	 V9Pp+Ksrk43wZmXsaOZOZq9bGQG/TmJ9zscYueyq0ZJa90ImonRC8ZLTDabAXxVE8K
	 MUJNtz0HUpDCXviW5QrB82IJJ815Sh7IM2B3VGubf0UCcL1x56i+GG8ymznp2WZ6bX
	 jdBQGrVk00FtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B95FC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848715360.6241.16888007376594410989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3a6fc38b420fcd11dce53c991bc2e0cbffe24e2cb43ac36d7d9fc807e530ef
Date: Sun, 02 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738487153
