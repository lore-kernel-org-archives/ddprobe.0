Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA9624EAB1
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780169074; cv=none; b=JyVN8yVO5m8c7TE4d/jFa/J1DQirWjsMS8vPbZxuLir9O8d6IUEPZjuUL2sRekqnlZy8NJBbzW1qsPdQ/7YbrezGUhNLzo1b+WBO13WyNi25JT8iYUqEpZU+ZOcK8KFHZ2X4UzlFBHMSLn8T+4HNx8wrfF8fokXy8eKNrEEGCeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780169074; c=relaxed/simple;
	bh=oKmkvZCKhyg393fPsikvEP3ysv02lv6Z/oa/qM9nfbo=;
	h=To:Subject:From:Message-Id:Date; b=Oz8RArJHhdGLj7t57I3bcrT0zeqWVvHkx02XIJFIjJPZInxk//7EMOO2JY5qAnlPYorxTq5SD7kzAd0PVoK/siX9HWr8+ub8ogf5OmNpHx5ECQyKgAxmFDOc/hmbEVbmZsb1IYmPK+PiY3mSV46QhlH5iKaIvgoJpRRfn2RkOMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX8Z2Hp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX8Z2Hp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780169073;
	bh=oKmkvZCKhyg393fPsikvEP3ysv02lv6Z/oa/qM9nfbo=;
	h=To:Subject:From:Date:From;
	b=PX8Z2Hp4VkV9jTGSpFrnbcewSP4SbCIy1UNJ+ih9VNWUv0YS3EYj7TLn+bMbXsybz
	 CBNIOi48FB+0o8GQRvRqE3i9l2FQvj9zTXlUqoG5/M+MRScm1hbnTmH7lCWU1+Qh2e
	 77lZ7IiZaIbXyF2/z6PttIOVMDGY2Pix8iDE9BwgkkMjJtRSIqBaEP50MerElWtIY5
	 xs0JzWOvUqKhDRspaLKY3Fq2Di27i0DTuJH797fdmAAXmMZ59uiypP8WF8qQHCxumj
	 4xw2X47UcQyAMzHfuq6wrphoAdJFeTkqk7BK/OwCFdAvyelvi0aZa37NFDiPPPkJ1q
	 BGWrKdWlnBOug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78EECD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016907372.32705.9800148981582192246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b880edb137ef2028534730d1501da538a94e869b22e6113daffe234472889f56
Date: Sat, 30 May 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780169073
