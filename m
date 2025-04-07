Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD5EB665
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743987594; cv=none; b=ngTQovwDOgYncHEvqJtu0uA3QVDln6GVs933VUNKwvhgD3Nabpp2g6e2mNGXKR1HMX4tHpa0tF8IlmxUXzdzoW1dg0VfAXR9wBD4/kItzgAJVnBD4wRkTgVP6lzsV9E6iEac7tywF+bHXRZn1YpqX6J2LXKXx3wRscn1a8Ez5ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743987594; c=relaxed/simple;
	bh=rGxTegN5L/C7V502Tdu0W2gKqFDNb819nPVykd03qh0=;
	h=To:Subject:From:Message-Id:Date; b=UjA6IXgSdlP1mV2/yCfrZxqP/bl1mY39h+VuDmabN3PgUZ0EnCqONvXYcrLdjHtcVW+5Hc1krI3wP4wg6tG9LZdHJdPP+QAiU1jdFnVXuqU5+hRA1a5a6qVFf1AeW2We4Ukhu3SzHr42NcU2ptu75+3WZ/qcIKxz4GmE0lVvITY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXdqh7ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXdqh7ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB868C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743987593;
	bh=rGxTegN5L/C7V502Tdu0W2gKqFDNb819nPVykd03qh0=;
	h=To:Subject:From:Date:From;
	b=IXdqh7ues4AL3jzKEi95Uls+3SFzN/Si2/UHIiIKg+dft2b7LiC+hemOuJRKrq2R0
	 I/3JHbU3MiI9AmdhOqu+M42c0Mn3DbaxLBizeOZ2cJMBkhUutq7ijabaz4dTOu7Hfj
	 YH4LU32yAstRaDabtfmDl4C/QQCSsm7yaGr3U8SHl9aLwxhTznd7GkKADutqIn1MlM
	 tgd8TTYXz4ncy1UogsIPtTGH9U/X8W2qNbm9BftO5AFGAQQCIE2RzxDDoartUhCm6O
	 bKBwJrXuArxP9wgKNJxY4qQc0b/JNhHvo7RyCyz05LPHi5QEy1MFyIKXHK2mEmA8JM
	 P41O1JXewI/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98892C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398759361.30505.772307631120195313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d291754ec042f4e38f43d5a7cb4d0908a3cf7cecdfc7618546e4e1614ce4c7
Date: Mon, 07 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743987593
