Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D9F17993
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727915154; cv=none; b=VMSxyn+jzEffynhW834pt9buwoz+dmZ1YwIyz6AuwDZBlF1JYPTybJYokKYwgWEMsmhXSE58otyaEE5VL0aBIO79BG+weFniAFdEbieX3jTb6kMDRJR+YUxZSbxERWPTk8znG+xD0rqCO2zHrWhIO9TKE5pA2oRYKy/ilbA0kXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727915154; c=relaxed/simple;
	bh=nj/MxxGqrTEA/FL2gVgI+h5VjBs2Ik54AnNJ1tt1tVY=;
	h=To:Subject:From:Message-Id:Date; b=mtrbmeNEtQom4Hl8y8B0Ynkmrxz71tLCwEvl5tYEVor1S/LXtB3RpZLw1H0p+MQNAPnQdytsGiSyEfuYrC8nhAZuSvagSM6hGcZkXqNZ2+wOOC4LgXBJnOW2zpB8QJBS5xkq8PiEag491vzeY0d86mUmB9VrZkm4R+Tor//xxug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq/UxTK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq/UxTK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F66C4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727915153;
	bh=nj/MxxGqrTEA/FL2gVgI+h5VjBs2Ik54AnNJ1tt1tVY=;
	h=To:Subject:From:Date:From;
	b=hq/UxTK7ouLmS37LDMZhVTYa3iWbQ4/FFoVFpcK3bFXoIDtu/qeb4OOew0KownNCc
	 Qv/Wtv3DY9q0t/qmjjlcGmLjaWtDn3+8sgCiNVFndoPGpU5k/KQ/a5YcSQqyKkP8sr
	 pso/qM5F5gW9H5exoEWe/fc64HL0Meh/Jo3RBUF5CkjC1wAYu+6P5rQpC6Os0DUCsn
	 E8BhkC3/DYEVaDOWvlrVPeGbMPjzEO16HjAHU0WHQMvDGrNF6Hvhd2PwctroRy39jn
	 ZdtEP2i9kR9iwlMMU4wiUenAeikkEAxxG958JAPR3+8wx41AAhu7BV5b2hLWO2tUPC
	 +OUopDJ5rdaaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E0CF8549
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791515359.11397.9087136828946216219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b895ad0822c89c02f802dcbb37510177b424ed7cd738e1e60927b4d75ce9705
Date: Thu, 03 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727915153
