Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5880F18A6C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744584594; cv=none; b=SLQMBzrNsCyEEsKpCPhmSKpIC5yVOSpENPESYdFpP6AuO2mAsqHVESOKTVGtyi/iF6g9f5WtmtRGRJsvTi2HgvxkcnSyGkURbrWg1I8rv6snOgVuC6njW6vVipFhC6QKyoGJdtAhlZ5gbKmVRi173Cr1HhUnh0A3Fy4ira/YS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744584594; c=relaxed/simple;
	bh=xl59QKenUwYHKY5VxosDUmmmRGyAXQ3s/mozzfPrgg0=;
	h=To:Subject:From:Message-Id:Date; b=mMZ4AgclNkRIWxeKufA7IfAiRXYcw1XuJ2zlgUnx3rPZBxurg6Epfl5+tRaZXA7hvEQNAk3pekSCBeuZxpiSW0AvNCrvWOjuVrmQpbKnOnkDCH5/cdlmeq8LOrQt3AfUPjPAahwkjVlKPaC4rvyXWgx5FlJIyVqXcnRIRmijqkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFpEZbNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFpEZbNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8EAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744584593;
	bh=xl59QKenUwYHKY5VxosDUmmmRGyAXQ3s/mozzfPrgg0=;
	h=To:Subject:From:Date:From;
	b=dFpEZbNH/2wcVDE59SrKUcYi7KQx27a86l5uHMh8AelB245TJ2w2NBifSqM5w6xqD
	 sYAGjg9zo8YcV99iv5Z+hJDZLSfMVrQrLg4X/nPlJwQAh/WYbermUNkeNFo20lWvKr
	 Cy9NvtrNOTRwshnD/pkxL5EQzpdQT/UUCGxOpPhqUdl3mj/if8SQDMwFB+dkFy9ca9
	 C/u+XheHjhyEj/cnHKYI2KhjXRqygwOFwo0acgc7cnJbW+CkqlrF84pcNYD8Xjb5ve
	 /PSHU5z4eUaRPIUsTID+LnYAk+8vSOy93aQcW3bAFhhQ2LCZyS+QKwZAuopHfmhufd
	 zGG6uip12VMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8137C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458459366.29577.13685129028573765860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667baf105e55f6bc29ff56295408f8f91bd944db02ea87d80be9202d56d5f278
Date: Sun, 13 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744584593
