Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65E547060
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789800034; cv=none; b=PbaGXQ8BsYUyMSJt4ARTOzGQLs+Lsbv4AuZRoJn/qGEVAinwBLS7mhF4KGyoLK82/GyuBOxleqw7N9k4eSUJTSl8XPXAqlbjwQY44g94cHKRj4cyPC5B1XJ+qzsXo9bMqPvEz48RDVyDNz8etCGmY2RM+IMquVTwPNxB4826L0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789800034; c=relaxed/simple;
	bh=5A/4GocuSYLe1EN0MK3w1g3LbutGBGOpF/08nd1hD0o=;
	h=To:Subject:From:Message-Id:Date; b=sgjLKeeMSLZgJTZUvQ5H8sV+sogKId/XX1j8ulhKVgDwbsi2rvJ6uMjV4IXCP/wLsdqYlV7XHVKWm6xh5zchC2wGdqWpqE/xk+oUbHRwAu73zfJfdvneNamUayqt10tcL/VxouLv3WIHE0JwofHSGVZnzLIEa7ypuem0Mu7msI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJnaxAY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJnaxAY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789800033;
	bh=5A/4GocuSYLe1EN0MK3w1g3LbutGBGOpF/08nd1hD0o=;
	h=To:Subject:From:Date:From;
	b=MJnaxAY8s6Pk1fSti2qKE3R17xmgva0OGRzmP2KSux21H9AGkCLrVXTCPd1Vascr3
	 MP+rTal64dBRcRzEukfIyHUIvt4JxdgibDksXVJM1VzsNVdlvr1PIGb9zh6uCP/zUF
	 kKcxNAX8qQNSXz1W6QHEVteyuba4a9PaakVNGFvixYiJappZtAdsIb5zIdWy0O2Qo8
	 knnGJRZjwc48IRjng0f9rKAU3Cxx/eY71GFQ6kJ/u5ASg1tOWv0mjuf4bzbD+jGHWR
	 yjZU1BcMks78BY9rrFAo/uaJIXK/PgyNWOuTyS4H4Jw89zZr8/DzUkvrrBZpo/S37t
	 f5pQDwVGensNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11E2C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980003369.11034.4763409422463133554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cff41589e52e2cac8ede7de5d96ff23d0cd2d7494a090bc48caee119773032
Date: Sat, 19 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789800033
