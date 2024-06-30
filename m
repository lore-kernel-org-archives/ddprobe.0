Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B33D4691
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719712463; cv=none; b=iaT6yCD7OVry4OC55xaKR6K0QqO4DzTHjZmrpfCk54Aric6VNX4lTHQ+T7LQpcqLcAjRz5yipKXW6pCgFFxO4AS+kjn/M8XKAW5ximF2EYLgSVBkki8wEwBOBAamETps7FDCP1ZstbaZdHcd8xMFZKXH5PNbmjlGKPJH6sguz4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719712463; c=relaxed/simple;
	bh=fozqA8/uj6qa2i5EbFWtNZI4SyHZd7LuoBtYr5b6x9E=;
	h=To:Subject:From:Message-Id:Date; b=j1eHCXkeBrZ+2cojTSOUslwhfqp7fYRpJp81VAaR9hEFCDexCedmce8fBKCNTnmrPh+BgWdgsmwURhFHGw0yp2QIHo/zsky+YBB5jE6dSLvjmompAoi+82p6zem2ggNV+pESCK8VRGLAQKtg/GvI5SR2DautDkNIcpOmwjyDLOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEyImlPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEyImlPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0763C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719712462;
	bh=fozqA8/uj6qa2i5EbFWtNZI4SyHZd7LuoBtYr5b6x9E=;
	h=To:Subject:From:Date:From;
	b=fEyImlPhh10WHoBoqqGhA3Lo6Uw3BHn+kV/hYZG9fWVFyt1372GP+1mkhsmNfATx5
	 wCLYEp9hFmsXvUkDfku763wvsqiOLCdcw6QyjMIKCMxfko/HTT+L8p4kXaFc1rmWx3
	 NF+yvfzB0VgggMreq0wA9ezTRLhzlw7eDbrpKoo8oGZXrU8uHAzrW3y4zFGGOz11ZC
	 m3PYEbFptIAVw+KxlEyynfzcPc72aiQhZS7zqSE9ozW6Ib0OJMS67ckFQMLdqaoop6
	 OGxtnA4y4Vzwm9iBT5/ydyneXswG6ZJbmwgRHUa0OMPK+Uz+4MEEqOkaW8KaiN5oxW
	 Ij1RoOgHYSEkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB820C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971246278.19086.5503706491960921706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35242b5328d8bbc09494a76502228b690a3cf117a36b9f044bea10d025212500
Date: Sun, 30 Jun 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719712462
