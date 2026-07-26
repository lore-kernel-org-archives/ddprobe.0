Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511E83D47DE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785108034; cv=none; b=jiHxiaLvnazfgMNQ/R9Q/BAIqAN/sZFwIq16pT09DN3ahjhYEoYZgNJNAVepEJDZCg+7pijSvzcyXvBFUaILmH1oTYanunY+ByddK+j77Z7vOmm6olRGnJ9PTxqQsMq9g7orXzggBklngwU85XN/geVkTbJGA2lpva8N6K4drkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785108034; c=relaxed/simple;
	bh=UcF+lixdD2Py+6mmCC+QjH9h4QBSJ+V9kONqOshHjj4=;
	h=To:Subject:From:Message-Id:Date; b=S0n10UPDj0I1bZB0pHLWxM7XrsRhu9/xAF9+839rEu+P8u+xt5QiSCCrEP+oDQXDNpAUO4WbN0Q5x2G4K7iM+16H8fhFZC/j+zkML96tvQa0bBPofUMzcu/xKFBZcOQX4rjtIHM+i/CjrI6mNVpqhoFVKsY4yfkPHq4BUFpcSjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M435PdIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M435PdIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06B0C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785108033;
	bh=UcF+lixdD2Py+6mmCC+QjH9h4QBSJ+V9kONqOshHjj4=;
	h=To:Subject:From:Date:From;
	b=M435PdIur3fzSAraobPNstZnFgIVdbjY712p/0hF2acYI1hUu+Edubf27S5E3rFAn
	 y2ko0W4P8S6Us0cDxSoRVXssAhTI7/FVl2z5VYhKacc3dOgRyVwa2iLVZzU+n6yiIN
	 3idDr5o0EAEdjgkQ07Y1HWL49CtjMF1EFs37jzijBZzQvIaRx/X0jhtpPEpqbWvUOU
	 ZJ+tUvfHbz8vqiDN540a239uSE+bEly4JKnKaNA2KX27boW/SOBhKpLpVP7DweTj1t
	 DjKVEiluLW7iBaK9YArPE7N2afYH1HdKX5bRsDihQmlwu2mKxNEt2SYICwoh7b/F7r
	 hkt2YrVHNR1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE8BC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510803370.25962.12078717146400861218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0cd7a1e6aaa1c764de4240597f4d7004c28ed163b4be8ad13fc8c4cd8bd963
Date: Sun, 26 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785108033
