Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BC7288C8C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752339593; cv=none; b=miyt4OSGtBclctYRfPLzVzSsN6RkLVJGchp/23Iv8K443Rxd6GPU5MlGWSv9ydywECXM36OD3VE4uPonug43V/Xek0enP2N/w2kGXx+Xapj3Em2FVjnxXzva/BDz6LFMKRxLw1Qra/UENVkwfKSAog39Gq6MuyBDEyINANUSPmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752339593; c=relaxed/simple;
	bh=FrCa2x8TXmimfZcY70mQe0ezVUm7BWCaW5rFn0HGDtM=;
	h=To:Subject:From:Message-Id:Date; b=ahwihBXhWnowYzvEBtx64NydwSU351JpcOmQGGHX+oiD1pEpGnzH3Iyor9wpnC/gj0bIlXBmEnxIbVM9BaFtTVLtx4hJTn+4LZdfhQQRCOd0Ge1WrcUZcJe2Mu+9uGghUeCch5rk8H2b8O/WKgoreClE/0JiyctdZbUzhHWAptQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nf2myy1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nf2myy1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752339593;
	bh=FrCa2x8TXmimfZcY70mQe0ezVUm7BWCaW5rFn0HGDtM=;
	h=To:Subject:From:Date:From;
	b=nf2myy1G9tn++5leruByUD2YkhTwMFFaMz3O80MD/kqyjLqaeLBwXX/v6/rVP7vPY
	 Z+94Ay6oNbHhmSOYIBMDg8knI+K/ZB0AqXTHbAauchM2wjXzOWH7Rb/ds8T2zNrWcp
	 gnRln/sE4aC0VpKeOhr5VsjTX0i7zgqMmrNpHYwjvGKBJ1nG/z1CrjNbo/A/7tgr6W
	 mwqqK3SDU1NCiZmzWrHorPfSbrf7fcDf6dej4yB54UbkHGlzjoeYUVFP2GVU3Zs9Bg
	 UFnh2ZPs1/DHJDaTpSchsgwpAbF5vOVfEX2jgb9zqIsJ6JmGiP5gb7VL7Apwd/hXCy
	 /juaeyy1j0YTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA1C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233959357.907.5863991641048800770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd69de26b2f0aecdf6474e86a53a4b9653672909e22ba7a05920e36114be5766
Date: Sat, 12 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752339593
