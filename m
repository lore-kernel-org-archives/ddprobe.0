Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F55125EF87
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761192594; cv=none; b=lkmO/kljqOdy0gExbDG9IWUoLXEbo5aiSokubmY1pv3vCcHpQLKrECeHC3bMgtO1exzT0edS69ht+ywbzgGsEk8Xtd0BdTDSgUU1gmDirXD4LREi0Kor7G9WVp67TJagZBeLEksMPEanGL0Fh7ZUpirn13qytYkVlXIxSNfc9AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761192594; c=relaxed/simple;
	bh=hMVvqxElyp2WgK6jD/ULYWcSDb+kTVSc5xH8QzpjG0w=;
	h=To:Subject:From:Message-Id:Date; b=MPKq/m/CBlW2YNIStZ643GcdN7j7BKMIrJE4NUa7T7ppjfJhRcw2jneSfWp3jUr0RjUJtX8mEq/wnr8UdKKs3Wo/VWgutc2hRKb6TsxzTPlkWSkBQXJV1LPPx9LNKBxVP5xqc/7ZffYa5mjljlucXQdMgdGgxQf6tE2wICHwFVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af5XAqU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af5XAqU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A712FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761192593;
	bh=hMVvqxElyp2WgK6jD/ULYWcSDb+kTVSc5xH8QzpjG0w=;
	h=To:Subject:From:Date:From;
	b=af5XAqU2iVyjGV97pmj6AZ6J5S2Xzs6U8Tmxo8LJfCYBCIb9q4+JIdZmSaDRw9vOC
	 hmmvuQt52j0WB7wY62kwb7M3K5OdF+mnJoG6I0yYh2xJNs3PMjeNUFiwcj2x4fNuh4
	 WsohbgdggSGVinwQeSMadJQl0jzVmtpSB+UxAI4k+vpVs1bl1vuBJTwnRefLUUDIbV
	 bqQLYWAKlRYOlDyrKrCJiu7P/sIFvZ5Hd+BeaFZTB4W3uYd0g8bza1Hrido+3bxXRH
	 g3cFRTgJQ2Vc5pyxmcj9a6S109ct6NcVBFImRADYyaiDTS08/lVyProEB13/8m9bDT
	 ZKkfThdS+ANdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58FCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119259357.2797.15918297629648333918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d806dd58a062886f8cdd176c77c404b914c787b66998c2c70a4f46edfeebd59e
Date: Thu, 23 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761192593
