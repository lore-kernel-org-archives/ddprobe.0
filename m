Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A1EEA6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757392794; cv=none; b=XK460Ijsu6urtd6V7L3g0o9JWrs1yvp8jJfbtaksjnaRxGoY1NFhehq/JiJRUMGXYISlGuHMl0FFQfEay6QPwgrPzlKhlEkzZ+ub3YOUAv8lKD0MkgYtQTUEvD1IOtVucLT3lXlJfStM74ehxHZx1RiEqY0xYZsSoX10NW0MwnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757392794; c=relaxed/simple;
	bh=TGKC9tk6XtwEVfAqGjV1WoYobqJKibX3aDPX7lpmzxw=;
	h=To:Subject:From:Message-Id:Date; b=YclpIKf4pC95v5HbBK9gDr6mbRLJZLPNHN5WdBvJGdI8ePLLPocFyLFkE7qgkIB46ryGt/9DvC/HmRPgKWRmlQBudIsnVDBtwd+sZwD8qwjSWK/dqMM5iqgSnKAYuoZNWzak8iFr9UiVX3cHwv9zscfPEaK+TbrvSir2qzuRnJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQdlKOCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQdlKOCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1842C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757392793;
	bh=TGKC9tk6XtwEVfAqGjV1WoYobqJKibX3aDPX7lpmzxw=;
	h=To:Subject:From:Date:From;
	b=eQdlKOCphrBfSNQTe1HnOodwlVg7Dn0XVlb/LpzfIHAQA8+cPwQwDnyxj5h/vr73U
	 bLy1fyrf0Wirh/WYrBonL9HeocNS02zLHJSEHNGJLGvKwikk20v2QW5wso9YjiUHcd
	 2GMDbHTDSviCBLFpdUcm1BM5swLn3ABXNKxlFtL0ze42j8LNmpkBwA6SXSxmw3bCIj
	 VQZJ+noX8RrSKALODu+n9Y4GC6nmcmIHalZb5MihWXbVH86AsFvR5uv5sSkpZaM5yZ
	 mt4DMsEJSksopKAwzz510XEcasDxG20Jbpr8pco2U4kjlI6CIGeyCoHo/4lWF+zf4P
	 wnJSp6QaD5I0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F58CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739279359.8627.3448756833722626042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ff0cec019467769585b90daf3c8af2c7b5adbf4f062e5c91d83d1c5fcceb2a
Date: Tue, 09 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757392793
