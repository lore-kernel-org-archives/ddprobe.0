Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0CE36D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736382354; cv=none; b=irQbsGVyXAvo7PuBjp30FhMFni72deJXEoMvPghBspf3Ata5tw1t3TPwettM3EqLn0FY2G0EhTX6D7kGMFKD3AquK1Id9z/cV4R0ytYIvgXX/KAhChwf+esUqgHmu4NwUZrhAxyYUxAzMbofsJmZ7qUvBOKbnSyi/o4Fic5XAHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736382354; c=relaxed/simple;
	bh=nIW9PfjnkC0LyxfcO/eNmIVYXTwQoejJpWZdoSQWM1c=;
	h=To:Subject:From:Message-Id:Date; b=C6klizVEcLfYpKBR8TbmYqD+I+BnTPw7HbyQs8uK7p16zewiCk2jbNQ0mDqw/iSUTl3Cite+SnbGm8fhIk9SVDOkLuznIO5LKPsRmGyQbgoIXPZ8vFSqg3uBRU3ju7onC1PJH9y42TI8tbEfjeTivK0hoRCk61SkrqB0Wm5PMGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRwQWzuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRwQWzuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98CAC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736382353;
	bh=nIW9PfjnkC0LyxfcO/eNmIVYXTwQoejJpWZdoSQWM1c=;
	h=To:Subject:From:Date:From;
	b=uRwQWzuMQ2zlywmmeNK9J6M5pz8U/TdntBnHCVt7yh/TLNgGYH/ob6DOe5URmWLbK
	 VySk7J06IJWiEzb5pAxx6n13urHvxuvOnlrcdRAZQNQGRGRbyozvX+vJADKiTOI2ma
	 1hk30bZTJx6wSTKd6ARy5+pocr/J2SovJdOrsO57Owvm031zHHWs/Hur37B+Vi90/T
	 WoNIa2bBVQp1b5MSv87gTm2hPAKp/MqetbZVmWsXBqhCIvRXXEfl7dfhWOS+hI961S
	 /V1BFS6zLush4qnGoTST0Ue7r7JZxNER3Gqu8EL0xjQKUDs6HFUJBiEIeAUT5dJgKu
	 8HZw9i5sljqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93955E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638235358.8898.15166251934338797300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f40afe0f03c177946035e1a5f88f87dda3c7c82eafb7cb62c93e68a57b409b
Date: Thu, 09 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736382353
