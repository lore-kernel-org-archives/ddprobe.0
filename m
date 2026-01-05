Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B87B1AB6F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767630834; cv=none; b=ac4BwjhP1fNtGNfQ9fy5Q1fWKHCnph3/vF6x+8K6x18KJIfwv5sIfes1bgzu0dCmEVoTcvABOmRVA/kifdLRJv4lOOvKxYzKGXR8G9Hi8eaqoVTT2xC/DRGQbnV3X6FPiLzidNjS52rRNxVn6ICayye/86t5Gb2XPEbHMMfgNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767630834; c=relaxed/simple;
	bh=Hw6cK4Sk8//IOHse6ZBeg/YyKMAF3N9Jiyk6Q+IqnNc=;
	h=To:Subject:From:Message-Id:Date; b=iP8ISqMwRMeFJkVi+MhdC5k9oLjZ7X2rWvgJ3264mJl2kK6mk5q8DyQJI3f5sg9imxDg5S7HGNg/khQs3Q0t3swXkQ5sCjMoytbBgqBBlM5TurAoLulEoG+ic0xsuvgYL4gHJKLZv2Y1jE8KH/Twnyo5As4dV4Kn1IcJAVIxhEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNPigKH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNPigKH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19EEC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767630833;
	bh=Hw6cK4Sk8//IOHse6ZBeg/YyKMAF3N9Jiyk6Q+IqnNc=;
	h=To:Subject:From:Date:From;
	b=iNPigKH3Tr6ieMZumC0FVOs3Ct/zNhpkJzoESMcnBRUHryc9L8hJHtU8RyIz9u1sJ
	 PO/uZBAF6xvhHWs4ynwCcikrwVxDLCm05OuxaO+jggquFYSiRMIpPRHIuA9OUHcVon
	 ICIsQMRaP6KhyJ7fGKDbiDPtup8dWOHdsJd2Cr6AKgubY9TD+360xylWc/t7zEGSg1
	 ZF/deyELSsQnMgK8cPTRjeWf+0nuy7b/zxIh8ugMoUYtNH39OgTm9S2MzcuTIWQvJQ
	 qnF+PRUAYpLhdX+Jzz8npAnApqJvRFML7ccRfIg1zumx9C9bH0pVrQnRmf34gESM1o
	 p2W9WzKMpPFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F3C79FA5
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763083357.23951.5050337840409474782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fa91a9730f40151ce1f4400905f8e6fa156008b383a0574339cb849efd1a2b
Date: Mon, 05 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767630833
