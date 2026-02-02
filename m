Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FBB378D6B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045233; cv=none; b=a4wFUeEuV5EogS6IF5Nlg82XzIBvrd1KaGmdZF9UJi2I+s4cOcVIxYL3Ynp6rCyh3wViLoS9n2C/3Ytm+gRTjjf1B36jP6Y7oA2+2/Dcq0Wplp+7lvV+DZ4NwkfFzC520f9W6BzSVWEyl6UMqWbEr19eocF2P5+jLCY2i0GK4WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045233; c=relaxed/simple;
	bh=bRVSzmuSsMVKOYPOLi3B4Q7b5hkox2bx9rQlMJZpOB0=;
	h=To:Subject:From:Message-Id:Date; b=nWZxlPFJdSVWcxfWHoyAM3u6rct0i6bG7IvJ8zOZGpEQCxPZwKRM/MMTMDWXtve27fugqu65+7nYFnXqghWUnII4v86fTLIWDGB3r4KQHR/NaGHyDjqFtFI9Fi5ivGXcJMvOqf+/r040ABVUA8YjUBS3dbEv9UPaq/MqoLYowNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldFUVulJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldFUVulJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8215C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770045233;
	bh=bRVSzmuSsMVKOYPOLi3B4Q7b5hkox2bx9rQlMJZpOB0=;
	h=To:Subject:From:Date:From;
	b=ldFUVulJIcfvtJkTkJg8WvWdIJ2PVnmt0KWwGEbb3CzSLCcd43DTWgsRVMGrFlUkr
	 YQroOMxWLwAIIPDrbrlguN+tuAbNf00RLOOUYZdr8kL3MhWh3JZWCihsc06j/z+F9U
	 V0ivrNHeaNp2p3pXSLcKrM9tJrqkmH8vzxglBiSoPs3RsiEALKTsXeYyWXooBaHVio
	 z6EOoJGEyGPFmRVYXgwWSAGOT4Mkl2nLf16L/3D1eUd6pLwHoBw6uMqsmjhdkEcW0n
	 dxCQco5oXONWMzgvgeuSb7Bwl8yfUfdwBkV6qwGPwiN6JtBRKVMM3dijk7vzbxKXj4
	 xtj9i3p5OmwMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BDCE7DEF3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004523360.9032.6661425750880446785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918bf3fe99c7bd729a96828b1d53aeb200fb765ba56bbd86bb348a785bfb9ea4
Date: Mon, 02 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770045233
