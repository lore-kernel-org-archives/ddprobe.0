Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254A245025
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729458954; cv=none; b=g6szvCwD4cRhH7GjpCodHT9yFl26xtf1mgNOClJWLh8ZEpWgBh09M8iZrmkss6CxGFHvhDCDAHMyovZ55qeUuAroz6Bn/TunKiC3Hiz5O9Ii2XaAdMtevCmIZHdfASeROaTGbqUlOe04TLdT9Q3tRzGpEbv5Q8wZIx5YlUyaa68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729458954; c=relaxed/simple;
	bh=HY6PvLIBA2sTJIuuknt1EYVX+VKLLsgdodcp2SI9CeI=;
	h=To:Subject:From:Message-Id:Date; b=MJxFPRtog9H6++u7F0Vy8n0+11Lo5Hx1rOUF0NIK9YW1fEbcAtmgnJ6H+35U852f26H9l0GHHaf4UBpG0tJDnaMFzTHWHx8J5Zc2eqh+OqPAgiDlHek89l2bXzNuwrvtR5Tyh0tFvAfpUbKK6yASv8ik6mXI9UkCmKnutELF+4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHfzPiCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHfzPiCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D4AC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729458953;
	bh=HY6PvLIBA2sTJIuuknt1EYVX+VKLLsgdodcp2SI9CeI=;
	h=To:Subject:From:Date:From;
	b=SHfzPiCkTEp08aTQYfpg+3Vl3YrNXk01H0Cow+C2DfOMfJ4yZziHukChVY+4ThJwM
	 IX62u8I5TTE2SvrnB0BwZxSqduTxkbIwYraiaq+K1n85k+UfWZHitiZJl2uE35H5YQ
	 Xuth8QuoBnPpdxZWh9DzSald9vIECwIu/E6EZozl63rVsBxnRKQzlmq4r8w3BdTwaK
	 zL9Po4WQlfcOBmeytJQnFD+6y9749S6X0LBjEyZueOx4NVJFQgRO78ypXqzJz/COm2
	 3tFACcZpTMkcQyZrw0wc6q3aRsbcwvZU5O1yd3z/GxLhKtUbEL3ZbqzalMbA3flBV7
	 zjpGgO52lNmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDDFD3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945895362.16807.10968574560401050275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13aaa51b661742e90d97c86f3bcf7879f3e5b51cbbed4e884cb63bbc97711a3
Date: Sun, 20 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729458953
