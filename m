Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497A38F7D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735954554; cv=none; b=poqusecY6TdMqjLJvBeTIdwoYxuAYwB94JY9Z3eSwhW1Qd6BXzuW6MWf3VDdFK3HNeoUvBMbEgSMedWuUyUX2cdyWsL/Gv6i5v1MayG0Jl+wz83VyFw+0prhwxVCrss0o1vPFe199Fv4/2LnrOo7x1VbbN7QSvdFvr9CDiT9uMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735954554; c=relaxed/simple;
	bh=juXLu8rRVhJMx/BwNzFB0sHbeJlv7/TlI3v2AmEziXo=;
	h=To:Subject:From:Message-Id:Date; b=S16Xm3nbPuFTzjvWfZCNqsHz7unHeiyhsjYvU0y8WVV6XDweWNCqOYQQf/P6eWpI1RGMLpJEbYLKZivURkEc9H2V9g7BeL/+KrKuIjzQZGkzIqAfNIOT6Px1Za8pCsWsRXwDQZauB1i5shl5E7Bb6Fqu7rEU9FSQOlA7h6a6LCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaHFIJ3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaHFIJ3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3129C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735954553;
	bh=juXLu8rRVhJMx/BwNzFB0sHbeJlv7/TlI3v2AmEziXo=;
	h=To:Subject:From:Date:From;
	b=GaHFIJ3ztL5pVVJagcTmrum7DT7njnxVuOc6opwiVO3BSnHaft3Qtd4jiJigogIr/
	 w1F4Fyj/2S0LqMOPa7G4yqich4C8NZtXKendEhkPvc9vZC60wh/G5Qqih/KolelxHn
	 bwuSyxBuAnjqGbQiTfWGqd44kVf2zW1ICPzkdXOo3z1ZBhY9BCPK2a+PfpRzp81Tya
	 Gxr1Ei8yo6ZdYWkretKoJ+2pAAivb9v4ph0JAUiDmKlZ4jC4Xn1iwF60PBs88RHpq3
	 GHHvAg59iYZQw8vSQ1fYPOkcFVq2KHLcfmq9gejvyJgfeLBdZlRYe38eKOkPgLFqC7
	 wm8Tje2cK1mRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF70E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595455362.26625.11819372158192345579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2ce902860b6eb021a72fe04da818b6d2a26fffef4fb72bde3ece5977ee30cf
Date: Sat, 04 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735954553
