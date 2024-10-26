Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26903189F59
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729982154; cv=none; b=cm1uoaEL26r+oRC8HBI2hIro4gdIsT28NoYCTtBF+syGY3mZikQYBJrQeE2SivartPISsJpT8657v1IUPcncD1d0cvSf+iHr/llyGCswjXYPieDfwSSsiV5ZGrEVwB3YjEYsaiZPac+CHAekrPR4uZgQ/HZEG/j5i5sMTP3gFpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729982154; c=relaxed/simple;
	bh=F5w+LK15XtiXm3XEyFUfmqFOOQ0hhlGUmOQFRqxXuHc=;
	h=To:Subject:From:Message-Id:Date; b=jNIlHYBf2eIGBUjsyFK4YKmTmvuGWjuPmasF920cHV6aRmvBcQuZCRvPTatB0HK6GaqGGivc4gWlyS7v0T1dx5rK9fHVeFwtRmF3rRV+7UYGhJ2If6yHqOP1xANcDEXhUCpIQwoRCNp6oPyTyQ7G3gSpoQ0Ma09HZEbouzwMFww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKoNU2WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKoNU2WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B5C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729982153;
	bh=F5w+LK15XtiXm3XEyFUfmqFOOQ0hhlGUmOQFRqxXuHc=;
	h=To:Subject:From:Date:From;
	b=DKoNU2WDLTEqSmUR3IDxauYOkwJL0rYZkSbHGBWCRonUTxu4CUCoEzo23oQbuOK9W
	 ba/wPaSmlBB7hx6cGr+uY8lTdcQCFJJ/tktOVRcAfJJJVXpMm8iwm0Z5R0U8zRed9W
	 uFimMfU2ffsd0uLOSM4/VO9fHuWyb4AU8WDVZSPym8q+9gEI5kjc1pddlezc9g5jMS
	 3t62sdwiWE8imT54xbYHuumtMVtbVeK0a+4FkpIWiLNdW+VR7B6FFqkkukAyDPafUB
	 0+xcsa+p7kbUq3ccEEEdL5pbJFyAF07AGyKjGRI0N60IF7JGa+KOb2GjeDHkXKlm0Q
	 7Ruf9jJx1h5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CED10BED
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998215358.16694.12311004107179914037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbddb39fbb7ee556e06e0d5b92719197122dee418ba972c3b26d9bc627ad156
Date: Sat, 26 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729982153
