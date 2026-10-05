Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FEE47F3A1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791204034; cv=none; b=hCNTMcv17JIBkpxtQltNztVoDMCf8CTOEvuh9MVO/3QZbbbU2yriHBAC0RzrgWDs6CbxQkrYaLvnkHrhfSr8BNpueMiYiLYoX4VktjoB4YllGJUlFiJo9OgD8PGU7cfQha4VZdS1UBJbGOI2Yoa9fD9+1MqnFjHDZZcpne70dTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791204034; c=relaxed/simple;
	bh=8tbl7zO/dBHI4fFRlWqZDfAKxGKDbB95t9KO9MyIKJY=;
	h=To:Subject:From:Message-Id:Date; b=eqWalzwdXZsZiLoDvPdpMAW4nWVJM+yjy5osfAyDCSZSn9rGtPI+hGRfrKosUkWuQX/o8vCXry6J2EOYer+P06dwuISIioYYY7pSMyF35yFiiuTGqvgyO4kOPZpNEz3qi7D4Dtd8pM+QgF+jboQafjPGlk8vZP4HUpGJzto/wKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRSf2SNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRSf2SNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD296C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791204033;
	bh=8tbl7zO/dBHI4fFRlWqZDfAKxGKDbB95t9KO9MyIKJY=;
	h=To:Subject:From:Date:From;
	b=cRSf2SNly9W7YvoY1/uUZ8AR5emoeYtha7OviqJIGKqJQzZ1gI905ByFpLYBF8xu5
	 NjP8hoZvDRoZ/rmMjD7FG4PVbJDCEE4RJlS5UhVZ1uF6eVBYLu7s4BDrZjh/7KSGVg
	 oqgMq1ElM7YVCZwrvYTsqhiALKeISbM2GeZIyzSHtb00vs2bOMniNE8kKZddRDctAV
	 LjIn0g5X88hA1OI3n+Rl6yWO5x26ZKa6Iz07Jkdu76/xNjFW75WEAGYC0BHqfqEV3e
	 XKRRH82mVoKJBl5aZluZNxm0Y5QoaaC2Z3ebrOju33vSzO1gI3mpL1rbacAYIAQTRZ
	 mZ4dtR0LdivgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7ACA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120403369.21246.6595918962900752629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343d289c8934e189aad333a0fd9a5d062f06fedf24c1a9c093374509757445cd
Date: Mon, 05 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791204033
