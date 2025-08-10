Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B6114AD2D
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754862594; cv=none; b=q1+78Khpb8q7Ek5NcaQ20dnDSELziCYgiCEcJiY86kkc50Zxopf6Mo0M+THtnV4k6Y5RjZSvdVO8015E4mdme5QjdVrK/fy0+OFeqBWW6rpPwQlLIVLQoyYwQetjHEeOuvMb+rmxlQf1hx+noStsDbdbbmf8cgQE4I3V+IKJxHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754862594; c=relaxed/simple;
	bh=PFtwzo6B/+FwGOXbaPTf42t4bgL/+p4lQzy5VPB1J+s=;
	h=To:Subject:From:Message-Id:Date; b=ZXeFVL5ZHeX9gV0vHbrLJ4UkYFou/nsZULaAxldYNzMUK07HCrX5F3PGVUCyyr4v0Sxbo0sTPOxpl/Y/5fBq9gHoHXiQIDx9cJJwyyek9nJ7YX5Tjr3G0RJgZfzxD4WT5cH3jA9dEc+qaQUT97YAQBb/0FJ/Mxz6qk65zrVfbS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzGDhqDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzGDhqDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754862593;
	bh=PFtwzo6B/+FwGOXbaPTf42t4bgL/+p4lQzy5VPB1J+s=;
	h=To:Subject:From:Date:From;
	b=UzGDhqDXYaCloGPrBi0Zn3tDzNBpu/ycVLLzcCUVMeoSPjHcxZRDSwWPSLb7Gybki
	 o6I4XWYUFIWu7jGrCPXk0YYU+3rzdQZinfA7l/yNRT8U1nEDAHF5wTzn3bJrMOH++S
	 yaOkEry8qsSMAFSrunTb1ZtpLGNYyWmZbrNJ5CmpCZsyZsTkveuYwx/W83JsXf9O9s
	 NrPuExLF4iWEPS3681OslR3D6a1rEtBbsKzQFFYofRQCs5ZWXVsN2eEbtP24n3rwqH
	 iMXTNY7VJcvlT2sAvPR/RANivRX8r0uBo+aCQTTdaZ5RibO6q+T6g2gO10x9N39y3N
	 9TGhtvCGxh/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EAC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486259357.32259.556259838120617219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331892b029344c8b49c16f186af6cd4e35df21258d12caea3afdd0682f9de7b3
Date: Sun, 10 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754862593
