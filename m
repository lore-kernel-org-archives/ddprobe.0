Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E561F0995
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761965994; cv=none; b=ZqoUF1I0/qPzavc9rzDnIPYKktqppAAaxsDVg1a49YwZwmAKu7KL449AGXI8HM4YqpC6Ys2m3SaGNL47U3uzbRkxaxBPZftkjObxMz9EUbWWjXhrPktKgl8PNfJXOL5YPaAFTDi489BOcaWI0CdUAzosuPJw0CNQWleV1D45sx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761965994; c=relaxed/simple;
	bh=pIH7FXg7pcKXGHk0hmDA1x6xudzzy4S4dGDUGutdOjQ=;
	h=To:Subject:From:Message-Id:Date; b=L9bUVLtuBcMAmO+URhLm28Bglewvip2Y3pjH4o+4IieP1IC6nhATmhuGjk0z3oonzEoGiAfYRiucuN1kXfRmNI/iO9+ZDgNUtMNk/3aw8CAQGO4famNRX6QFtwfaKqV4Ws2OCi+L0RyoMPlaZzRFo3DWV7weijVAFgfP/gDJuYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM9EvbUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM9EvbUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1062C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761965993;
	bh=pIH7FXg7pcKXGHk0hmDA1x6xudzzy4S4dGDUGutdOjQ=;
	h=To:Subject:From:Date:From;
	b=cM9EvbUjywT+UnNRhmavNW/G1qAg4vneHY7Gokxt6+ePKbRVBB1+D2atdeqEVZKkf
	 TI7AKEz67DG+boRQMs8Qj9SAWWPDMoABNN7goEZSzaIK3Q+zbrH431nJgfdMelUfLS
	 cMGJwsjR4iwF9IqSaHCaX3jMg12gSmb1QfAiczTYS50/AbesnDrASUwmbpBTcf1QEg
	 m9CG52cS2LjkSNyxnItdBKrpXBzR5/Ivue5Df77m9doK/v8vek6ueS+6MHjk+enKKM
	 UE94fpCw6BF/MW+4b7Y83TF8pdzUWfGbCAnzdNQdjPHURI61qI4FToITKPzIZx0hln
	 447Nmd+lE/Mug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F0CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196599358.20876.13973734711651239051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb14a773cad6e6c0e9632702aa373c8887f2e51a58c1b3299639e6d868ca34c9
Date: Sat, 01 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761965993
