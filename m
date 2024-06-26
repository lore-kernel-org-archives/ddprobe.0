Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C70522A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719361403; cv=none; b=HDEW/XCGCnkoi8pQ+tcmC7Fa+F8MmQeUVsJLVCmD+Q29vNgmMhC8ebF0tV5sk85xf5PnCdnZ7WzyNtBxmJ0N0ltpjalnoE0ymmZUWoKxWmuJHlTdYPwWziT3NL++IlXM8rL5gyfWBC3ddxiNcnM6wiDdWzMPX1EKdGYVk8a41dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719361403; c=relaxed/simple;
	bh=560gpIxJMy813vMpNfySEiFmGoNK/SRPfshkczoZz9s=;
	h=To:Subject:From:Message-Id:Date; b=KbyYiQscSuvBtoB9uisSHyzLiL0xhCZaXRBAmIAzzze7/qKgELfrU5/LHmSb5cmwiIon5ZnPhVathMib0hQGD/OQwW0Ax9BdsvMpOLZeLB8gZ8dfd0QF93AEwrzwmO3edPp7rNuLdjp8E8TY0UrmwixIIdGOAfsfptkKMcs+3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URiU5ndk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URiU5ndk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5506C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719361402;
	bh=560gpIxJMy813vMpNfySEiFmGoNK/SRPfshkczoZz9s=;
	h=To:Subject:From:Date:From;
	b=URiU5ndkCDqHfjYU0/JQzvrF+SR83tq/aKxV1TLOnSC26gK/PTn+rrNPvZtv3txHi
	 o8RPL3Y0x+LjGNGjrSvVESUNpTKMdrIkV23cchbVkzGG6ek9kTUQr5ZHVV43O1ju/f
	 gC2ODYJb4UhbLhoqjEqyj7kYknFi9ZTu2sZ34VSHsfE3OdK0TrlyAVoYy/8EoXGj65
	 HBMq2sjfC5au5zQYWjBoWCaQ3iyTEIFRHJ6dQcdKMSQLNblWqaGjLuswP98JxJYrsM
	 39IKlJEkNAZdDiYCMf52TQdqXmhryEhwViUuMNV3qyt+YOScjRkL7+bc7SM7w4rXKD
	 mA5xaljrfjrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D15C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936140276.31270.12604289985523896949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e06b8799a9983092b7d08e4e4f0f3ff2b63c15b1fa1382c0bdf443c74f437fe
Date: Wed, 26 Jun 2024 00:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719361402
