Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F8163
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755134394; cv=none; b=cx6vstkDzVyq69G2xKPgxksHj52MY2/3vANHGsyPdBZRnO0xb4n26wnX7qBzgZ7SuEppR07uyWdQSnpnUwF1XwDi87M9JvtKKVenzgd8W4P6xtfnhIbGkWg+vGADjdRyqF/hmwJC+nyRwgaGOIqAAKpX+Bwdzm47S91lgnA7Vew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755134394; c=relaxed/simple;
	bh=5n0/bjeFVM0Hhysa/PNfOEM6uVs6VBLy/ner+haFi0M=;
	h=To:Subject:From:Message-Id:Date; b=PRbiR5FQQ1qTAfUmrCekRBY89EkzuvJNtvBnIML/54wD128fqNjyvt9H17pe0W6O0sI8YzAFATDGpJmIQVjbklVYMg4vfR8UBuNjji/BbEFcKPxXQp+6wttFsiaeHgsGrA0Oj5OBmi+9p8VFdOd9CkE8aTHIwR8/XGGYmXkWeec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn1AP7Oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn1AP7Oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B0C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755134393;
	bh=5n0/bjeFVM0Hhysa/PNfOEM6uVs6VBLy/ner+haFi0M=;
	h=To:Subject:From:Date:From;
	b=rn1AP7OoK3czfk3LnVHtVe2i+LBXOqK9gI0TMD1EHY1M/i90kZ2L65y9VBiCAFCwB
	 3RxsWqBLcmc/BG9WUskbLgODzCI2nzYXN84ZxaDcczDkVgvN1O9cYQhm48z2A9WCda
	 zmxF8Ftl/QNR1+T627NL/BoS8lQo4ZZ5JTOYLS5d+CF/5Urr03iHppSQCfQ6+4S7+r
	 bdOyKsz7GpXju0N7ERuMbDRftkVtt54PGVTZbhq499kMhRRYSaMnycGxc2WKma5tnl
	 bMz9se0k7S1AuEZy3VP5kbC81hSWF1MrX5qUzcVI78S41TPmR3dxJ/8m5KsmMbvUpK
	 q2trRo0i990VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D06CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513439357.10940.17518764458797874022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23706f74849e03f89be3fa7f59977c9ea3277e8aaed9e64bb0ab54daabebb72c
Date: Thu, 14 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755134393
