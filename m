Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC2257423
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774826694; cv=none; b=c5Gdgxt50R/XoYz/6YGOxN3p2s36DINcLho/mM9OHWFRZ6SUNOiLRZZv4VR0Z+OE2us5cL1ex99Is1HEQrLtW5lbkTKR+3bYXsgHLx9kLlkOZGmOnULZhsr3MP3UgsId7LTeqHQJ7Ugal/oyitfeXyIqw37oZgr8iHQULFv2cuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774826694; c=relaxed/simple;
	bh=d6UvypdIZokQCN790Z6P+eg2gIHr2r+wbnPt3Ov8ACY=;
	h=To:Subject:From:Message-Id:Date; b=rEgY0EE6YxjFmKPYj/lmI5CI3Er2EYYsF6OmHhZh2TiCOFtZqJD4TOHrXssCQqvY+RHyDoL8clxzd0JHdAX2dQaE6eRN+IBzNVNZ6r2Jmn2CfOVHHJ66jEzYQyoz3QPp7zpMkT+Bjk6RYXaLLE+bs+eoko4BMXQ0euehwkAA6W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou3ayfjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou3ayfjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2163C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774826693;
	bh=d6UvypdIZokQCN790Z6P+eg2gIHr2r+wbnPt3Ov8ACY=;
	h=To:Subject:From:Date:From;
	b=Ou3ayfjPHUsBWohFq096HNDa5ZvB1+aNRvgvR5objfONmLNzKMpRbtj819tgnLJ7Z
	 Zeo82npxP6OCE8sIcP7mVZre/tyuor3JQMYp4a/U/6BCrfGl+WqWDIBgz+ZXNO3poW
	 abRgU8CA8tNXrpnosZKiySuKK0SjlVuv3qQGRm2piHaDkwCP+jak8/hF//z3Nx3kY1
	 tzXE/B/lXYURSGLOpQParhc2VF5Bg3gx3y5xFtfoMhF7/cAySp+thMffw5Hq73RZOb
	 h+RoPK9IzszLxOsOKs0j+8qgV+tZKeMnZvRgcNHc9kgf7Tzx9asKcxKpvkeS99lGN7
	 kDIjjMEpxNIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D6FF4927
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482669358.9448.4445213093761860111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fe8f96bd30470f90f6e92b212bd4ce933c6cadc474e1febcc3a73c6866f43e
Date: Sun, 29 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774826693
