Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BB6290F
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742302194; cv=none; b=dO+NZb0s+woqrDcfFRhjUMbKQkx3qMxcSaHBUPofDyBJQf/jj1Fk2/aB/uW1NsiRZaKuDxlWJuHRJp6/jUP7NqDwWfIObDJ4Rm0OyJR+wR/DHSe2T8f6mFtc8UFo1MQ55RCK71JFkoEaK5P6HuJ3qh7XKH7KQA0I1xZ7AAuFAKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742302194; c=relaxed/simple;
	bh=gUmOJzaIyEmBhFvh6hEtVHHnSN4rwHiMBnlmiAn9O/M=;
	h=To:Subject:From:Message-Id:Date; b=DVVHlPrT1g9IJ2JoO1emXEkP28/IyzaFEauR+meX4S4wg+spJa4j7BnWXmYPssK07IpkG9ZAagY/DKSEq/DGM3jV5EXKpV3yV1OS3T+0LCa2NhAigtJG4rBqih0gmLOk9ttf1PXnDae+wVxTtomsrFRl4q9nBtlwKdhHRGDU6K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McOo1Nd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McOo1Nd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB84C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742302193;
	bh=gUmOJzaIyEmBhFvh6hEtVHHnSN4rwHiMBnlmiAn9O/M=;
	h=To:Subject:From:Date:From;
	b=McOo1Nd5XgoRTntxQ/UvVcoXUDcoL9QVMpE1B6KrK0v2erDfzTrNWM5/6ykjFMzbk
	 QU0I0683BsYJSS8wu2JiMNhPG0uDu7ohU0SCiOFv8TlO+IxTXPz93WdBqcd1UyoZm6
	 oCzHifoAuG3Y+eGgHRCSgoYnopRU0HboarRfWyhq/kFzru0EWB/BTgquWhzXO4V+Jj
	 AoKuaOe7YoT8KUBFjeFV3s3Kxyl1V7HBho0t8byeiD9cYADLF3kqWaTUJBQn6HePCk
	 uzuQdkCjvdcRTmLsz+gSvqupa4Q/8+yu8hC1haFJMiKWNrvSeyWOkO3vtIBtb/Eeee
	 kXYu/emCK5Fxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F521C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230219363.23614.6953398534144165230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b338b7db3267ba614f0b503376d92142d909056ba6f2da7dafca3699e73eba0
Date: Tue, 18 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742302193
