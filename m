Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C631DC1AB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763209794; cv=none; b=sC90kXVL/a7RUC7ATIo6Et7E0l39RDNMU6bOVbkUCNL3aWyh8/tyEgcPNqEbiciRpcEGsW2u3QVRkwVH4DnSJLR+NyLlKwrL2YMC064a07v6L/cx0O79BFiPLaFwK/TgjfJKg/HKx/haWVE9R0a3EpG/xPddxHb3fB4y48D71zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763209794; c=relaxed/simple;
	bh=MAe5Ws7DM/7jrh3Ga7i1KSeOsBRAtwbWT36SzqNxTIE=;
	h=To:Subject:From:Message-Id:Date; b=ic7fKcJB2q/G42FFQWyMe1BOC3azay2RSNVSszFKYVhQxoH2flyhIGszHWW2vCPRAoEgpRo9/yXHQ67NlNm6GcUOPmZujdiwUhZFzpOaPIAzfqnuRLofL3xX3SC+O57MJtztlEDV8h4kIDq2pZxperTR/YZmRHYoc+glk9nWEuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCmndsmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCmndsmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE13CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763209793;
	bh=MAe5Ws7DM/7jrh3Ga7i1KSeOsBRAtwbWT36SzqNxTIE=;
	h=To:Subject:From:Date:From;
	b=kCmndsmU4rGTFAVqs4gsAhSf9DDNRi3+9WhcxjVAlyfnzvjl5dHk3pN5zb48g9TwU
	 Q7KT7Xp3Sm4vjVQoCkP5WzAP7gcdT2KK9cLchFuVlIgVie/rj0DoT2i7Cq5GTc59x5
	 LaMzyxfQ/JPVkXCOnnseqkrhlfyOBIfwJ65oV3dw8suJgPt3DHA1g8QmNj3HxSOnsV
	 hRo2aWP4AWEiIz7t04oM97ON8XbOCou/AM61YFaX2wZZ63dl/8cA/G+GBO8B288TbA
	 cGB1fEJPMgsqTZpdQuY3bmp3ex9/J5Z9Ls+ZVeIG25Rc+R2uOVQAdw2tQFiXGjFSFy
	 80PydO0+vwRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33BCEB2C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320979361.20567.7096524918652913588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7036817c6da60c24c9bf7e4b245efae14afaed33df486b46219418fbbafc370
Date: Sat, 15 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763209793
