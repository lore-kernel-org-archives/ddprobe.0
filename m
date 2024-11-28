Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B413DBB1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732773354; cv=none; b=UxQgOa/4XM6MOswG9Dh/vzWmAmDRdnu6hQ2MhuQq6EckJOkTGsLpLb5PmkFjJ87rwI0OxRlkU8bYUE0TdWIsp7JqqydK6i2PjhfBaaBwN1IfXl+4bI5KPk+cjn+eMl5a4DMjdp9aXgwzcAbqRBWDWXKqR3sRi2KkUDDY/VJLQnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732773354; c=relaxed/simple;
	bh=ZyJd80As9tVbx6jKDmG/MeULE32OvLx93RQrACXoVNU=;
	h=To:Subject:From:Message-Id:Date; b=OcR+Eiqu2M5UGVuM8R5kXATDIk/ZfQ8dtJbHU5K2aG78AF01wFBzBCmvCIHQN1I7uXccjBmS21rhSPmtoBntUR2W0Ex16xpnPssq/h6y69NU1RbDJpawqkwgWCDqKffZpRBVZyxICz5YFI/iv33FeomFTULAvQ61Xq1cNByofRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHuz3LgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHuz3LgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0891C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732773353;
	bh=ZyJd80As9tVbx6jKDmG/MeULE32OvLx93RQrACXoVNU=;
	h=To:Subject:From:Date:From;
	b=HHuz3LgDUqu8OizfX/3D7ip9wd8MBZ2/ld5k+ipdb2F+3nCiZcyKu6XnynINBfluA
	 jmew3cGVWzybpY/i4h+/KX8wpt3VZ3oWhlKbMrXEbCMPZtrR6V2hoB28QmyQeBdiVN
	 BYAORkZO0suTdWOLRfMFfifMazFuBKq1PuxoouPJVQrBT2Qvn780lE5IMx15ziRLQT
	 UbIlCMFpesKsOhRF/kuTEZgkNF8NOJbj/jczChOPo5kTEQ+t0PEYPb/vG7n6BwyOax
	 GhlyOnJcLhShou1zlXeEoi4Zjf1QfnymmLLk2x7AiTvHoTX1R5D0B2uaKWmey9u+8i
	 xEYBPZ2II7HVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0F3D66BA0
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277335363.24941.10314691947619718017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b014b79efc2889512cf740d5ddace52a0446d7cb7cdbaf6f992c4dee331ad13f
Date: Thu, 28 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732773353
