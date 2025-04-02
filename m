Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D85FC0A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743613194; cv=none; b=e08r8YVPOyc3G/+LmX17X8IRTE7vxWeYMB1bjbaXXA1ORZyRL9YbjXAYnZhZ1iAXZKBIY1He7JYjRgtOvp/tRhhYO5NEw/zj3PDXYnfqAAShT63vNzEu66JnGPXjL46Xb1C4W4+E+FA9JcxuBIcjvI0FIZ99hLgLiYdMuGtPA4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743613194; c=relaxed/simple;
	bh=g8y9YEuxTGiihP74+Sov4qSqwhFP3S3qJ6w6MzlT0wc=;
	h=To:Subject:From:Message-Id:Date; b=EgQerRi5u+8gDdsrNgSic9oDQzM02d88+Qho7mjxc5Vq9OGuTF8BflpxUUX3Nz28Hqghs2OsLdixoOB+efPIO0yLyZ98lsu25L+W1MKOzK6o697RVqJYPWwje4r6qwgNUmadAZNguIKlSbrAitw+YE4oLs+sqMslNePp6HvEeqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdvqexN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdvqexN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D6C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743613193;
	bh=g8y9YEuxTGiihP74+Sov4qSqwhFP3S3qJ6w6MzlT0wc=;
	h=To:Subject:From:Date:From;
	b=qdvqexN2MKXL3PRCiWILU6w0V+kxed2RrGu+G1NGGHZyhVQ+4pevNxrRcfAPSRdFp
	 9ylUWm1PkE7KuG4djnpwRQ3VTSALFiqixEOhJw66SV3BjbA9lSrD7iTgaUgakCvxjj
	 ls9rLASyp46CfnrmHsJqsOkKjr8nSL0VqvygbDGeIrln+VecAXVz1jdSl94zJbfrIQ
	 3hpWhE/nJliB43DmaganvoPBkWenOZJMeD04wLz32KBo0afX2CKz6zfU2x7GG8eKb6
	 XlE1r3sAaNCfuYWkchJUegQj4RccPcdrzsIMTYxGC6RzYUTs94gAvSSc/lVzZaSTu1
	 MGyQpxZMZihLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94476C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361319358.27016.7571427350565474664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28658287028affe51a5bfe32546941d7cdb6d3c8d98dfe0a3dc770fa31aa68f
Date: Wed, 02 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743613193
