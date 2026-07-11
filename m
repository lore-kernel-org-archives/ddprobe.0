Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408491D45E8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783769914; cv=none; b=Km2BePLlfoQE2zQIgyCZOIw+5sP01EVcvUi62eZK8cg2mraxclg1ijwfZFe3ucUuB+doH2tVa9/BMLFW5Y5ZP9Sb7m/kVlHDbAg8OiOZxRtM5XWsxSfHLGStyGOLfJNtnP7vC7mLOQNcz9a4eXwwUmo7Q2R3WJdwSmRnzceMg68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783769914; c=relaxed/simple;
	bh=377ct5YyaB54RvoPfMIdRoIpXc8cLZA5gLQ4SqcDvT4=;
	h=To:Subject:From:Message-Id:Date; b=DwcOdt6imX9SvH3AfJcgOxB7H6BBQQNsvbDIiD1EVc3e+xFsj9znQaYSGHbq+5hG5qBQPE8Dc9kHcKRVKjMbXQ/W/cYGshn9tOpET84E2g7bhO32XjpJnLStAPUw9eB2QDXi69Qn98b3gx9QyiXFixrJPu22eIb56m1EawNvyh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDob2AbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDob2AbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EC9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783769913;
	bh=377ct5YyaB54RvoPfMIdRoIpXc8cLZA5gLQ4SqcDvT4=;
	h=To:Subject:From:Date:From;
	b=bDob2AbFtnoGmpuam4iuLT8IVdDAHyx1T4pT7Hp7TgAYAC22Rf33oVEcUk7KKtLYe
	 97NwvaSDMPYqJhVfrGofN/6Ej4J3c9RTF+Lftn50sU2620mKrdohGj1LjSoUmo4DSl
	 +WQ4Y100bLyIr3x5HQyYeMZXv8V2RtR6NH+o6PSYBwmJmEos9/fehcif5EFRKCOzT3
	 XoPCvczueFtRTY1M9iEreWcdAtxUrwFDBMgiuovE09TvyrQXeXb2QUftuDOOFfprvZ
	 deesPnH9NNG+Qv9g58MBJqjWNYlMO7uGoOvCxxEZSBcBhXPlARHiHZ1yBA/mfl7HPD
	 mUsgZ0N3L3CgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE272C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376991368.28972.260601138143046171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1a9ca81bddd9a0a20f00994d6dc59b897c28d217f91e254b11120fe40d4304
Date: Sat, 11 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783769913
