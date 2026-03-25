Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E033D811D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774440894; cv=none; b=ntUw4n1MsM7PSk9Mu+TD6zL65do3ul8n0NDpP/+659WpK6VqX+hGuGLyFLuoO+n+d3vAS2Onsa5C3ivMInbPA1sZvOWdlUL5PoSsDff+y0WPOCu5IK7J+iyjd/gN6mOTITiipBArdSX5WwhfAmzBNlCEbqyuPxUdmjg3DUDMKYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774440894; c=relaxed/simple;
	bh=pWChB/LewbtA0TWCxMDJUEtw4cgJMAHcuyetauRxuck=;
	h=To:Subject:From:Message-Id:Date; b=aKuiYz7Ec4aL8hiCvC7xnRMKNw+nF2TMOanNDfX1+EvW3jS9kSq6/QlenVHq+lbgRkn1xu8Dlh8W3j3LPzsr2KLi+qF6uMtxNL7ZtvxXqYpPCQXppO10wW2kkZIn/kQjZYXqcLUE3pN+NXlchfds3wJ+ZJLA++QSI8u65zoL0kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev6+C4d2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev6+C4d2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF85C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774440893;
	bh=pWChB/LewbtA0TWCxMDJUEtw4cgJMAHcuyetauRxuck=;
	h=To:Subject:From:Date:From;
	b=ev6+C4d2a6EhJLZSpreNfPM6IvageSDeOaShkXkRTjroneq7IsFK7a4wYB2Zk35VG
	 w/o36Jo+zqrANDJ0ZMwpuSOjk4NLci6epwtYXeI9OVRCW6W7LrgiqG9wh67aPoU3AX
	 rXvwrgYcYYbDWiGwpIXJ9Sgj1+wsjGlF87l8Mc4ER3Go5aZCz77yclKDTVHVs6kt8g
	 HL4x2gz3zwLAkDIGPtOE+wj8FOyk2u6FVTY4LTpaEaPtGxkcRNUY6uX06XY7c0na61
	 LRQAjecqK9tor2akYcTGlZnSQ93L226RmKqn3fL02OePANG8ajgUpGiqtS7FhiKJlt
	 V/5sxuoij++6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99845106B50D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444089361.10425.16622388267323644877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b35e43dc368cf2e5fc1835da8ed9711d53010b19f3e201cb8b5cf326a51aed
Date: Wed, 25 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774440893
