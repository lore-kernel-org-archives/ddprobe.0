Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F21F1EB5E3
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765073574; cv=none; b=SRv8QiixAKQb1ewijCnYUztZQK6bM7fSTkMhdQ0yNCoyj+tx7YWlcjd476hKxN8CvgP5h7YUpxSAyAlnjwqsjWBzSjGZZzjgPD1jKGpB60lBIRxGo5ZCLXiLloOYHm9+xiInMiirIlpVTSvcZaJnQk1k9x5T+lBZdpIE7vfYws4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765073574; c=relaxed/simple;
	bh=yps4eFHlYuiU4nwzYuCSJ7J/w2i51eAC+6JgPEqUJ/A=;
	h=To:Subject:From:Message-Id:Date; b=XvumjqmMhuHobV12fSnfUfCLZ8BExMu9VDfQ5BTb/8rHEMXW1samVo4MGiM0NFEhjBNvti3ZBUlvk8P0o2gC1XZKRv5Bgrvwk7Qu8vbhI3fJJQEcoECu2Rn9YkLd2Ux5iapwMrgF6TqRfCEjkgpMQ5V/JlkEG8zBh1fiPqq2Zpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1bp3ByA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1bp3ByA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE029C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765073573;
	bh=yps4eFHlYuiU4nwzYuCSJ7J/w2i51eAC+6JgPEqUJ/A=;
	h=To:Subject:From:Date:From;
	b=I1bp3ByAfnSIFt4iko5ZHQh+yBx6DUv9MVobUYUGPumwx7JqA8Qf7X7fJzAzieE7Y
	 iruwaVpQ5A06llHDspzNNJDRN9g14IjIogvAaG4t/M03+ZdAg1Gl6iEs3rs4WQCcvn
	 WI/g2cNqLvOTFwoeLTID0MhkyeWi9BJwpRbpYRFrKMEWa+ClLlGGPT+lWP6NPozBii
	 pkqW9OsppBMrqYTEJYm7Aw9lOnVX7lqUAX+4JePkgPuodApv7PdTX57y+rVXAxppUD
	 IM2saushv25Ojo8TOACxchkzGFmYt4bJD5aOmFQ/pzH+2pI3GbVW9I6z2tSznOpM/T
	 ljXXuMaQNDSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D2D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507357359.21365.13109573150816272265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fab81373d55f4e4e98e889eb86eb506ccd1eca5cd989490a89660042c639f7
Date: Sun, 07 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765073573
