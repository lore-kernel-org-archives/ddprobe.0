Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25534418340
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786484434; cv=none; b=m7nIkGBNBFH2XdqEhC12l0AywAIO4V6HDQlius3eHnLkcU9H/BNDYCbmjjwJZnMIPxxaY4gQKYdz4nd6uOHCN88wLaZwsg5QzvKFFEI5k3MxAtWW4oGnH5uc2spzoEdmE6Uzl6gdwcdkHtA2SWohm+jlLRPi3q/sWRH0onKfFxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786484434; c=relaxed/simple;
	bh=8epkljc0K/0MaI/IpmQk9oZpPcw10GwRj1WxXrNIqdQ=;
	h=To:Subject:From:Message-Id:Date; b=WpgcCMOxTrpHyI7g2ioLBatPjHHPYqYyKgkSrGfsg9oeYmek3xe/uP5ZTPovthknupV2WWmwe8y8jevETDzTYVO/DJ5Agkt032j++mKweqfgIjg6DX/vZPTlHWc8ZenNnITTF68kAQpZy1g/XOs5ZgktBwFsVRexSR/DHYbkf2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWsX8BTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWsX8BTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB11C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786484433;
	bh=8epkljc0K/0MaI/IpmQk9oZpPcw10GwRj1WxXrNIqdQ=;
	h=To:Subject:From:Date:From;
	b=bWsX8BTUkSRBiV1tyIZXl2i3yfJpj/Ch+yEUeb+fmh+bYQn3T/ukhUsnPiA+tMYml
	 k5RCCuxELAUH7cjyy/iRb/Y+aKgom8T0ArI+x2qUz7A+w+wAaOuPdXjQ8rzlxOoWOk
	 hrxe6+75WL5SvklY1a7oh0gNZlvcM7BGdaXLUIgM7pOv+Vs4sxBFz9KBbleazWK5Hj
	 RwvlM1PUqZmxn4q3wbiYPtkGiWcMIe1bqM83JDbCADS4L+VJBPrcw11/3+SCCujZ/k
	 kSCGxKA3iv+hph/2KyGeTelyLFCytLA+3ocDvHUqW7nZBz8IiaGlSu9CT1hAb4tn4b
	 ut2IDTT5X6g0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07FC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648443368.13944.3523677780926194142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba42137419bd7e864503dbd161bda0cf474c80bdf1a8eecd4ec98e9f37150aa2
Date: Tue, 11 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786484433
