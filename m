Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007DA38D
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711849097; cv=none; b=dSxbhTowsfGCWBLprfo9q/Vmnn+qyYL2TyIJ2R3gcnjxYTaNwTTP0KmKTUfFWbCFmR2b2q28lOKWQQHHU6djwUKClvFwKrz2Q19ay2ow1oXH5p7HfGjFLa1E8xjv+SQ0+qgYCLNa8hMEFxi9ivsQ0s+9f3QQIUNkCFP02AGWG9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711849097; c=relaxed/simple;
	bh=0b+nX4zzK7u2gttKqD4mctst8D8ofXMp9rcalNUCZZ8=;
	h=To:Subject:From:Message-Id:Date; b=Knp6y63XDWvE6VOYdtUS7jh4+jGIEOZC1iOkAbDNj+vwVtqmCGdmJ+Tre3aYfnlF1OxTsuwV3uyyiVae4FQwlFbT5n9Ykgcd7m9we36PGlxsXYg+xkywjs6bBRr7j8XDSJ7unn16PxHDaG+Y73dsEksHzFLqZBzEafivvirrazM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5FXXwgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5FXXwgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78776C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711849096;
	bh=0b+nX4zzK7u2gttKqD4mctst8D8ofXMp9rcalNUCZZ8=;
	h=To:Subject:From:Date:From;
	b=K5FXXwgojUEAqLLWPM3//n0Kzrosa6a0jzQsgGxfPzdl1cIFwgH1IFEuE2LeDvHDV
	 /3XYyU6lwxkH296OiVY3uUkBZgwvFvarrSRrzOmkjOOzG9LPQLm1BJcS000Pcjjkg4
	 RTpZtKgJrFC1NI20godKTclZlpEVqiXX+qKNCckC3WS4RlvfFzmphp9ge3qlcmv0ov
	 VbnMnzmmF75612ay6s2V4CJcNpVZJn6NKvqcCz5pt3G4hSwSNWNEXn3mdYBQIrwLsb
	 JMEudZy3AFG4v+kvAy5GlsTE8/j/5WVARmHLYSZS4e9r2tZh/nPkXuKqSDCQ7Yq76N
	 xZu1zYwarVEMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A68C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171184909637.4356.7367516684470512508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2b4ea5cff290499cd9c2fd123dc404c395c515dfe48462f53a07affd430178
Date: Sun, 31 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711849096
