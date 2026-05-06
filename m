Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F22B48BD37
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778083654; cv=none; b=hCQ8Ms+no3y0UcpyhJF5HO1NN0pZetZIEPb8eVMYpoyP1eYeqNYZlycV4iNt9iXcIAw3SLn5Pwl/arDm4s+EY0Bz4r+gAgDQ4CdIfzZe4TewBwBWC2Z6peRpCLKivrrvG6NqH9Yx/nvkk/A9zKvDqTzq5Q/8EvEVjc+0qU8J5Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778083654; c=relaxed/simple;
	bh=KaOtslm4QXSFFuyLYQon4cu350osSOVb3ZwVkzfy0qg=;
	h=To:Subject:From:Message-Id:Date; b=IoLw+htSam4B+WyRhQHu3Jbsu8FI6AAUlG9ccioFxXe31o2pkH2PizoRH+Y/uvRAxBrer14lSp76mT/KM3squG4GB3+5b4KmK9U7hIgPqy49FW1aIpR7BBAtj8MqMlPV7mi7VGOI4+FD33ZPuabgrCJ8LMaJV/TFvn2n72Hgc3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2GJJZbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2GJJZbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9748C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778083653;
	bh=KaOtslm4QXSFFuyLYQon4cu350osSOVb3ZwVkzfy0qg=;
	h=To:Subject:From:Date:From;
	b=l2GJJZbHfkurPzIkskNwDA2krxtJoPHEHn7eb9fcsKOV4jWKhPZyTPDNRcszubODV
	 kIfAA6DFBCmiZROg4Nhc4z5iuLfNoOtJ/Z21Ih5DWdUH2Z12V43LcQzuMfaPuZxepE
	 v95SLruRrd3X4gLbADTeW8uKVmmT67MUL0YlgrbDqQ77GTuogl6U8vQMMvK4ABCo+D
	 65cH69FaFC4an5wTDLRjNSswCZStm+wJnsx7dyung6esd+6iycpqKbmPtRF8OdDiUb
	 TRzqoY6hSRz86MYeqJysZsoi+1U0JS3ysrGKaipy32t4hP1+aU7c4vyrWTivtlMbX6
	 3mgLbOkJ/pOYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A8CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808365369.15807.7746650484264653686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cff40511847cb1bbfb049ebd57b56d4f5038501fe0aedb5194ad6ea579d9878
Date: Wed, 06 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778083653
