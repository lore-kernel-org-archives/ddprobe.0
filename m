Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916C1D8DFB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753659594; cv=none; b=ViNnLc50G/MmbVe8p5ZVVVplO4B74b7qAnA0W/bKy3xsxIUfwgdqEL+bQPLr0hR3sxhWD5XL+ai0ZZ0HD5JaX6d3F+OLKYLnm5+Cvq+FTwprJRU1iq1Wv2JDVeW0A/bg+eMLP9X/EYGSoWXcIsPCIqcAb697Y27y/usQfz6bW5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753659594; c=relaxed/simple;
	bh=uU1iJsQjHZYJc3k92gPZkGZfza1W+jW0/Tpxla4FTfU=;
	h=To:Subject:From:Message-Id:Date; b=i3Gxhsqq8MJ1ETi163I1iCZUl2rHzTwIrwRt2t4B56KbE5hocTF6KchDkVSAc00Fbk4sBpRKCyQxcCyH3t5SYL+TD7VUMtmsywIy2bo5lmm/df+nHwIMQxRGqFaUMWKDhZEq8bH0i8RRRxV+bUUcHEhZQhlYDbZwERQ5N8FYyB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEutGfDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEutGfDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753659593;
	bh=uU1iJsQjHZYJc3k92gPZkGZfza1W+jW0/Tpxla4FTfU=;
	h=To:Subject:From:Date:From;
	b=dEutGfDTw8tgfT558SYe7A2DBlQiY5F+R+9HzebLIPExLCwfNzpNn15asCkD0aoOP
	 L/we0cZjE+5ROnRxWlLGP+O21UTEbZw9zDDVTCw14apa3o5Pw5GkqdFCnMOU9WrSuq
	 fyU6a742Ypy07GKc4SP3J34X86UFWZ2lP+DK5XiqldU8awG6jM5TZNvf+BwdficvYB
	 DGdXDTmrHRy4nfSNXmXPSYg4oDMzFClbe5NIAJg59WRGgIrIVc3BeJfz/Rc/Gibf8k
	 fMbh4iWep1QaYBVXaz5vq2X3GOJ5ErJnUttLs2nlGQaRGQtU8Gc9ozQuj3xABGsl+q
	 77biPgaW22SVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DACC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365959358.26068.15576752167335631162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356312dcba26107cc3388c547262607f266209a1e2a9622bb7e3d42ad6093df3
Date: Sun, 27 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753659593
