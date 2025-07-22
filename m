Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174DF2E49A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753178394; cv=none; b=D8TRR2RdjgbESVkpExADEURdhrYbVOi5sq9+37UEwEfo64jFTZpvWkKOWPTeynvtAjSfB9zXnbiti4tIBlw8jBuENTl2aHZPTOYF5BLq+D3csQ8HSSLaEPPCTUPAXivWGz7q8HOuvf2cyBwyuKwZjJ1vgBEGFgjRB9H5MqWdlKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753178394; c=relaxed/simple;
	bh=5eEMSxKhKM8tjbcdQwMydW1aQPDjry3MVbrG3IOGjPA=;
	h=To:Subject:From:Message-Id:Date; b=Sh2iyjnkjvru2vJOgMWZRny0/AAw49NWgWiZjRUkecSJlTMy9cBbqd7nIqPyeY4pe2tfwu/412BphvBi/7jvRFKusQrlEpj1bbrotiC7YUdWUl2XE6zoomDDvdYCuOSXF+i4+vFHbBKpXIIEiPAiF8aUsYKsBFz7BuYYLPZSf3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ/oWkbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ/oWkbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D714C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753178393;
	bh=5eEMSxKhKM8tjbcdQwMydW1aQPDjry3MVbrG3IOGjPA=;
	h=To:Subject:From:Date:From;
	b=IZ/oWkbN2DZ0xLwVk4Ajhkew3N4dnER7iZh3D4jpHsoZF+k4frllzUZafaAhaS4FG
	 rkawnsuXpej/dG9yTxbLJVwNzSVgfnBXVkhCpfV8/jI/SkVj5mJGHRzm+y7ryLrD6v
	 iT3K9aRrBBBNNGw17F34ARrFh/Zv84OhxcpUZF6fN7GHzfs/TMqFnlOROn9+NRTcm8
	 XMVKOYMJThVkYajs+uuVqNC6tuQ0jf946I/c02nE936u2/HwYyw1dGQElJww4NvJRy
	 yySmhc05qmEiwMxIoiOIHxGWgBzUwBydZ0Y+sILsgzETpGASfCzfSEZLzoTy1yzQTq
	 0BDgUltpNg1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F244C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317839357.13777.10722277082876723682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c543d3f5dc7503369f84d90f5c0bd15c6275200fd3ed851cfc9bd984c1decc5
Date: Tue, 22 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753178393
