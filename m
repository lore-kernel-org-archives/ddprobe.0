Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186B17BA0
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714615943; cv=none; b=X7UveACQEabKNwCjZQL9Xblm7h6Uryou04aQNWhbGbDWmajOo38G48WS7nmZNcuSCFQhlVy3Kk6oZCDvg1hWjq09XC5Tx+OSYqlI/mq/F4ZeVGnrQmAgtVwcN/J072+Jz/Q1swIKMLZ9R84JMTTIcAGaiyg1iAwbX7lENyD7Maw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714615943; c=relaxed/simple;
	bh=6NYG51HpxG7jAcoUC7cWaYz0M+qi22/nHrsVUYnUZAA=;
	h=To:Subject:From:Message-Id:Date; b=ZhA7pB1E35LQI50z9E+g2KjMOjgo2RX1ThYviHfVQCL1Z1a8lwRXvleiRUaavXRy32jNae2BFCp6HmCBzAbZjBHOh9G+mqG5jEMpZKf25BUeGuhRC0HlFFN0vB2VEhB94aHaUk3qX1t/nhuccM4McjGZOqjPpjIpDr66fl/XiD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzRpYqHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzRpYqHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8622C4AF18
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714615942;
	bh=6NYG51HpxG7jAcoUC7cWaYz0M+qi22/nHrsVUYnUZAA=;
	h=To:Subject:From:Date:From;
	b=KzRpYqHV/CmDaJs8n59mimFygtuKydOLeDCXNcLiI/J0E0hw3hW+EfD3CCysjs3Iv
	 aDnRER4N/u+nY1GcR0mqOz1kGNdQ4Nd25BfyNtk57YdVTs0G7XsZZDoKASXaNGSbzW
	 9Z4z26xQDBjmssYG1T4SSkS7rCumF7K2JRtV9ngnPwrpigsPmS7/mtPBG3Xhjik+R4
	 SxWBAMdrj7y5gNlQRj5Wv1m1P/LATYIoN6pa0ALHBPn5vSrORRapv2i4KBwgv0dlGN
	 3oFoPoYrTTugp2gBBG1zUpFc0N91/V0DF2AHBBgEqlY6uqzCzv25vVE9is75dtKtF+
	 8zpkbDeKfhNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AB3C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461594277.18384.3605283567832269452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef6b598f8d61476d588f485c95ee7d56be85a89f6e9238050e3549eed1ad0a0
Date: Thu, 02 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714615942
