Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6F92E427C
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764847974; cv=none; b=liCpabUhBMwDGcp5h0MpS1zeXfkRPVyIYe1UY86BPrtkpP7i09gc9PE7e7AvYkDDUH89dhZkPemN/go0OvxusbvyIw8YS9fg/HYl4N9nqoDswQjJ1SUUT96aRqUVWkpaxVg4wcLkaJwG8iiMYSSKZX31ErE0m7zVa4FRXmLEMLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764847974; c=relaxed/simple;
	bh=xN85w7vwt8DIVw7jyrYnxV516IBmRogqjriTGggCJx0=;
	h=To:Subject:From:Message-Id:Date; b=JQIEht0JHj/dQUpfXFb8nes4edl9VtlrtSDVOE5Q1s2iN4nSbtrY42T040r+pnWK1p8rZ11bS/mZ+s9OYbnqDvOjdceb2Ndo8+aXnc1CDj0SB5oxxAeNy6y3tSLjp9s82D7RMgGYeEEQT+5i2o6kKwOnozBwRs8SAVdEvZI/II4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF0GFCqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF0GFCqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0BFC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764847973;
	bh=xN85w7vwt8DIVw7jyrYnxV516IBmRogqjriTGggCJx0=;
	h=To:Subject:From:Date:From;
	b=mF0GFCqV145sUdW/yzUnQmdDivldkouL0Wq9LO/P2LV2Jc1joDnP8C6mh+BoUZBBK
	 YAjN83z5WR8REYbGRaQYzX2HYU0TcdWq56OG/Ntp91bYY630vyogl1pfgwd170rAYU
	 SEMAq+jqRhTkpPQ1mYrrQhEKm2ERZVm8pbMMWayREVI+dN3fZrjJ/fbJg2UVU5bCZ0
	 J2unWNfAmW5/jwghAzc6jSKRDvYNJF9hgzOYNUu32jWZ/IY4sSUh+QyeOV4/BpJw+Z
	 uVre1x4B2qcKLhZy0iapU6aC/oRt0waHl9F3fMes4WB+0Y7RQ1VZ+aogNJ4jqbhHqp
	 7+FGdhMyv9Y1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F3D1F9C5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484797360.16187.18145945571243521546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d4d1307ac64dcacd24fcba6c867810566ad940a3826a03f388e8020a66a793
Date: Thu, 04 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764847973
