Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BE230B53F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787779234; cv=none; b=X5UDJvvbCZUbZQuu4ya3Cy5mLjoV4AICOvZOuiPrVVJJGzL1HF1HzmXbfnorDk4B2I5kIOyJAVvx3zLJkY1DAdPiXgffYl8PV4hmAqLDNpf2QQ534Id3V23uaA/nN6NWkAP2PLUOI9vSyagAoCARJh8cKovfTE9Tms11tpyP8X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787779234; c=relaxed/simple;
	bh=Klcqv9sVt7x/5wOudSngOBsKYcKbwDaesCUGjQ4ZGgo=;
	h=To:Subject:From:Message-Id:Date; b=XzZAFj3r8G6MphP9gOwTMdCA0sgfQwPqFYNPmk33EVjfnF+LLpZyYcFN5RljPtLnIn7BVVE2yiqSn04gwtRz55w8/xjHlJGYwtGn5OifJh2Qz51f0Owqu4iDxOybPX2tZCmjqlH6mVU5ml3FBjNUgw458tas9Bre3Juq+iGWCoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLmV+Jhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLmV+Jhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0DFC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787779233;
	bh=Klcqv9sVt7x/5wOudSngOBsKYcKbwDaesCUGjQ4ZGgo=;
	h=To:Subject:From:Date:From;
	b=NLmV+JhnRoZjFTnyHweWESYODbGsBaXVc/Zo+aemJQSjeUF+AX5ARSHAM8JoMVWXg
	 wU5DPIXNMyoeVMBoLsKpgtCw1AJG2AVrDMGzs6nbRG5XsXHkhGe2+Wi435/r4I4N/d
	 d08u1jHuEPo4OOj6+/y1ZwyDyxVZfadvzyfk4NBMI7VMSK7lPyEaphk/9Vw3boAP+G
	 4ezCv9draUr+CxxC4s9cuVdQCwXed6or3dZU1Vlre90n6co+i/ddMGzwR7xHYGapa5
	 wMh+HxL6H0wMSGKJbZ5uFOSzgrGW5gLWYt5QsPJU2Mq9NTYv77f/vEExblI+XjLnw/
	 Bo6bDlDjFWt2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD041C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777923369.19342.8653365639499075504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463d89cae2db66fdd9645d772c36506ee58c8fd9782ebb9eee9ad70deb3887e0
Date: Wed, 26 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787779233
