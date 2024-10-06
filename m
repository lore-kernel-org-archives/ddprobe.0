Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F27741C79
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728198954; cv=none; b=ptF9bW9iNbZw4ESjL3Hkw0pzK5083TeP6YDeWHERLH+PdrO0FP/Xg88bkpNrkbPhrLdx+eFltLIPy14c02s+jezCp7Roxetpte3DV67pEl1bAPaR5xoc0DIpC83YhRUq0n01WxuCIjfThGCaF+x1DLWDaimZj9uM6FYrM5EgdgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728198954; c=relaxed/simple;
	bh=8SvU9RNop5n+6dWHEH0VHh7ZOWFm98ZtKIJKUHEnSpc=;
	h=To:Subject:From:Message-Id:Date; b=KthbmhId2w4mcISFSMIGHenKxWuEvH2PfUbHMK1tlzBJXMjj8kFEpeJZ1hOsyS/4B7by7Z1wl4d58pWQY7H/Vg7qTxvsPhpyzaC2LzhzbFuIuGpNL5XZ1qvrJ/oW0Sax/v8weuXp0UmVoZ0CML5WMfF3PkKUktLZZ+BPyArOIBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UADWW1DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UADWW1DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1069C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728198953;
	bh=8SvU9RNop5n+6dWHEH0VHh7ZOWFm98ZtKIJKUHEnSpc=;
	h=To:Subject:From:Date:From;
	b=UADWW1DSfscRFVU3hqvsql7ueeBpYXplyQURCQT6vSnXift8DG83fyEJ3luepktdU
	 Yh6aLZuK/dzvsCBzN/xNqdiGPOggTVPWCMTh+cBsfSnjKaXQSVQk/YJ0WidvCN9+tQ
	 dPsKinVz+Bhfu0fcSI96CRfzqBUO4xILyW2IEIqN+rRNKJDstW3+idexM7zc6ugMx9
	 AbqTyeFdPZQ2Qx0lB18+6WNI4eQzhJvbEnySog/IgEZQmJInh0Q8FOJ5kXtoX4ggL9
	 +H6p0vOainxyuc9CkeGH9gpA+ncmkCtKeXPJ3DJppkwhBXv0WLTA8BL2ddNQFpjhRd
	 HfNwILzKJ9mag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DECFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819895358.17079.18377599000693067756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639d266c3baf091e6d1c413b8a11f82979a49d68a3de56f320074dbd16d80995
Date: Sun, 06 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728198953
