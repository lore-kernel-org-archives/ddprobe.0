Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D994C98
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748100594; cv=none; b=sYSQVPoUQXODp25O02XOEvZgkuasOWl1gdFmLmqrTqUcBWCU8ZI6eoD47jixegIWRPC5GZWHdkzobpzTLmdyzHsDY22D5hQ4ONmE700Ps7xiF8V/XvqlC3MhyMjWLVH3WbvvY/YjzXx40fro2/8JtEkDZuDDnfDsocCIFiqdxQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748100594; c=relaxed/simple;
	bh=wvX8rJTXh7MX3hALxNvlHEyXHGLISEpXU2Kvh34N3dc=;
	h=To:Subject:From:Message-Id:Date; b=an5evMPoZhA3TXGgCKmBSK2KnSf0hlt+R5CbS8jWSlxZ8zAATfv4hOuXIR2HoIfcRibY77OnJ4iypLN37d5wM83PfNduxj4PNEloA1GRebVzTT74yuvla8b+DDUoicLTY9odHsXbxRGEzRMdrJojJvmvyJyo7OACNkr3/HuoCfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnGQNZus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnGQNZus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748100593;
	bh=wvX8rJTXh7MX3hALxNvlHEyXHGLISEpXU2Kvh34N3dc=;
	h=To:Subject:From:Date:From;
	b=DnGQNZusF0pdmpeJahKS73rvrWsPknoMjVLFJdPBT8aWjO+SgBuZgNqONDcecRS1x
	 97BrtVtEk7koATKI/11uquED5BuMFBtQqGlnyRzgTF/R7RHCRQKK4gLGgFeOjAIt0j
	 4a117QEgCroVVWN3PWBTpIz+tjPyVwfNMeD0ldVYtFALWFU72xCHXmnqvcNalXzrRo
	 r89UQVpwENHellHPM9kF50uexm7Jq1gt10e0gWOqkZjzlOkca94PwL/Scx9et/hcaY
	 qceDD3H04iWqjHf5cVTJlIBhXH8itXbXmrO/Uhr07Bd8I+SGrh11JAfoK/sc9ix4Mx
	 Sc8my+obBOEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902ABC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810059358.4311.6345861219617021881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e8e733a6db60834c8210e69d455dfa8718536f1b0ede2f851ce9706fbc8079
Date: Sat, 24 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748100593
