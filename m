Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A87F1FC8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746667794; cv=none; b=Ro/BSDDWQPCmbGlc0IC5e7RRd2NNrAi8nTdkbRyOXFzl4oC4gWcHFBfGgHRHs+3UGg+EZt5Gz02mn8hMXrfvSwQnusoh/WTYl/fDLv1ZDl8zGpWAAVCM1sDWtEdZBDM+TC/Wu0qjslsW5p2HexX04FL4zec9xrHGkg3WYE9vvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746667794; c=relaxed/simple;
	bh=j56DzUxZSBzsjISZskSdtObckqdRpOcH9EwdQ9TL3pw=;
	h=To:Subject:From:Message-Id:Date; b=EhHQN6nAY4Z19J1o2rkBJG2mbS3DdZIKndlMIoXfWUJlNdjLGyEZzssXA70tttHs6H54ryF2v6jVQjH1cQfkrxXD7QccqB6e0kC4FdgiVb1ukxCAd39ikSj0k+8urEgqf1AS//2vAe5uuPSs+liBZG/gCLOeb0mrgFpjKdl+veQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5mY/PaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5mY/PaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F68BC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746667793;
	bh=j56DzUxZSBzsjISZskSdtObckqdRpOcH9EwdQ9TL3pw=;
	h=To:Subject:From:Date:From;
	b=D5mY/PaNg6TpElgjP/UN4NndToWJDB961wFxd6yhZ0U05mXlxXKr630hjPAVfcMSH
	 6DbiADLeZvjK9wMCkiGwBQvUT4FCCZjjBhUY9qBA3HuPQKAKvV4/91ep347cDzYhk0
	 S4wfTwNTMnVmMCmEAi3xtPiVPBj3EkZd/rATM3TZrHMzZaAs8mpqcsRPumo80AfqR1
	 fhQCAodOpF3yJOoYLPMK7xr9wCkDNGIzGAg4h5VnhNMTcddELADGo0SX4lj8mlWboC
	 Y/3/1G45BD6sXgG5yK+GmGGRSELWwbWpDq/PxF2Qs+fltZxfQyLLlFi0yWD39diT6O
	 4bAkL3xotQabQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD3C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666779357.8201.12569491926695603644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b501f30e277faad6374ce36335d0083c0ed0351761e86f1dd1012231db141a75
Date: Thu, 08 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746667793
