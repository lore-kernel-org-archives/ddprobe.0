Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2764F221FDD
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748884194; cv=none; b=fnBL92MDh3YOwGhG1z/9RlROByzlFi+Foo1jQfH/gTAKctCn7arv8Km4QrHyn8pIREkh1EY5equ2+bOmex6ZhoyhpXI/iV9hSmiRDXmRZGAAlsTCU5cdI/34mb7t2tCdbci52GPGh8hKYpKT9Md+UQKKoLnqegLTWiITGFA1C9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748884194; c=relaxed/simple;
	bh=GCaZhmq7AiRrC31MOTXGx605gFqDNKo6IiCNK1kayno=;
	h=To:Subject:From:Message-Id:Date; b=Nuzu1p85ga3uj8K2N7RypuAuQ8pJ7CYmtxUI6PjtaDjzhRJAiIjsTqAy8+VzzZeSDwf7i3o/FSE1ayZWKJN3VrwH0+t0RDdtu9TFaAcE70913582urpthOuZvTqw63SINNW4DyNg1iWVJ785xQEo9B/Kekp4bP/WYW/zhNhaom4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsRpiKvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsRpiKvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748884193;
	bh=GCaZhmq7AiRrC31MOTXGx605gFqDNKo6IiCNK1kayno=;
	h=To:Subject:From:Date:From;
	b=lsRpiKvY7neAGMZAQ53Rr0vgRWaa9kqcHuqxnKC8sMpkkeVBGU48yuZZkhXpUeHpf
	 X+Gpjilo+wD/daBTFghn676H6gSGkCHysT4HDyOc6waXhp+jnofgpAP3OotZX7JU4u
	 vzQ9pSYX/fdX7qjbVLaQvVSev4RaeHaqV8GfoHX5dKSlYTsfrMo0lSyBAZnwoN5mry
	 iIrM3j/XZ5qWhZ5k9hJ+5aO5OLLG6JEPxr2JYPbXoqrVCYuFd1x3gnPQ2H1Pzrzxj4
	 TxOPiWvd3K4QfQ0U9Rueelyy1iGP6yBwnYYEuLO2bDOw540wj5bYhWUw7eHA0lI9Gz
	 YFjv3HUAFEDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F56C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888419358.7836.2882572133846968818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1fa0b4aeb8c3e44f07b327944e553b336bbbdd2a0ad2982b33fa09b078235a
Date: Mon, 02 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748884193
