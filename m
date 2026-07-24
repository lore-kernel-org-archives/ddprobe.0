Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198CE370AD5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784887234; cv=none; b=lYKjIMNEDPl6iEPsnmQhRpICD8uaqeQcs2JIpjFYuCwEWeRmgTS/q18Y9LboAokRTNlnrXutxgv2A63Sf3Z26sXkikkzcfODXgsMu81icICByWjTMKIeCMlZFvZ8I6p0fWFeMdBHgj60MNU2UMz4zYnSgH93uo6WvGtG8W33hGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784887234; c=relaxed/simple;
	bh=XzgQg7rtxnqSXoSJEcIZqAWYFI/FMy92txsmRwN0+MA=;
	h=To:Subject:From:Message-Id:Date; b=a0dfmMFVZZnm/oagFmJ2pxyholVdOaiBoXgrv1VN2sftVsEYhy83SdNty2//Ht6G4kXnlbW/8GDIu1GOVezDqY/+l15kZQ1JV8Yp7LNBx0SyqkzVo6yKSvR+RNq7FeS6WYrZWn5SS3JCuYvnG9jVrxSJJefkfGA+oyN7r15BVuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRb7ryRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRb7ryRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC212C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784887233;
	bh=XzgQg7rtxnqSXoSJEcIZqAWYFI/FMy92txsmRwN0+MA=;
	h=To:Subject:From:Date:From;
	b=DRb7ryRZSVdbEyBrjrkxTszmx+y8KmFgsooeahcjZTBvJDPpn98ZAvouzJJYTP+dE
	 H7QRU2I7rtu8p/eooVhpUxKgyG/bR1TsOtbJSph9Ckbi/IcUgUDH1uifbxlwIARdaj
	 aiXuChpVuddxNKQcyTyPbU6FJbG4NCbUOEFuCIa9TpJBbuY4pGxC/1a+rTv4Ggy9MH
	 XfZghjsgIxOjS1bBJFK+t7vY8A/ldt3nyYdJSbZnVGS/KEempJ19NZZWURUyFKxy1O
	 7Hlj+JSkXvgN5/6F5JPzMqrx13wnSm2NfP29Nm6WD52hQXaF4WE3QP0f0/Kqnel4+P
	 +BByvjWBZXVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8153C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488723368.28036.16265806065330783128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688ae355272304bf48385b3ccec7c06fc1ffba18703b94f20d2fb0334575f73c
Date: Fri, 24 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784887233
