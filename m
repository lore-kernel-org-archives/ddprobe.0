Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45535134BD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744450194; cv=none; b=dhRQxvcz7rNXIBEJmzKrR9NTql20tg+iT1Lzd4o1yUD2tMPlYAUYIOTUHQdvzFRPtgCJBYfd8LtjR2jmrNbBdLA8oUbT/tO5lNSFPgYdocaBrBlFKDNGi2Dllyh+wq3nQR++jtqmF+NSdkjeWMVv/C+HtoFORq5ndKeKwAXUDqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744450194; c=relaxed/simple;
	bh=3UAgm1d+/l2ffxQ4XEGk3L4nmFEXvkLuSBWECqJVFmE=;
	h=To:Subject:From:Message-Id:Date; b=GBUfFfrTigjFt6q/dXLYltwRXDpgVCkUxPO963yAp2UGl7YqN/hd9cfGW7erPfZW4qSSvvLE1oUYYXCyon913QXKgQYm2CEgf4SuNi6utw9WWsdmptaAvHT4v8bkcWV9JpWlJrvaMDZRD1/6VzIXCQ2qeveLbPJIt54cpW0aeSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqGoEOm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqGoEOm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E06C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744450193;
	bh=3UAgm1d+/l2ffxQ4XEGk3L4nmFEXvkLuSBWECqJVFmE=;
	h=To:Subject:From:Date:From;
	b=FqGoEOm5aRlYT3PA0YiAqNIrlZdkZIvn/5kEfDTf+jUo3PwmAqCm4WBT5CXKCfv5g
	 LSipJ7yN9119jZeJ0bBUULb6DE67+DHUEkhoi4vPozfJlSM5gFzJfCQykeZDZ52iLc
	 t6UPu6jI1hNNMk81p7mDV75WMA89WBkQGdBABGNikhGgc2uMD3QiPg9i1h62St+dC6
	 oQ9tRB5ONAZutHANLpM7Wfusd9Pg9gm3pe2NugE2wKY8qF2vIGWntjijUG6OnGE/KD
	 GTqwe9K8dzSfEYXN8F+HxoO4i8a+U8AaTbHtMQEC/5RaBrfM96gP0bCTFk/LYyueeJ
	 gzG6pvgWtjmfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B6C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445019358.17864.3422740148076990494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db818cc50b75f25f8b95ae310d7a5274188bee42d3b338d62df5b57436eb783
Date: Sat, 12 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744450193
