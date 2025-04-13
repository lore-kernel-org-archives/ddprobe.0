Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DC717578
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744585194; cv=none; b=ISkbJrt+EOdU3H9uDB3s1n8M9A2lzRhRKINmYVYbbD1Sa49hPpGpBSGo41Q4Ie+m7D7E/UVNPv6kWoNN3kNYh5rbTLw87XV2kzppiAIys8zWuyV9wAvyKZ2uTkjwzuQoRtL9Cn8p30uHh84/LK6UzdYHjphEp88DQcwZP0vAmuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744585194; c=relaxed/simple;
	bh=Jv/tAzLO/zjCJdWnWNbdz2qhTAs+G0TfNgyg/HtktIo=;
	h=To:Subject:From:Message-Id:Date; b=nKUGtF7th0aI9mHZay+5eHN4SZZCtTsfcIvqGXYvv8425t45YHUu6qW/iSuDRQoCJFUsL2mZmV6fFtEdE2wHVi/tbJN5JnlquLAa1PPKGyZ2IwEHNkvfPg8Zw/4CIOhsYNPppyMlO5OSmYSL4Ht09SWmNY4DtTpo+eDvQ5Pgiv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdB632Hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdB632Hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA815C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744585193;
	bh=Jv/tAzLO/zjCJdWnWNbdz2qhTAs+G0TfNgyg/HtktIo=;
	h=To:Subject:From:Date:From;
	b=sdB632Hij43kmGnLiItJUtCbHK9FChMehrMNkyJrf+ywWuM/ZQsxrhIS5dzcX02Lt
	 WX2h8NbCUMlLY482d1DcXWecsUJ9kIhG6iz4nu1MKtrCDKAPCfnLufz+Hnf8/DYg6B
	 VDrLdd1dxaUshRlPugrAEYTmTkQCN6l9bBGvdliupiDOUngtl+FkuMVSAy5AqSpnqE
	 Nq8/dXtmeXttYaKovZBk6o2pIni3+kNKUST79gQ5C2L7bIkZ0LaGi/plcOAXL80ZHs
	 /OY77aqCGBrZh+ABhKbQ99opkQKhXNZIUsrS8FZ/Jj/EKwueuTnzQE6Mq2v4XRYrA5
	 OaFdyQXz1lRdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921FEC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458519359.25253.5289440662139195654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bd2521fa2fb8fc0eba4fc189d32920ac6bfe403c5ecc27c708276b3620bc6d
Date: Sun, 13 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744585193
