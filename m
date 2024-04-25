Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB313BBE6
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714057283; cv=none; b=sXu34iVR8JA137yFSzzIdr4gePCz74FskdO6uXApYtyogSqvpVcX/HfQtVWPTfNqrHXhk+tlpVEMvITHC5jm8QA3w0P4vzopiEX96ZlGMvKm7/jfNKwlGxdWfE8giHL5kCKpUNmG621FNYxt6TXEYtPcbomxSuzdGAYEHlYjiUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714057283; c=relaxed/simple;
	bh=5BeDoAHU3eO+gLGWs/cELijW3Pof2W2PsdgW+btMBfw=;
	h=To:Subject:From:Message-Id:Date; b=FzhDWzEtE+9Io3gUdu+gs0PY/A+GZeDYwg10rT/8wwhV5TpcxEsUyffw5G19PVxwFyWr5vVngR8un+syucrN4HFdT0F0ck7hfgvX0W/SefQxvmGgvvqrqNw++eF8b2G3HObALxAaN3BrevZT6Lgj+5/4lJBnnSNTvh9p9lAhiEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUqXxIiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUqXxIiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18CD5C113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714057283;
	bh=5BeDoAHU3eO+gLGWs/cELijW3Pof2W2PsdgW+btMBfw=;
	h=To:Subject:From:Date:From;
	b=oUqXxIiL8YcG96Xt4OOULh2XzuFm6kXAtixfvnfqXAdEdTnJY7lVLKMdMpXboXEHA
	 sY0s29iZ4vky/LZvbmhQ6xU6OTbZDBIX9ZRGlzikd80DTMn0QhS0Lg3CBWUB7HufAT
	 ENADAr56fRFIMDGikbcqUP+8NSGLjyCdNli/iQKWwa/UTOeyI+zoG+GU9DYgRHDhLL
	 QAYsiwVkVPyisgJDklDmLNIzUq+89lFmoHEsuWAtJFKmtJvqR0qvs6kANVTXIGNHek
	 Uz5P0ageZFrWyoneCN07ltCpOflEbde+pAZ4H0odRTITGeDFwy53UnjjPIklSj6FsL
	 LYg17sn5q1P0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA563C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171405728291.30380.10816876435096417379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6f29e2b3bb958fffe080f68231c554ff610430f56374715e620b29cf09a7ce
Date: Thu, 25 Apr 2024 15:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714057282
