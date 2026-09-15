Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556A93AAF74
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789482034; cv=none; b=qBsYlDKQ8+SaCiCXnW6JsZ4G7qJOGPj2vEWIlQ3u2UC78ZgyooH73lGZ9sg2XEQIyfgdF01x1XSXkWRmiSRvAq7wk8OwXkSKB9siHfhKuplMDfRHAG/dcpLyQ8qtZwsakcmzLfarug6xv/NXsVq/JZ1ZcaiFMq32WcuyhfA8XZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789482034; c=relaxed/simple;
	bh=IkSOQFH+WNrbXA30CJrqoJJ8gaB489cacRYA6mxMrn4=;
	h=To:Subject:From:Message-Id:Date; b=OmRWazYrQ7z3pSTkqmG4Cg8B3J7jE2c9HeYycQLosPCG+EtynCfDfad92BfbC397yzI/4VTIXijzFT4k/q0QjS2oOTDwU4p6rOsum/Pxaj+OwKYJE5Erowwf8JXIyPrJlGR2hTds88+N3i6aktv5ZopApDvI3OpC4H9Ntfjge1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrCnmoAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrCnmoAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2274C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789482033;
	bh=IkSOQFH+WNrbXA30CJrqoJJ8gaB489cacRYA6mxMrn4=;
	h=To:Subject:From:Date:From;
	b=UrCnmoAEYmbFSgvqRBLQlaCYTJNg6c8DyGYHCSzekLNbUF6vNQMgbYMX4eN5alsQQ
	 HZFMNys9Yx7VPNfADiO/27g5cPcEY6w1fsxkgc0Dali875pSmn7PiBdIIFzffLkYhS
	 vK2s36b2GEUNb5vcQiXnHIgBAJi/kNQfjRr9pCiIb8DTXsJ5R0z7MjwlV3eS+C/B1X
	 gP5cOp3pS8hCA8hp1YtQL+Y7gC7oGDE9Pz0LaHgF5SGwhaiBv5X5DceFAy88UHTPdD
	 V9subV5PEf5G/GLveEqLD6rQCnP1bBre1wfE8R+YXUy/q1JF82ylIvVZ0AN9PAMeWs
	 W33fbyA88eENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B3C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948203368.25635.2758632816819040384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17173407bac7fd0adfb1f1cda7f0ff7222726c873ea55b21c1181a0c447aec4f
Date: Tue, 15 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789482033
