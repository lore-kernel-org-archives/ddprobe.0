Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10E31BF5C
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712114296; cv=none; b=Q2Ah4KmpcI0aWaad1Nr7TTpA026NxMjTY3Na7Jh5RbYlF+1K11E9O1VmO/IwWXwVFkZB/IwfXDHPu/HgMpLHP6j1J7ztUGEEyUGpfaW0/X65T4SguarKW4NKfc7YATTAkw9C3SzCV07jroloS44pFK1zN/Lq9XaY35PYBykDTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712114296; c=relaxed/simple;
	bh=b4a1XixRJ9FkQUq3icVPxweTE3lAFiZ267PnT4n8Nhc=;
	h=To:Subject:From:Message-Id:Date; b=PWU8a09KKjhZhjtZhvsTi7VN1Kodboaovs+WuIed30TW9hHzcjOVh+GHRetOqwJhHSwgZU7DCKIu/zcw+vEpVGuBDdbZqLVfmsEgV5zQ11mYK3AdDFlNHzt0eOrDGa5SlqYbQ3hwPSHWX0ekfVb73PPJPut3ZiOW4ygxMXWv9a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMmKpBOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMmKpBOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769D2C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712114296;
	bh=b4a1XixRJ9FkQUq3icVPxweTE3lAFiZ267PnT4n8Nhc=;
	h=To:Subject:From:Date:From;
	b=tMmKpBOtzqPu5cy6BpacbXiNrAr8jsQ2vRLEYzrQrppUbgfOPZb94V00tF+ha1Ktb
	 jkl4KKiPeN3lnBseExWgDM49Rsva6WHtpktMwTmUzR4xVTJP2/lkULLvOEYv8wm0+t
	 3mfQy0M4U0WnmyBw67oZU0de9oER3ZygqnlUAQ5xXdObQKwE0swvWd5vgn7uHKq/L3
	 LlCFkaGEcLY6p93sIhmR+8aj81FQVpdSBMJRSgWVLaHOa/xoqEnX1c1MV5pHsR87Ws
	 gDm0BL3y7QeBbBbbpCFZWn/Jqtbn6B/5RCrFLK+UIvfqDWoxQ146J3p68wh/BVYcxf
	 DS91TRj1m2TNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68CBFC6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211429640.1458.2846034853323433875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87f540466ec4c86faf51987bac4100759603c0407b5d352c2638580646ab145
Date: Wed, 03 Apr 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712114296
