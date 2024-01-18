Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108118BED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705557497; cv=none; b=ZjUGnbTRu1DbWnRcwWz6T7gTKdYzN34iEJkSLMWMF6T8FAoe4RlFF0m4y66ZxohnrhVodbIEKdjbzqKhCN+IzgoEl1bCorfLvX2EtNMEiPnhDfhzOhDeKTgtJ3Lvcrpr/l+62CXysz3rjUnTyzikEQfYPUQOJJgz7cCoejEifqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705557497; c=relaxed/simple;
	bh=Ho6r467odTN2uMeilyvWyn2xpCHFCccysh9nOjGAaFg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=CGZTks9XQV3Q+BeAvbb2Zl6+scZP8rl1xou9OiHrhQrL8C5AoaeWpNB7E6oqBPIcpVAPf1+HjGRVUkVNCX+W3qpGvnT0Cz0d4vd6DIkpnUNctyFs3HyoA8DEkZnI/j++EDm13HNmZ2fhHhAzuzaa9GeWftqNUc5rPRtUl240IM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3da8gb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3da8gb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844F9C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705557496;
	bh=Ho6r467odTN2uMeilyvWyn2xpCHFCccysh9nOjGAaFg=;
	h=To:Subject:From:Date:From;
	b=p3da8gb6L52nqqxdhDOhnIrjY364cK4DoIXWNrN3Jba/3waog+1H1EtrCJv8f2poL
	 BtQX63C5H1hkB+Pyxs3xkET7DcJ5tPREB6lUmod91mLo/8trtAePJF+cWaJJTddEXB
	 0ekgULJhL5B3Z9/xNIZx992DPVfoWR0BJehJ/8hIAkoN4r6jtcipN7+v/axrS6UD/0
	 pkOGt+yMLtOsOQBik1mKwpY9yUfT/oDizFD5OyxbhTI49lmtm5XSJtFuSWkd5PsyDG
	 9n5cRi8tEHh7MsvNOraEyfKSkA8EoNTtcB2kAfOGxtFZcEeWMO6kWhH3vOCxuS0qKv
	 m1vzfz1Ajk9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B15C47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555749639.8053.11062762292694080577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ea95cccb7a23217734c39feb4a8bc11d914caca508ed7cd2c0a5ec2da60505
Date: Thu, 18 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705557496
