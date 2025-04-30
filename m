Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3628217C21B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746026994; cv=none; b=hPXXSYL7vePMf6TSspGh1kiGuAGda/A7kCv+YBp/vHzoU1Cki9rH+Sr3nvtMi54ne0q+4CnDBMfdFHQwtGtY0U0i7CNwpcrEnrH6BvniJNVMoDN+w+DQbsjf5f7EyoUdYy0Wj3iS0XMlHHJe44DPLrSSlR8i2MfTzhsOlkys5Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746026994; c=relaxed/simple;
	bh=rKHpYariHVZESrd0uf0egrbS1Yf+KkGDRpzl7YttW7M=;
	h=To:Subject:From:Message-Id:Date; b=cRaXPoPa9c8T5zvW1BHOHi3vtSXA7GYZWXzlN+lWNaPVPmLvufJHQ2PJit1Glbrr81yQCgqSSbs9cKb/GRzg/jA+gxSGA2JriTvzpQ8vUmYxS9s1EF6OhwIHpkX4H/50eFGmmIbq9ZlNTbAEcWccuixXQzoiOqW+xqGNvVP3mTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoYkIjHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoYkIjHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746026993;
	bh=rKHpYariHVZESrd0uf0egrbS1Yf+KkGDRpzl7YttW7M=;
	h=To:Subject:From:Date:From;
	b=JoYkIjHTPWA0JXY32IYECReWlGBWTHQHitwjNSH2Cd+erAsOMxpj6NbidfgA5YmXp
	 QdXW2GRy4uEzjDY0uMRCd9sEZTIV1iTcP+/oXOzcq03dbxdrRq+z3MvPNHe80CZNx+
	 iz5CnxO96LwPvQ3FmLFsT2flz5HzHcfC0u7f9jXdZgI8WjVsiJRvG6rlsSA7MgbIic
	 TpD3XBUNcCpcyLjnxSPzzd2ZH9uSIe8kIVQgsoe4wdBt6WuFPqd0VEitiuG8WtIHh7
	 nPOU/MHaV0hfA2UXtSenBUmiONhkxQP8FmYyoO9Eo3Hg5HBk1z5q5VbPrJTc4F5boE
	 Mv5dAEvtRdM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F4C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602699357.903.16414533081259162615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc978e1112d99cbc8e3765f8a76f22b563ae098661d137e0b85960b891daaadb
Date: Wed, 30 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746026993
