Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8055B322B72
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781841994; cv=none; b=ThGxVKia4mJwa4pzrOKxubNjPGozK0EqMWCEoaVV4CNr0B4oLXlhp97WQBcBVUl7qBaGjdFDMwVkcNaDlWfunHTW3qUoJaxD8XvNuIfbZxljHZ+dlYWafQJnB+VmBjwbji7uSuZP4QElSR19tDUMZK+HrezQ7KehFdZO93HauUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781841994; c=relaxed/simple;
	bh=7RWzYJdsHw7+JzpFWLHQJe3Za8JRSqKfcYOFvjJknxg=;
	h=To:Subject:From:Message-Id:Date; b=Ar4vk3qb5aF81H75Mdo3bmQQqVhyaxSHQQh2lypD0XuEqOHLuwJCe6d4z7QN8W8i5g0GCChtXGVQGwqay2ec3vOQuK6+INK0wShMzclqZstfSC99Dg4HxDxZpjSJwcqAT8Rmjx+pDmiTCLu8iZ6ZDCvpbPEuFzxO2LP0AJMPbc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxqh0aT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxqh0aT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C8CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781841993;
	bh=7RWzYJdsHw7+JzpFWLHQJe3Za8JRSqKfcYOFvjJknxg=;
	h=To:Subject:From:Date:From;
	b=fxqh0aT5aOFvSEuq4+jLz3OUW2MybBzICU6G/WJvJR/1Tt7G8A+hQNYyMOJkURpJA
	 /+7hVpa0hA+Jxb2QE54qYZf/cYVHMqU9lshqzneRDyNo+Syj7MQX0a/lCc7qPrgfbm
	 EQP8Hlgls5fAk6NghHXrtBAIVLpm09SYlaHAO9ofaQ3StY/QYyI7tn7b2tbr4/puYs
	 ohfKNGRsYfu91vKl9GqdKY387qUCyavRgyjafMKodaDgqH5LzKQDKwmDxnpDw3Xp3R
	 mFQctWLKRhQsOIW/9tsJ7UNOh7YO5XJhpJo5uRrovvaqsba3+Hck/rygOA07R0JBnc
	 UjqpO/m/NE9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C9CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184199371.6930.5857684417970767365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2390b8bd8623d8624c500d9ebe77058200e7bb1dcc83f14d8dffde7683ec4060
Date: Fri, 19 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781841993
