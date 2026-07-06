Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E46346E66
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783366714; cv=none; b=iCI/ibAQPrjBUCSaHVD4kaWK1rqRKlTCTgOP8Gu6pWYOdu892bXIdDZby+TWf4DOHS23FSkQNlFs1uBzBUnSIwYJOYTwXDNkLcXDWyuydca3Lwl64h0aDaEd1ARglSSdrFHbvBFv8IQBD52biVpjgkFjduKLTOtQJ9yJdVPDrxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783366714; c=relaxed/simple;
	bh=xdBGbaxmiHsi9+jCidjWyGraSp3Kn1+DJiuRZIykza4=;
	h=To:Subject:From:Message-Id:Date; b=XxMWWXcY0T2eeqvoh7vMVbeDi/senQkoNSTadSRj3Fndi8CRPkdTwzrBz67n9O42/d/Fd9dweRxE5DRYu6uLqLR9tFDEeZrlFhp0/PJlWwq4CH06IwG/dZaeE1NkRLFoHg3CGujCMJVV93qD38tDgfLiz+/VHJNeNeecC/yo8XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8a13933; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8a13933"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF69C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783366713;
	bh=xdBGbaxmiHsi9+jCidjWyGraSp3Kn1+DJiuRZIykza4=;
	h=To:Subject:From:Date:From;
	b=H8a13933wA61uasNG5VI6cBw94j9lbw5HZzo+4IEDZIQALOa8XnqEiVMlsDLJIZ2u
	 N6jodJC/gZOBq8ddwG+McqXc8r7e5DHX5+w8vD5yJ/mPa5T7sIUFWhhDTZ3/EvlCs1
	 cFymG6xTCeYuvm3FmU1h8f63tTu2pleeLVBI42Y57pq4acm8CQZBAMeWDT6zYHm6zo
	 WFES7Nc0dZWxoGyvENI7DW+24k3hT/CWkTXii3HEsmPTFwLgLahjXgsfcFGuhJzXGg
	 K68+WjI+rgu90hc4tPxt+u1IN5bPOkmD7QcbZSYd8/6eEeAG43IY1ed/95XmOwplG/
	 vKo8f3X+eADKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD080C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336671369.30863.6964765586791301346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d889878efbb33efd5f2cd144a9d30718840818aa5c8738b8cb4910b1b18e0eeb
Date: Mon, 06 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783366713
