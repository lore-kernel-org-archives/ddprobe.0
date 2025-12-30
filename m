Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D22F1FE1
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077034; cv=none; b=hDAw2wALNnYFVhaE+e5+uBZLTZeibwLw+J9MwLb+oILB8H1a8hGNld+NnKDi0RReth0V8/UAXp6qDFlMW7A52S7iLkgoykG8Iw++k3jwjPlFCzelX/0fBzM/sjaupGcGLUvtyx50yC+okK+fSbmTcvZABcGaaayqlh4Uuxj+x24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077034; c=relaxed/simple;
	bh=JiJ7hkNsQ2lcmhpSwmpdlwYwI1//7zBKRFZfUdIkbz4=;
	h=To:Subject:From:Message-Id:Date; b=YtYYNka81yf9x27vhacjL+b0DOsjH6XOhzk5P77KgncJHsJyioXITmw9NvXq/3rg6ZykkQ3i8j0vgIpVT1WoAsOVKcsekqEnFpwtUTY0abGnJfQBlBgvDDzQihAnHix4+3de+j296NRTSqzTHsyD2clMfV5jryLQCakhl/iIyKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRt6+s1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRt6+s1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF2C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767077033;
	bh=JiJ7hkNsQ2lcmhpSwmpdlwYwI1//7zBKRFZfUdIkbz4=;
	h=To:Subject:From:Date:From;
	b=aRt6+s1lj+Y5Bw9/a/XFmVYXEfFv0EtlCr8srADmn54juomtn1SSNZ+kZN8TVCmGu
	 6yTXF/ZP4f47bymjDKvx9fHJSOrxRfN8jPCbGTfJN0pBjbx0KUKxVITNkx33Gnzkfq
	 2ewz7OLsyx26KPrlKkOnNkiJGL774SVsbEgflGkI0MjOuZU0mEVtRCVlyVWrTkdzzI
	 VWgF6KNac32BiJl3ycYA6h+wfunUGLy05//L2HJgDz1fIuMhUiOerHYNR/KfyhaU18
	 nihTSNmHuqi+zXcsbGmwWrP1dqpDKKbjARUHNMExX4PWtfqhI2dox1Mcg3JehaEcQB
	 Dvj6XBU8R1OOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5AE94116
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707703358.7901.15183290184885017521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54453cd4429b13e460d9e537cb60d968e3df98c892d241e22a7f185de9640757
Date: Tue, 30 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767077033
