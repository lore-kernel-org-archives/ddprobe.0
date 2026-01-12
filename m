Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81343596F3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768225434; cv=none; b=Twpz+aSfwTCP8r3QjGKurYivKfY2/3n7ZmRYsaJLalns9Cme2/z8CZDiwybndD6KQM7dD+zRA++o+uG/HEQm7oXYQ39xDze6xxd+nShh4dUO5FJzeD1DcUDNc1gmyYDYbIEkv22GIXysNuShAgilhjWJs2si1SCXeODw1FHugcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768225434; c=relaxed/simple;
	bh=/id6c5UmBgdZkigOG3D2mHhlctqGRgU3zCtNKGcABko=;
	h=To:Subject:From:Message-Id:Date; b=kw02xQoVJ4D6mPEWSkkISY2yUo9nkei+thkFlWY3DVrHcHdmw084og8amLNP1JPjHpQ6Tn+uKYqemwNWGEP4yLENt7x9TiXhAZpT9bJ+/Jm8qFiR8lZ3spNcUgR+F+lgiemY1okxIcEbYoSb1E7IXa/rG2S0FQMvBd0F62qa/VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY6i8K8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY6i8K8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D48C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768225433;
	bh=/id6c5UmBgdZkigOG3D2mHhlctqGRgU3zCtNKGcABko=;
	h=To:Subject:From:Date:From;
	b=YY6i8K8Go3yHTdHpwuTOvM/23XpG8lWoV0xH++hfId0J2cKEgOrIDDs/tiRFhqb3Z
	 62ifZtdzPkhIBmb6+JBEWc+KKmkGN0okNCBwos0zwpw5qtPRTZH8OD3ZhW/uv7AYMa
	 OVnGG6dObAbAEvUhL7UUhRGEhK/2rhBq4t85sizZz8Fva8bZtdRyIcjgyJ1BHFQAFm
	 XP32ZxiSx5TXIfo2LFHQKFA8WnMGLz/GSPWmOy7ULi4VIQ1fUeok1FmDTe7RWm0Anj
	 8vuvAjCBXh6WmiWzhMjWFZ6nqDzEp8hFUH4yXo/UNi1ciLznKxObev2X1ZTzf0qdjZ
	 S5Ha86ORc9tRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A02C9EC8D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822543358.30237.6714282361496898460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf70c48807477873e84920c4fb2476cdd50084e72f4b25b4d03c375c54dd5578
Date: Mon, 12 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768225433
