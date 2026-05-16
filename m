Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30AF2BDC23
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778901634; cv=none; b=s4JF6i7gtCX2xG550WJJ5sbFrmZ2b/99Di4V2u4F3dhvyb82owc+9s6+Sl2IdMC3Oa/0IoAxgzW6XLaBs076udTDMVm4ZN6zHrK+6/mTWy+T8iiqEnWcM0F9CAsPAW0QMz3qObRAzJc3KauQn468E2e6RWlxvtq+YelMUPaNmiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778901634; c=relaxed/simple;
	bh=5jWmAglhWI0w5K5EISWoLZtE/3yMq2fXn7v7CXuMOiE=;
	h=To:Subject:From:Message-Id:Date; b=UY+M3U26QvT9/7YOvKFVuquCdW8j6P7/mqiO7YtTuWNS74DimAd0JT8pXWAQhap30ch6sz1fwJNtWQzhBNcUxV2lTxmf/j50/7WwtyoTErFR3qfxPTGEJ28d+fTwldrDBtlUhCtckJALLpZJIIA17BokjvsyBzA4BIEBQ/2FsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df9F8yTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df9F8yTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54EFC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778901633;
	bh=5jWmAglhWI0w5K5EISWoLZtE/3yMq2fXn7v7CXuMOiE=;
	h=To:Subject:From:Date:From;
	b=Df9F8yTpgYM/jLtkfWyh8uqIi3kbl7wIVmr6lpdFZT4ol06YJOGvhqELrGZp30c17
	 yqNzUdaDs+B/dNI7JMZ6pYi0OMSX1gYsc750AH3jX1XoCWGP+fyC00VQUQ7QYeUjT5
	 wZW/TgorKOjgKVA0E0BevjDoeMEeUJ1o9MI1mIMn7aGnQB5s+HrrSurwh2hQGPTdHW
	 992/a0+pYh2Nefpk6gyklV8YWhbwwt4Pq3A5J6Aprx4IM+JOtcAZCQE4OxjAZm+Nrk
	 ibKlyACKXpNI/VDgvu6rN+MqjI1+8iwtpJxLDYag6ExZ+ZhUk46Z/ZsxXVubgWrvAj
	 PVT4Foyacrv2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25EACD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890163369.16192.657754836295217254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25243f542c010288d865c046e47445909bc0911c7d47ee2d63e0a7ffe47d850f
Date: Sat, 16 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778901633
