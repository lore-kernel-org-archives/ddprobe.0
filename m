Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BADC22A7F9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745561994; cv=none; b=fI/vXQgolLD+ckWYA/y00Pg8CMbUQGY8nsA282vxzaHRt7IGKuIR2Qx7o7aVGtxoqD4UvsVOBNAujwSx5x/7JQj4XsHVnw/Aq7zDA2DXwY93BeA6vPNYNyLZ0o2dyl7Dd1V2Jb+1/MuzWFZxk0Df9FM11im4Jc54AaaEJajb3IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745561994; c=relaxed/simple;
	bh=RCoDldD2rvZcfbjUAUqkpActr0yUhsy+8e/EoLdwfSo=;
	h=To:Subject:From:Message-Id:Date; b=UDyGv+kSimHazJjY2xN8o8XXC3RWDg9YIG7t49yvT2/FVjfTFToRJi41xGWREQBVv6qQ+GabwnJPZH5/k8X9B20/ola/H+BCZl8wHS1CPKwA3hvK6r3yCUETfa2PN0u5aucwDqDZTNe3YpgMfyGWepTsxzHQ9Sx/1La7okHBYbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFtIk5pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFtIk5pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3848C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745561993;
	bh=RCoDldD2rvZcfbjUAUqkpActr0yUhsy+8e/EoLdwfSo=;
	h=To:Subject:From:Date:From;
	b=OFtIk5pD7t3KN14WOz0+Jrz60Z79CEsMAl+3UG6mArKBjteXzlKg6KDj0FRHTEFVK
	 3AVKNAaYoncCvAUTNbeAh/QqNsI+6v/6gUG6c5WFO3I0hEVZwhB/X/JaqqW9Md+ZW7
	 nCJYj/h+kZiiyeT0sm0SE5nsfwtS8GzUIcRsBW/ky0blVXf7NLdB5i5qj5oe7+Uoqe
	 mQBDEJs2QM8JedMrJDdQRW9hR/HzjnOgiEYcENy8AB0yrjoZ0oktzBtVRGZMt0igad
	 aE/hdLGkw5FKkBlcK+REp1g6C5xjUjs1U3fIR2k5Yba3VGPyjyLrSBNrQewB/WTCvn
	 cH4owVwyQBQ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92767C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556199358.11292.4534241893801780658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd81037e69896e19e6f1c5e3c9d8f297638455939e58690d038a6e9dfd4de05
Date: Fri, 25 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745561993
