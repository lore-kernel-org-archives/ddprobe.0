Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3435013A261
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725834354; cv=none; b=iRnA55mxdbcmWtTDgsg2cfdIJqFfxLH2ZBoV++JXFI+BCJKbrmq8hiHzNymGReQwkDYeW4Cj+wgoqmZKGYXzDQCBrxKcqtMB4+SLctHypXHJqLzWWIBsKxTaNEIzRWngZeLC09lx/48IaxhOHVFcD0usM254vCNHQi0hCR/wrx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725834354; c=relaxed/simple;
	bh=J8IID5n98EBKo89mFeCODlaEK+2jOc1DInTwKzVaw6E=;
	h=To:Subject:From:Message-Id:Date; b=ptmFTgvXhgrtnonR8WCyGBNgs5H/GDHRXevmED3Wd526DX0WV5/CheVnN6+o/XzDw2hu85Iu71+wF53CKdrgq2mMsE22icL6OCtoDDvlZWw8st0NeJVYuxouoS887XyY5sjDEVCQd4M4CxHZPShHXAP3BypyilpmQYJN2qauZTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpSMZdiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpSMZdiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA5AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725834353;
	bh=J8IID5n98EBKo89mFeCODlaEK+2jOc1DInTwKzVaw6E=;
	h=To:Subject:From:Date:From;
	b=UpSMZdiLEmfliAcHx0GDLXYIyjyLFSvPVQCw5ZGS/TYBqIQOWsqo2POn3BVbe7SJA
	 woN3ciHxO22VQ6IU/vfm09YS0QLJ3j7nuph3dOcPwxAn/Lgl7Og6ZpPIDWP5aJYA+v
	 usu84i3wlY5MTjyvQHvuFmeFo2OjCi9hdLKKgQ7W862vSgnp1q5msxvndC/2vVbuuM
	 H9p8O1eD+IRaS74Ay6Ib09++P8VXE4nXD5Ahc+b1GDYQ272242eKsrb2Mm1+eZmnM6
	 RHKhEk/0R3xB68ltnCKYCFMxfhDsmD1gcdHubwEMNR4fkCWj0kuvLYImwiDzyPdDOG
	 sGCAR3aXQ7SkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8ABCD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583435359.20735.7877931339822520198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4575686fc7834c885b67ae949cde062f19045df8ada94a057c2e814291da3da
Date: Sun, 08 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725834353
