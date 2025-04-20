Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D8C19DF99
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745171995; cv=none; b=FU+HpHa+d2mUCCZLlLiLOTJ1lIUvgqIvp0ft6c5c1jyHKejq6E1peUvlSYKwCQbRPMQ7inVsPCsc3fI7+GHVD02zoenlxBNU67wEZwYqIdF7e5v2DtNVHTA/0vSWdVLGLWxQhTAsmzpIpAnC6Os3llXrx6Qzg0mboVwh0Ot8+1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745171995; c=relaxed/simple;
	bh=J6Lyw7pFDdUHALNa9mQ/d+VoYsyHwQigfQBl60z15/s=;
	h=To:Subject:From:Message-Id:Date; b=RPIjKTTWdgcLApwK8D86lUXwkGD9xBOVUXBFYyJWqJF9DXqkLO2Vt4thpVx9Z8Gxd3cqevAmWSgK620mzmlIIaUPVs+ZwnYOkE7jq+x1phf5cTzvzvCY1wsY7Rqk9/3JrDf8XYwPj3XE4j+Zl9FY746d2QrkpYYEaFZFWc2kUVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib4wwMCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib4wwMCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7110C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745171993;
	bh=J6Lyw7pFDdUHALNa9mQ/d+VoYsyHwQigfQBl60z15/s=;
	h=To:Subject:From:Date:From;
	b=ib4wwMCdfM8SCUOqSulyqlb30D/oDZ2U2X5sHKgwh2EuuML6FfeYMBFrS7f/IMH4d
	 HEyvtSr4wmIMfbRZHPAPcmM8O2JdSg/ONSi3E/tvUTExPaxaosBqojclGssUcVqaPM
	 U6YdoMYh3QD2pGDrIKMVEH4ooI5j/F58EmgRo7yePN7iu9Ia8E6NVn5bxc9tEO7S4P
	 C7D3a7qoOJ7gKTGFHBuO2G3fkyPv4Ks2WNE7Q+TFrQAafhqyYQKDkWWnJaD4KLsvrs
	 MQ04RUiZj5r70dP+fbH8uERk5a5cJAYNlfEqkK+qUloUExXovgf9xGF4nKPXd8P9mP
	 v2BgGm5mRelXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD9C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517199358.14203.2039162768916770421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75486ff8e3aee53c6af7ee83dc3f8f15bb0c7456a226a520536e06bf394dc045
Date: Sun, 20 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745171993
