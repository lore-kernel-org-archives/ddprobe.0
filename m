Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1BB2F852
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738433154; cv=none; b=SjrjLqAmKL3kC5Qzu307pfRawwfz1OCYcTO1x9tzvkiXxQJjxRrUdWB7Rp8BcsUOJ6elWpTpwNh0IoNEEgxnNqrEf5erqOVa09r1V5rpMtXmf48MRS/liMCVxyvQLty/WTNF1fjtNc5xl8VMBTFsAWnooO3T4kX88vOOuTDx/YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738433154; c=relaxed/simple;
	bh=Kq3Ijzp6jald3TQ3HMEQxqz+QjjpDCt/+5+F2pBY1sA=;
	h=To:Subject:From:Message-Id:Date; b=n+lCH2iNtNtPnZv4pNk6JZ/JY7ex67Iy2Jv57dBg7KqzyQA8GGHmFrlXRkS6ztpg/k0vd4v+efL1Qk/Xpf/RcvX8kiWovbDLaaDXgW+7eULCux4yNI4nyhtyHPIPvSs3w/QFHf4TrdLJasPAuaOjkWnpNhCscHKLOJF6yYiw1mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRg9sexn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRg9sexn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE62CC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738433153;
	bh=Kq3Ijzp6jald3TQ3HMEQxqz+QjjpDCt/+5+F2pBY1sA=;
	h=To:Subject:From:Date:From;
	b=TRg9sexnLPuOYyVWgNSk+EqmhuUJD8WSYe+zTCX9Qq1HweJK5pB8CrlkA1NCtTX5t
	 5iquC26pLT4PD6UC+vAMkKXExXTiekRLb4N4i4pyQlc6d4C66RyeCmDPXzaHYBRfN7
	 acs/ATeGfcLv+p9iSdy8X4GXmUFe4dBk7JRkAhvyMVRg93h8nCbTZFkX6au4145GBA
	 vb6sE2rKPidbRw0bfiRElHu+PFFHtr6PY0y9KrOa1NYcU9EL3Ify3zVlTMW/jPjCsR
	 1HKSn88RFlBA2IWWG1Xk3g0OswiKBqyOkHCiVADdiGya9Zl5550kTikA2OMEAWAdvl
	 MgLcxwoJZ2I4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD93C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843315363.1955.14025280379357851535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839f14ee794e26157f8a584cd69793795e62a7f0ac61a6b2db2cc7e129c312c0
Date: Sat, 01 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738433153
