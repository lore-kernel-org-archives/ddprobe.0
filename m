Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABBE1DF24F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761061194; cv=none; b=BKkNfm8hTsXXgHkJCXCTvHWswPdfX7BoBHrAmWOto16hY0Ul4HDOB/EkMkE7PtP7n4TW/idI+8vGatrArnaNJ3ACUsrKuEaEEjfFSUPk4YaetT+HSpShbuGOonkymKIHejrkAjYLddJgB6H+ig2YDY1xriXYmONMVtZi9wWm/ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761061194; c=relaxed/simple;
	bh=rWQRiuAkUmSFMTrKJhXV5CCh67TVzw2lGN7ZBs6UXeE=;
	h=To:Subject:From:Message-Id:Date; b=cBds6+Lqa1TqRT8x+ZgNVSdpF8zIHZi0stniLYCnQkvGQ3WVOZ5GadQ1J7u3HQZeHdiYdIMCc19ZCXTFbadUZo6sTeYlPT6KNFHy70w30J9xT4e5KnpvqJ3dxKX/KoMwmEnz0gPHa7OdJotKHPVWj12SsU4JShaEri6IhjTh5IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDj22u2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDj22u2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761061193;
	bh=rWQRiuAkUmSFMTrKJhXV5CCh67TVzw2lGN7ZBs6UXeE=;
	h=To:Subject:From:Date:From;
	b=PDj22u2Qn+EbQb1odH8XT/MluCk0r5tYNKNzOG6F2MrQy7qLVfNmbr2UEAZRPxv9X
	 10pMCQPlYXyRZNGP8c1tuONKTuFYDxhtKO6L3ac2t3RTwnbX4n/1+ppDXwi590VZqF
	 CP5UWlyMcMER50wB+/6dUCfrjU8olgi5tPK3CiFm3y6d85BBwtU7CSFdeKNV30gda7
	 HsGNHXtvXR6eLQ/nJ6W/1IikD72HZiYSzmUGYRCk7zmgCFXrlPKgPuF3f6e/ijz9dj
	 /zkT0Yth/vQwNIRP3Wbc8AH6XcGCfB0V5sFgui42xbp7ITjz7oV/Dc4dyv1MnrEzqs
	 nCGzhxZBXYUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA3CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106119358.23768.11101297941011030817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9d71dfbfc1f4f171b04fb0f5ea7dc278f02ea04f53119c8289a8e4222404b6
Date: Tue, 21 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761061193
