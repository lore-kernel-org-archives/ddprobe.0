Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F782853F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754325595; cv=none; b=fzZsKNJpCqT0/NfSOvBLiqdxC50I0u5EPPq/MH9RpsHM4kwGWryDE9GEJ5Xm3unUfDW2yA1Sw6C0BTQyt2SYQPgoFq2Q66/r+LD1OoaFvtSU/wM5OSfFc8TNn/2Bd+VkV6AlGfSUa4de6ZjL/UCbvBdxgADuClmZ+3qYhvMOpf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754325595; c=relaxed/simple;
	bh=uMCwu7vtWUU/d9NXCIxKzukkFkoKu/eC/jnKzMDnhH8=;
	h=To:Subject:From:Message-Id:Date; b=ErRkwdu6Qe/FMuclRcuNULasnktN0T5+k31ZCnYqVihW5YMv3b0aevxMavjgFgCrDpt8BVgOFkb6qtc90LI2JUtlbx1zsD4QIDNPiGaNXPzfjFzvn42hrbKv7PY13LQdnMWwfW3BRiolTlQitchUZIenp8lM7y/bJ9HLnATtQqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/HQffxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/HQffxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754325593;
	bh=uMCwu7vtWUU/d9NXCIxKzukkFkoKu/eC/jnKzMDnhH8=;
	h=To:Subject:From:Date:From;
	b=T/HQffxSP0wbR1dcCf2zXJo9yHNWkaxRM+UXAtI19QUE/4nOuuvfRcmHUFvjx+6VO
	 Zzxa2VMfjcR0yAxXbwoedlPL/S5CrydOXag+6I0vRi54dg3MjnrQQukOmizhDApexn
	 b0BJ7z4KbUW+vnP2MCwI3TympQKOfdetK2HbrJ48KixuC4QeuMwsGydRHgAX9NsJpV
	 Fh92M26OrGo4T/xhi8itipdTY9cl6T8lZ/Bo+YkOvF+4KRUM72+zk+fAz0KSqodT6K
	 21W21ssFLKjMRnmRgXFEY2XYI1apjcE+xHmTXnqWIxT+58crT7M1r476lhPuqG8QuD
	 U/yR7Xl9y9jCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C02C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432559358.4752.12989783700687809227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6758cd65dc3737afa47367f76e9c2dc60544ab1cd35f54785022cfd36db41f
Date: Mon, 04 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754325593
