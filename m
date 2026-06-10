Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57849194C96
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781065534; cv=none; b=pw7EBH/decPKS7QANJQDv3W8i8mAp+95h1BfpAii4nENngJKkuXDeJ/CNeh3jnDfzxrCGHO0jAL/lC+xEZ6Eh05Tek20LakY99pPe6JDUKffRFFBaJxNDXMQMwt9bbG26qRugvZfRrPdw9SCnxZfPDcuSUODHjSfZaLDFulggkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781065534; c=relaxed/simple;
	bh=CHQDw1ib/WHTD08It6ab/aMx+/8ubWOZE40HWb1zWE8=;
	h=To:Subject:From:Message-Id:Date; b=YCpzTm7qwH4J32Kz2GVg4F9Tf629ePRF8Mp4nZ6re/OaT4jFp2XKgmoqB6lBJTFUxmvW4PjI8kMYxjXwNyBxkrJYVr45uYyrWUcKU2jGd+6DC4KFXrexK4nRbwPG7Wchp0QVSh9u+Gyoijqpn/FWVnLHzWxwvUzqZ75WSDvG2GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPvnkdWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPvnkdWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85A5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781065533;
	bh=CHQDw1ib/WHTD08It6ab/aMx+/8ubWOZE40HWb1zWE8=;
	h=To:Subject:From:Date:From;
	b=aPvnkdWqN3h6jxhBFcj33iNSnbk9FesRp88/EO05QrpgJxQgealqk0CCc2926HCuZ
	 hosVqzGQe/pHzWQ8ToABi1AeAgLXQ0eDkhCyZYpj+XNlGx+OMy18zMTNRDABQjMgtz
	 QoE2P+gfwJLO2XX57mdsXr0Gym4NYqCn07+xQtWY69B8QIma9vEMv74wyu6JFPLtbo
	 eaD6m+Th+lCi+s7X1/NJdO9vtXIXc/Iv3vq4F5MWc0X1c8+rDs5/Rud1P+DvbW+mWC
	 pbUyyT77TxBcF0+zKpeEzUVjbYJMYrh4TGq+jqdbCTbUnXV4xrWDOi5mLtoxKrrwsf
	 AtszY9BE+cMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200ECD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106553369.24112.6278432004225946621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b4c1b33da1a8a601799b8d63438c6a83b61442a24a2aaf6fc420065fcc83ef
Date: Wed, 10 Jun 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781065533
