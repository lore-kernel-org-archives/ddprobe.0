Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC46342509
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780310074; cv=none; b=V/nQDHpu4JvzPbMWR6pzeeXfa5IaH4Z/XOOtzdO67GDo1VBLipjGkFOWp1dfZBnKtbv7giVv5eptoLnJBm0dkxbw1ir5riu0B+g/r99LnjtdMZHgace3bmWZwzjgGxAhzU1pXq7mSMtwmWgmhFi8hhyp3cl8A0zxf9tYgdPrkHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780310074; c=relaxed/simple;
	bh=vu5sizSbqs098oJEBX2CeVN8i1bC42R1MYOC+BgW7b0=;
	h=To:Subject:From:Message-Id:Date; b=Dt63aFAQEmi/M33GpoKOSczAAkmsnC8oLeRgepsMhPwPtLtVnrtrUkoaS7L/DjsncGky5c7Ajkm+qViX7C27TinuOLP7uXGRi4xGFkivY16bk84gtF3B+rWN4JIR09Xgn2yA+1F2REkmMeocjpAOW8d622AKQvX16erU7AVvcag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdBs/TjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdBs/TjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D1BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780310073;
	bh=vu5sizSbqs098oJEBX2CeVN8i1bC42R1MYOC+BgW7b0=;
	h=To:Subject:From:Date:From;
	b=NdBs/TjIzwO0CHxjSiGo4rJztWnu8SIxuCVJBpkwou2Lrahx6gssj03IVkxN/9KtT
	 wHZDfTnOD5qI2NM+ASfl7HIDec7fI8Ede3sjf6OLrSUHPgws0WwqSRF40dPkfocZm+
	 LeueBeZfS5XSZdn6RIAKy+Vip6TScmri7Jje1DHpJKPFh6onCCM1XuU/ErGhdVLxmG
	 WvmWzL3koyjKRAbKi5kXJJuvZdMS6bv97SF9LNiJesqZ2BGInlaV1+kY91m13E0ni6
	 TQL3tlO9F1s0gtDcSJQ4XHg78PpM3Yw8Qszb7QwflvABQ6/Kje94g8lvN6xWxpjrdh
	 E8U2yGkF32iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E7CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031007368.22913.14060014283278402551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4e49437a10592a1fa8b95a93aa200f00f5192c45f5d012a99af048bae12959
Date: Mon, 01 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780310073
