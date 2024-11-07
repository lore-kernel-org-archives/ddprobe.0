Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183AD15E97
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730969154; cv=none; b=ugIK4/PtH+ytgGWhdNFmc0U3h8vYZb6JkaA370kViot2CeBNXcUzFjk+K01h36eSeJHTLgiQh6QdaKqwxs0UNE5Db3Q2C2KQfZbSu6SwtuWQU6e4Lmn9Ttc20QxRGMfMWgOJ1IhB+VQIVeue0ETBw9mqv98aFsTxSyz4t2gOTQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730969154; c=relaxed/simple;
	bh=JvZBcXHpBcCrMPDmuKnblDfPq3CyNPxQ1rEJwvL3ATc=;
	h=To:Subject:From:Message-Id:Date; b=Xnbm+tCZ2At97cMJxhXmPRfYz1cU7Eb8UfgciUbeECArGUpsXhHYO+psrHW8NSWNVfOFaTzr7XO/EyAe4yMhd6Ylb7xInKdutLTSjrg26Lyu4j/DcJDjVQiUBMc0lkXScFE8n2T1pvfWAsEKTw5S+oa0CV7suVFVk6DGNN4mko0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYQl+Ipk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYQl+Ipk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E4C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730969153;
	bh=JvZBcXHpBcCrMPDmuKnblDfPq3CyNPxQ1rEJwvL3ATc=;
	h=To:Subject:From:Date:From;
	b=mYQl+IpkLCy63KqrBZ+UQqzTEt1OoH3n/NdKUzl/ocGMf1kGpvzuD9OooyVi1Wcw9
	 6eRYOWJ1w7I+fXTiyCd+42YDXmljKVgiWjuPU7vLBk8vriw7nw4cegtP0IvSx03lUL
	 1AxSjGO62dujAHcGJjlAxdukAHA6/l7uWZFPTJ32n8eRtkqhzyt38sLVKfkCfklnJj
	 8Dk3P67+MRhu3fj2bEj4Z01dDlARBiJXnwMhPEmQUpl7sFItQawv7Iht+A2RfFbxck
	 9Ec6y4taHsx0TeSgWZOxMXI7UVJN5/zWJCbYR9e8bUp6+AxUgBVrDxriY9yM0bQ/Kh
	 g8MKR3V/n3B7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C0D5AE73
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096915358.29746.5544432529860840427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81c20406ed883fec767aeb740694035eb0e66e3e77602712a7b93039a6841a3
Date: Thu, 07 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730969153
