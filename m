Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B52D1303
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763150394; cv=none; b=UWUorghPCXqL8GQ04elbS+pvGUPFWJPHjOiPfo3uDNNyqUkFSjlfc/TOH95++iC2db7IR7vNb6dc1PaVwpHfogWMFh/ufi/dJmRtvz7PRYi6dJf9bdpNiMSd7hI5ZBpbVVKizZsdjc2+EOEPbwFw3vo/FmqW+5SwUXKK4jnN/jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763150394; c=relaxed/simple;
	bh=VuUIFtlSWPtwiIy1SeCwH/DC/EI8N3zqXCvIuD5SvhE=;
	h=To:Subject:From:Message-Id:Date; b=AGsxw75TrTE5mkbGb1OLRTJFv4jPeGZgLablyD0KlyC70eVAGAKXbbITE2JB8I6TUesCqBm8SqfTwQH60PwBDT0nXfmjqxzI89lOEiV+lt/GtiB5+ammSG/6LO3A0j0iK7WkrPOWtjmGO5Ga4M7Fm1Rkd9xqNl2QRCgM5SRyblI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDfPngIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDfPngIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C278C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763150393;
	bh=VuUIFtlSWPtwiIy1SeCwH/DC/EI8N3zqXCvIuD5SvhE=;
	h=To:Subject:From:Date:From;
	b=ZDfPngIgodtpCXcucoz7Bwsrv5jOauF86G7rnK0a0ce4OI0y7NByWv9gVUdJxPP12
	 UtZRLHf4KuvVjIqaEk1BFYg9ws/PxHkIlHupyTY2yusSeLaSu4n2D7BMUw9CTyekAH
	 In7VfquRnNUDtCpCspZvWxFTkAZ4Fi0Pc6dVx6lHpdxSx+7jt6HgHdmuN7MhcF21HN
	 25MiLa9kiDC3jDiadLMPZrTbthe/GDhhPTmq4v2IiOgvxBY35G+4pKR7r+FQoR+lXp
	 1bUOg0YXmRI1TvGpY85x6BO+3GIB91kLJW9cniFLvhX+k0H1RaanvXGrMGplHoDumu
	 LsY3fRtSdDPTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F631CE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315039358.4741.15406882110761594268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb36b6aa9355bc12fda44035b5e69df466d5a6346babe27b400e23c817219c9
Date: Fri, 14 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763150393
