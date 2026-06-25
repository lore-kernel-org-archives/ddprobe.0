Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFD533C182
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782422854; cv=none; b=Mmbyi3h9J7l+7potUe28SyMKZBGwI59pLTQZqJK/Jr/koNYQLzXIv198nrRin1hzAmgyDerSEfwqRBORFMXloHhtfM3WAr86rmqT5rY6E5db8f/yDEKhXMmtTmyAitP4eqjVGliot1dkFIs+O1t5aiVLdue7Ayfer6Vm60Sx/EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782422854; c=relaxed/simple;
	bh=Q/FyMPKOs4QRJGGz266U47fAsxM1MNp39l9iMhsGnjM=;
	h=To:Subject:From:Message-Id:Date; b=m75iaSGi5V9oBEdh2m6wnLShEaDpr1JKXZVdPh7vHch0BFJI7bR8NT7KSJst9lGfuWIQp20c2Nfh4tUOrt4HX937KuItin7/osJqxE0rJs5+jcqw37m0YIPQQWRhTQuIL8zdYndGeApftRjOrcVpbzoXIV0OfEZkcXT222PTl+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw3o4nMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw3o4nMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11B24C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782422854;
	bh=Q/FyMPKOs4QRJGGz266U47fAsxM1MNp39l9iMhsGnjM=;
	h=To:Subject:From:Date:From;
	b=gw3o4nMmmMawpP2YpyA/dALXkIwZrwl1T+V4S6sQoKxK0KyMlczFAZXVJ/rg5PneX
	 WmIEcpvYpsET06vRNiD+mGBlM55X1XsFtGw2DpXM97ZtcYTzJCcyKvLyIpUhxF5jjp
	 uV4D0XITfS5WJkMOf26zIHF0BPgqD/sD+XXblevyt9dv4ShQsC5T3c8wgj+vR9Qp6x
	 6p2VLMgcZXcl8Bc59gvcBUBlg9X4F/iIzzbeg5myLSXpyqn4t7ximKik+sAU50UQgb
	 spMBrkoi1/ujNEc4iMxkgQY566FVRGi4KFhQSF+fJJCrtQ42QFkYizSnmEgN7uRX4Q
	 rH07QxMa/S7ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D58C0CDE00E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242285379.8658.12962978403003510706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100b95f4ae6c0d8611125e897ce38b804a2d93afad65e0bff4df81827ea826d3
Date: Thu, 25 Jun 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782422853
