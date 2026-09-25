Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA2135F180
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790344834; cv=none; b=czKS6vKTLiJR9bGC5UJzwrmgH0wVLqBG3gVzl0E7W1R5IRHbQJJ1UuNjOvmRq45vhTK26w7WNbWqcudKZo+F5CnARgF3JUTA9zfKIp4AuwrFC2CSMoLcVCU8R66bL1LVImZUNnyooUKyuqRAZ0IkE6KaYtcOHE3f2AV/TxmHnos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790344834; c=relaxed/simple;
	bh=xsruA0NZM5IhEuMBeCODtiJK4Vz6MUc0TYajJVYr1/E=;
	h=To:Subject:From:Message-Id:Date; b=nar5X4yozK2FZBJwPHez0kDB1OwcK3rDw3KzBDegRkvBMlEZyCt9xRX8n8Uxc0rBtn4RmdjgcSGATPHng4ik8RDA+lfsT/eURPS/u9QzW43LJnu6RJthbuApy++Sy6q+DfM2iw2pFtpBcmW58/C0sa1jJMKEMyj1jZvFTgOSm+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7Vw9Mcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7Vw9Mcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4FFC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790344833;
	bh=xsruA0NZM5IhEuMBeCODtiJK4Vz6MUc0TYajJVYr1/E=;
	h=To:Subject:From:Date:From;
	b=A7Vw9McxAhzzLVOgSWIUOmw/I2r8nVruqOYwz2/4mMuahTQaYDjImR2Db0zB/yAt0
	 Hc4dByXuY0h4HFtQrE+IcpsQIO9HxuL8aZikqlWqZJeX7fd/Bv5lp1lsRJhZaGIYls
	 GcZFhSCTx/jUKj63LGk+GIt7HKoodN9sAJaxxYzpvWW+q40LvK9uZHYoxngPkXNFmr
	 KcHMSiTCQzweZTTCRY4tvgeR3GZBWrX5ElBTlPvMw2YhpxbsZLX+De2stRiXoNq+KD
	 Tq8Ho0Ez8/biSnGdLszTPNoF+U2aInyaywNEHRv3SdpOz0T7oEPBrJhKFPt5ZENtOY
	 PZ+5fSHZbQ+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD8FC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034483369.18673.11897684052377141730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5748328befc579553cc053eab8e6a575d0bc12315f0baa8225a48bcc6786d7cf
Date: Fri, 25 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790344833
