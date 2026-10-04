Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6793769FD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791121834; cv=none; b=m4dO4ok1OjW8Lj3JIk0bMi3sTZlm1rfPJ/gPaqAFXCKCRHNcfuDObQyP/v+tWuRYLzKR9cTR764GSia0sTdNq7nmWGm2oAWt3SZhQ5yuMcU9PSVUFNQUZbO6d/9FP4KlALfs4zKU/ADdnfGd4hIdCv9kWlhAuX6FjBimNQ1Agv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791121834; c=relaxed/simple;
	bh=uPVzSeBJVupEXTV6NdzxLmdOSRAYp2uG/d+DoQkX66U=;
	h=To:Subject:From:Message-Id:Date; b=YWzSYMhuYXsrA/HYYPzrxPyeAD+Lk7YARhLcDmAsrhUUHrZcLCxkXlG2kGqvMPU74mIFNy1uSP2KADoTX3aKN8RV41fAXQjY0HX9YJDmtpADGZN5TEQU16tcs6VRryjYAU1IhR2OLp/eQEM60Dl25TNAHWpvuw1lfsn+4vIRc0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2Okl5Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2Okl5Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791121833;
	bh=uPVzSeBJVupEXTV6NdzxLmdOSRAYp2uG/d+DoQkX66U=;
	h=To:Subject:From:Date:From;
	b=o2Okl5XpRRg35gZRe+/XNeWgvHdcId0LLaXL0BYaT7sbabD41jDTZKmVxj4OttgVn
	 VW5LZ6Rebv9SLLcjCXbdoB4VK8cX7tone5QcF31HAwh3HiH1k2+D6EtPtmy4IbgKjm
	 tt1DFancq6QRnA6IUD/5Q6I203BvkxbFBCvi43Yg5472/tIa8APm1+z3qO4A49Emdq
	 VNgHK6HKEsQV/8X9deqHfo1a4t7fPWl2B6egfivraeu1PrQBJrNHi8lqHy7/aTKytB
	 r5I8ovTFRP4dN4B7ShCZdeyhkNdEh1wmHJKnA9UbPTIc9coXpeDSXCeS22/FvuWIz1
	 dRbqWZB/Y/fQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B1CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112183368.31407.7811585867737163122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddd38d821d66cd49bdef64068f2de04375986a573551f2db4d9b34c0be4e9a2
Date: Sun, 04 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791121833
