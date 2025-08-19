Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DBE2C3271
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755572994; cv=none; b=bi6LcsCoK2n06iyTW2ybYzS3CVfrYnuMzZFfpWnfeLkj4P41ugu7+T+074cxQe0bjA93GLMs4iXkq7YZ7M60+Jd9++buIFugxyNvy6BGnAp5qn6VZJgeM9CtVYymeIeb9D+cSsJsp/hfJYS6+o6jEgIdBTdCiK8MWkJ9T38o7eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755572994; c=relaxed/simple;
	bh=9fsvcQeulec8xQnXOTSpnK7bwNVnWaVqEuP4fcxpj80=;
	h=To:Subject:From:Message-Id:Date; b=gdkJbd4EzFgKtvLYq+IAstg8ncVR5fky+Rtxgv+zp2tLp4AD5GbcYP926sgA4rPwvcgYTwJCfRzQ9bzI4XIE1r2HwAc4d48rnhnbK9mVK3+L1hCOdHMjBKyABWTiVjWpDXZbQEZzaHE4wMVDWEbK/UMLbp3TL3msTJtH/tWLiC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb/7zqQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb/7zqQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755572993;
	bh=9fsvcQeulec8xQnXOTSpnK7bwNVnWaVqEuP4fcxpj80=;
	h=To:Subject:From:Date:From;
	b=Kb/7zqQ7FYRz53HBxPC9kHv/T/gVWsT+M5inPXUTslB/+wfqQIoXkWCF5K/aeSEZK
	 BkEjHUj8KmKwHTpKZTUiai2gW3uMZMOPILyn+SnBRxXm2YYBYT9kjh+xH+NlsA/M69
	 yJgrpAUOulTNuaG106IuWh7VX8jJnFyyNsZf9i83CVmXQi98g2vxVbdDQSnDHXvDEb
	 gbO57B42c3Xos6kTwGX+amajNljkKLoCqWfRdXKLUOcteww921HkD3svqIZQtou+ym
	 CR4GXSHbqFH4Ps8BH/GPGbPf3dq4xBsOMsxyZgnK22hBKD4UQGYxkuRHVJDjmA6+Sq
	 2xCbzat6uLy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190FCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557299358.25810.9453769076831178933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d48811cb4d154be34acc69dd90f800a5e45a19082030f54e4572028a5d49d1
Date: Tue, 19 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755572993
