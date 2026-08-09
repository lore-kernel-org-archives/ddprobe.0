Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5253403E9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786263034; cv=none; b=NZ4jhN/RdjADTlrtnH4NE9jh2M2TeiB96A9oSbFf4MtbeRotoxM32aaefphjaT9z6NP0ZXrFtHf5ZM+rr3Bu+3/f/O6kE4oS7Gl+HpfTEFXJJYIWDVygEQQTqOtXy92GD4RXQqCnjRggvTkXBTVTli2TDxiTUEgPRbCLQn5aIVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786263034; c=relaxed/simple;
	bh=DnWzDXFVcOSK3Phd97kfEDfaxtixN0J4LZImuFsvPX8=;
	h=To:Subject:From:Message-Id:Date; b=eR6JhZjFW4947pHI/d+mSFUfINNgRdVOfzK6zinNq26j2cBS/exTP4AOvvm6U4i4j0HeF6KLzJ4argMiwcCvf6zjEgOLvVvqFnnOeFW/755Gu05S46G3hSw6NIAEGUP2hhf6PFAkSj+LOujz611KGqgrNKppwRerlBhjA2YF6Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKxI+vP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKxI+vP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CC3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786263033;
	bh=DnWzDXFVcOSK3Phd97kfEDfaxtixN0J4LZImuFsvPX8=;
	h=To:Subject:From:Date:From;
	b=eKxI+vP7ebOSi4bM3FAW58L/q+Y8WS+s8DaNcUlkXcfdQWHrnOs7pDxtw7fv2VMDX
	 AlSka5jC4RMcbXio+e46piytUvqusnUD4NtboarJfbscSXS1OcH4wy1RqYGkV0uBlg
	 vrqgFmd9CbyqSX/GfO33pOvxwrVSGWD8aj456T3Wml1+QnxZ2+4LGKibZUx/eNRW0q
	 MZfvajd5hI+L0SFfN61hKMhPN0wBKcu0zLKi/w909lyNJCnq3hY2t9GfUJOmmHnDa1
	 NzbHNhjplNLDl4piuQEBI7pETYccD9WS7O3vF+y6pSvkqKzKsguRTWdXV6GYeJjJki
	 Ki5BQdf6+/WFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB965C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626303369.24513.15826235065395376849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6523ee690c80b10fb0243513b90daeb5fffd1c464f99bc9316cfa2b2061b0dd
Date: Sun, 09 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786263033
