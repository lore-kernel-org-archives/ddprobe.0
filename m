Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31327F4C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757363394; cv=none; b=A0HjTt44csvfLZMRPNqm4MIQ6CVpS/Qj6pCK7zOiIHE28Kz64xd7CXID/oCB0IKha/vh1i64exFv6IbiF+r8cNrbLSjX0N06QNTn9+Dd6BgK2FeQnRcILn1aWxpkA5r1G97NVDRFbgCJ1Wh4p+LXmMvG48bbSm6bArS1GMrozmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757363394; c=relaxed/simple;
	bh=hjMq8AN8LjXzR8BVVPUEGV65D6B9oXRFV5WMlbFEak4=;
	h=To:Subject:From:Message-Id:Date; b=Ufcn1tZJQOQyvBDWGSnBEkZHkQEwbDw25FRmf1NopaRW7apNYwO9XOSk0qE0qTM+o8Fz/rXOjZ95eJlLgaY2pA2cwK5wTCC2TmuSyNGhIJyMis1shpCx5rOZ3/LVnM6MvALAyJljyVchl7/71Vk4dDnrT/MmAme6B1cgXKd58d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sltu3cja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sltu3cja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2DFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757363393;
	bh=hjMq8AN8LjXzR8BVVPUEGV65D6B9oXRFV5WMlbFEak4=;
	h=To:Subject:From:Date:From;
	b=Sltu3cjazeBxt2CC0LO5jZSu5yd6rTtCHjJgX619tB92RZOhRO/ebg6lc0HIqX5Wm
	 tYe6Kyq3xd9Q7Ix/UWgl7LKgaJEWZE5V9khragWNjXaG9VPTYqdalnjV7e1r04HAmp
	 L32cf+zux/Y6re+ThSRHbEcyenDfL3EepSLdxKaMAWTkzRjjYJ5k2T1KBR/kPelw4j
	 eSk78bZ6/MA9lBDmjedVH6usLA2ScDpzAnxITcGW+hc3cnZEd8GCVhK0KmkZVeOJiE
	 QXSEkqvIO4qLPU5GdzUwn+26jeKt23DdWL3asRUYqds/dfOU8HLphSouQpEeQYEcjO
	 DJabnen5SnbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D8CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736339357.29696.7731652016634918673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e19f0236f07f04d7a0250296a21af693b53aa2e7f4dbaf87e20985a370c1f12
Date: Mon, 08 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757363393
