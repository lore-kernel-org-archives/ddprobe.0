Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9223E25B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759574994; cv=none; b=PRZH3RUZraT2b0a2td194MycJRUBeSP0k2U0YPailpa8mlrTodKsYkKSoGYdRfzpA4Frf2aO4e8P97jo+GiH0VZt1y7jJQ6ueoSWPeM/17e4sAl5I6COKzQQSF99QctzHrHXW5bjnJUWvzPsW6OrUx01cfsqgcuWLxBxM+Ki2UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759574994; c=relaxed/simple;
	bh=3PVu4QSHEaCIcsISd65TyarNZkaRQ6VrbEHHA/9qW9c=;
	h=To:Subject:From:Message-Id:Date; b=BdAcoUCcn82ehW/gVfpVx3/VseEMhscwnvkSTv7/GuJjha6rIPHvRJf7EvXcnPimRG+0oXPomFoD4CxWWKc0FetR++FJsRLzdcFZM0/gBI3Yy/MCregzsyz9ANx2gpmrj/ODYsrctzYb9cDI445E21koiaSMOnAckNkTbsJuD04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibIwmTox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibIwmTox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759574993;
	bh=3PVu4QSHEaCIcsISd65TyarNZkaRQ6VrbEHHA/9qW9c=;
	h=To:Subject:From:Date:From;
	b=ibIwmToxp+g3uykPC4sDQ9nLigZVBssHw2WoFfbc0w2p1cmP/eW1Y46eMirWycG5i
	 vTpY7E4eyVVy1hZO9MujJJhaz2L1X5FqyA4GgKCSooY0QioXMusyMUeIsswlaqhFg6
	 IdwMBdZhmXLBORlrOCGpVbsGgQVojmulRpsRtpW3JF6Z7HAdQz2ZQ1+b3ceAA8FOQg
	 wEHIg9bKvcyxNw6jAFLR+HG8tDVnn4OSUmKYxD5x+rpEwWIo4Y0i482XZZcmhw9BUU
	 v14vE6KJrbRkujB89tVVmnVqpCEsYifCosSoTa8D5PlEriuaxw6gdXxZUdw0ERcElf
	 agmCBiUqotbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975EBCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957499358.17044.9779228981853342585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb8966030d4035834a7fefec61652f584defa0884bbdbe9f75f73ab0a22d34d
Date: Sat, 04 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759574993
