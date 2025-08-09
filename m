Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E517A2E0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754759994; cv=none; b=hksQRCm7enPJi18cf8fBN2ADgqRbELCuyxRziFImcEjRP8A3Z9viksOmpFRW1Hnexu4JGQpUL3shIY11a5TgDJf8SoV3mk8Wi0OCzrpBCt94lZ1Xzm56qy2AyLGY7RKH3NFeq6+oLV2Co/sd3aqMRuAPd68K7DpkVIhzIZrQwZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754759994; c=relaxed/simple;
	bh=hzGT825VCLVGYECQa0CQJBSpQkCxiSwlp9myUKdSMCU=;
	h=To:Subject:From:Message-Id:Date; b=b/wHW8ngygNSB3Tv7cMHnxrY+b4xT9SYn0RuKCWEhxpZvWj3ZciHMZ1Vq9HYbFErfcLId2/Dh13bNuMuzcR2I0TcrJR6semlIoVvD66ry0n+aG6QzjGpuAWehkCX3IUXYYvBPP3ap0/E9hM/t+L2PpgQVln57VZKHRnTBkiDnCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp93V4+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp93V4+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754759993;
	bh=hzGT825VCLVGYECQa0CQJBSpQkCxiSwlp9myUKdSMCU=;
	h=To:Subject:From:Date:From;
	b=Kp93V4+dZj9LCoVQjEi/3w9dpstlTlmBm1sD/UYPCzfskst8qlU+zQvuqhJCbRRfO
	 aYboMnD1Fh0oL8sIYME0MMtmFSuo19VAafGRZUqEXwTEWZct36G0sCXzjOFX/pcZjo
	 VrV/KLhdPM34wCTIV25VVqqNlYG/FfS1JBG7KTm4t3xl2BzRR1kpNKKlcR11w+5LiX
	 4ICFsBQ5brjgEypAZxRIj2RbV7tXVzHJfAdf7PResu4QFo/PzNwtA3w/uzN+z5Beu5
	 bIqdIaQNoQKM+ceY9yada3XIsmuAiOxfR8EJNVvsINyFJ8YNQMh3XbHGJB47Q9W6v8
	 Uf9EhTbv1zOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D20C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475999360.30665.2604879719057226183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6348abf53ece665319880bc0a0a8d3423839228194a87e46500920b69aeb820b
Date: Sat, 09 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754759993
