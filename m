Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0951511700
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706254697; cv=none; b=o7FWZ1ZrlZIkmj3jRz34p7k0+9Pd/U7Q5wIACOkX5qjs66FVXIy+ufkMWox1DOSscBRqu7+TctM9b6X+Op73pl3CWQMINcwJ1X3ISAh0gGgFqVN9el2jTGnYJRU1q6cwrP1PROFnPR7uhqI/0IiUG7d0jhezV3/vGKxgcPx3z0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706254697; c=relaxed/simple;
	bh=kHpw5GK4yfddKb6+yyy2PbSFFn/sxvLOJXdM6kwJqmA=;
	h=To:Subject:From:Message-Id:Date; b=K7zTW4+iHrO7gyOEFvV4fe+hmprmfyEtkSnyF7ODdfR6PGtrEiNTuwVVf1EntuxB3Ag2jPBRN90SBeuj7ggQhFqYetaeEMXvxaKpejX/gKnwb8IiOpCr30yS8bgVg2eeLGRfrdCY1KKE8FQFeV8uyt1VPeeHIP/d3MqqGyoE5yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9qUCKnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9qUCKnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72042C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706254696;
	bh=kHpw5GK4yfddKb6+yyy2PbSFFn/sxvLOJXdM6kwJqmA=;
	h=To:Subject:From:Date:From;
	b=d9qUCKnhNHFY2gf3Y/B3tUd7FHO5J2E7jvy7Ylx/tR/3ori9Lm1UhJDNR9iqTmOAK
	 TkLsH7Ar0eTqVKXpjBpYOmst6ycK3SpytUobMIELSOfcokf3hG/oUfKmppLcsUtgr5
	 uY80fDvNMrKC5hUsJDKC+uFXfIzkflFvfaabfTqb8iOuCCFZmtECvXdaq9x3UjnsUb
	 4O9B9mxvunmovDHCGq1gFVswuN3ALc/miRVifQ51XsilcXW60YINdJx2E+lq/1KOtX
	 lLyE9uevudP19BtfVucT+aBY6L9oE7D7H6zCPGz4ZH+cclta9NnvluSq+CV47to9KV
	 IftVgm1/9clZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFD3C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625469636.781.8485485758354968982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb024df3038a99b4681718a3d5a4675d471ece748fbdf2027ccec2bf48aab17
Date: Fri, 26 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706254696
