Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C461E4A2
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724589354; cv=none; b=BcK63hG/bIsN8NCx0HAmp/Li4Bh4rVrR/NLhuZUTZyQ2pfjqJ0iiJ9wAky8Ld6NYe3VTABT9zGcU2D6GXWtkTk8RTRe0p8v8hstiTVskAC7NOr4HXrFOmImJflt3E/feS7oQVXJTCgPzeSuUBN4mJpyDFv2njXsQ/N+EpHmUAeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724589354; c=relaxed/simple;
	bh=vsYQB+fGp9KXzbBqz9qZeQk8y9nZcw4qEsZ/enHjcoM=;
	h=To:Subject:From:Message-Id:Date; b=W4fKknHW597t1cwk00e+zGknaf5+6og+83QwTuVtUuC6Geu3PBcG+5CdbmN+xPVAo0TGv5XAVhX1FAQUu5VORu4tV3PH1NgKYkinlhz4iKjy49sqSP+dbcS3FLYpg7eqCm46+3ZmQwbVfjqnoUOwJDPakVlDeVsulJ2QwLim9uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRBEM1WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRBEM1WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED3C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724589353;
	bh=vsYQB+fGp9KXzbBqz9qZeQk8y9nZcw4qEsZ/enHjcoM=;
	h=To:Subject:From:Date:From;
	b=XRBEM1WBk0V83nLBaR1LCEaazRDhcxtrMQOF+w1FG1Zve9jdu9Ux0lrUDEubzBnjE
	 rNbEs5zEn21TZM/eUOQ8wiqyRsrZae7T6LgQb1D6tacAehEKAZ79VZvdK182pc0EV1
	 pOkmeRqdsiW8qsAe2uODno0H/64tw5s2NktSM0Buf5mSm0RfbrkR8S7gmO+r74n/uv
	 3Rpa8C4poh5HFkUACXQ8nse898vp1LGGWBxDj6q4/zAqIJaLz7renlbb5y9ieB62bL
	 POuSX4on8z+vdeTyvURW9n6Qlj5dJPlUXtX5GQ872WL7U+lwe6H0jAesaC2kaGCbIQ
	 GFO/WE6CaLqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F9C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458935358.17887.2993217254231063912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b057b0af8dde85502305c31f9e3829025cd2fc391e409153b94c5a364998e58
Date: Sun, 25 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724589353
