Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643D01E88D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714863143; cv=none; b=NDYH6iUsxrZL4dsImQ2l1OfKRTFVhgrn2eMt0VzxmsPJzMAG/8dT2u8tX+mmW78/lLWxaXVM8utQmID3lCKkzmnKy7ikVcZ+fbkj02WsraUAEmqgFBstMF4e5RFAlLM9kaHTdy3cKGvm6jSgZ80ow2cG88NVAK4nEaXIglBUhE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714863143; c=relaxed/simple;
	bh=d+7luH5ryWfrZL4jfmKbhP3EF0ZyZ18307nYKFl5lHs=;
	h=To:Subject:From:Message-Id:Date; b=Ocww2CgxtE72+p2X0wpBynyYtfYZfmEt5fBPfFSfTb3pk2SyopKb+gTZbahQ/VkK7wCr3hxRa8dsmsIHnO7CA7yS37gTFn9yD23MKXtlZ+/IJSe5t8XimjNz8FG0lyywPb8xSe0VgnfgBPJ3ll+hZVDB57/XPtutToZ6di+yjLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joZXrlPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joZXrlPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF40FC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714863142;
	bh=d+7luH5ryWfrZL4jfmKbhP3EF0ZyZ18307nYKFl5lHs=;
	h=To:Subject:From:Date:From;
	b=joZXrlPWpgr4DqdOWQiCTYec10EBf+6D/DAy6dUk1XmmX2Ku1q5tp1iy3gA+r7yQO
	 /8yxdpYOf61tgAutHgRxL/IbBLaDc3AoFopY4M5FsR4p0K618ZRzEoU+7YyN6+N/2r
	 Y3LWTdj/wzHpPDToiR6RfxH4cGHaA7TsWwaWHKKV2D8rc/iDwVJowl8/vJIb717blj
	 JycOoEq/vkNoBqULoIBR/45oIM/sVhxuKcZhcyRo9urs4DyIx8OB5ozqMfMYDLG3sr
	 KhaYzxR2N5waKaSenZUA/OXmFjW1QLgISWUZLYGbTh4TXbKsSYC+Ke1A+9r7mvCNUF
	 LOo16vKwcNuEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD221C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486314276.32503.8193736025084469853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72afb7b7a4209a9ecb1ecb0313421915447cc6ea346bc1bfad6400539b43163a
Date: Sat, 04 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714863142
