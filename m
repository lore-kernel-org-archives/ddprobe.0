Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3F42599
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724213754; cv=none; b=p/AWL65lUbVEjRECBcNRifufFk4Mz2WtoUb7yoR2rmgoNTrcCGtY96Bw7DiTNubuzdyhPfnJAm4/DKW2M12nrbGjWK483aloWLTdpANE23qAbHMHj2cHZ8W3bHlyxk4MQsGtFiD7XZFKl2yE+rIfPXx3DLqThSrGDzdIJmyGWAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724213754; c=relaxed/simple;
	bh=l7dWNwUN8MDhXqjDFshATLPH9JgERMnPb40652wJzh4=;
	h=To:Subject:From:Message-Id:Date; b=ZnDJcMfaxG8/32Mnbsi5N5H19enFrQymUr8Ula08YrJVV/EfSnFuccTdant+zHWlLoo/Ddho3Poy5lhsftxdpfm7S2+Lk/6glB61EX5BLXxp6FleqhDf0Gf5yGvEzq98St4Mdp1XWdQYlED0Lb7rhQj5/Ay9jcNaYIVNoCWvD7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAzEtAEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAzEtAEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAEFC4AF11
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724213753;
	bh=l7dWNwUN8MDhXqjDFshATLPH9JgERMnPb40652wJzh4=;
	h=To:Subject:From:Date:From;
	b=MAzEtAEvbtgSUTXtznIOp1S3KoIZpndtoqq/bN0gj2MB3UPYEdvrqU0YXuVZqZ2dk
	 31l+zEGR3mY0g8irIBS3vH9d1ju84U6xUvrAwI29s8OWoCv7JJ879Q/AxWzie2OuBn
	 jx7QQKhnSxKJFUJP/ur/4MmL/8hOBCb1HLaMu4/k3g8X+SgP08XfQI6GJXi6CoPfA8
	 7pLZ3QWmoM7tTB9uM2spMFQ5i/0RKJ0attn8QrDsvFKonNCRXwmAUb5ikAP/tjq/Zo
	 XnAxUFS10bKsYRopYIL97KjQiZV+BZqUmWmkxhDWqnMTcYeX57vc0pAHedtYVNjk2F
	 Qbe0Hze7thwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB08C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421375362.19986.11792618925842080829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b22b52c4144566a7285926619d0e896dbe14214858b91c5d8c21aa5e211e5dd
Date: Wed, 21 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724213753
