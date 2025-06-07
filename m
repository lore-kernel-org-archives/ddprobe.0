Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2CAF9C1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749316794; cv=none; b=D4J80uXTgeJjznwuYhV/TFbG0XpMIRpJgg5OW1oMoxtmbehqNZ2FURy91tup60qI3lKucgtryTkhiuMVAPuZpKLoAOIg4iE+KsTsg5IPEddpL2IRZd2OFyRMhqnPv7PvQncLD14IdhSOFRgOZ2hkHg6gYD4GLcV4x5LKRK+Z47E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749316794; c=relaxed/simple;
	bh=re1EyrxmMksZSe5g7J3HULWFU7RdWc7X2xLSuLk1iI0=;
	h=To:Subject:From:Message-Id:Date; b=lIoA0Ucm50NUXVUszFtCT0/b/jCvnj/GF6ouzfvVhUEXKTB4FD0UnhJiv3So9hf7xCfGD3DWbbpgYHgnwvsTkETAYPtJfc8S/Z6JrzLVRORFotBZ1WQ0dif5CCuecd7YkKxZSG2c/NE+WTGtKyPbIGlySb6LrybD3t204r1dG+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdBTFpcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdBTFpcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C61C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749316793;
	bh=re1EyrxmMksZSe5g7J3HULWFU7RdWc7X2xLSuLk1iI0=;
	h=To:Subject:From:Date:From;
	b=DdBTFpcSnZ92UUGHtFDjjU4dOTAy1W1dUKbDzW1vRd5bACQSF/zVWcXA2SKBQ1EMS
	 NkoBlfhPTl4VJY2r45CccIkRdLunxsDx6BmjFKRpB1nd5KxGpu5u0VNXBIWro9EJlu
	 3pH5fuqYfi/Dq4opgQuqwyUnF5glxMYpgs7+nX7ZZBJ3fDX+2TgfpULhpMevh9fBmL
	 bflTwX1blL/xne37U8usj+lSN/ouqPENOSj7UdA79fIDltLRD6b1d0eEe8auPFKGJz
	 WTz0zyLzOJriD2vejxn2iYUPT+fyr9syXkUy1kxJi0s9TVp5CF/Z34b7xiEOSxNtYU
	 n8IS3L/bNAATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429EC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931679357.27815.8070457765130219919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dba9b0bd1b02fe590c25be5d2f1cf5ca2f12e42b02ab7e8b8474b2ded12257
Date: Sat, 07 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749316793
