Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68555409A
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792171834; cv=none; b=ZN86FFSsPfT9KOVoNlEMU76Q866lxJ5oD6nx0R0cUZJ/SIkXzqOtG9gukiS+dj1pB9q9zKFobx/DgJn7xoB38OaLJWwWRByjh9dearT/20det1S+EKZoim02N4Bz/ebc2hbHp4OUUnW0C6jB1sFlaMVpo6Zo/KVS2V3UvKANWS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792171834; c=relaxed/simple;
	bh=yjEx5b+r2PG1nu3ChOfMmaDL/CgG+FAtXxLz653OsU4=;
	h=To:Subject:From:Message-Id:Date; b=J1hgIAx5RAQ+YH01eu5OkgTqhRkrOTd3gkcXL6wvxVAxcmSNVSLXVPY+7b5lbjgS9cUrvzPFRg5KkIqlHIshgdbRtIKZQKOajCbM8yVXxJBdhGNMWNTjL88nt5jta/uS5SHVyELf0GzmH5wFh26y5fLKYiEM4mq4dpAYjkjKqDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNGhQIlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNGhQIlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92FBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792171833;
	bh=yjEx5b+r2PG1nu3ChOfMmaDL/CgG+FAtXxLz653OsU4=;
	h=To:Subject:From:Date:From;
	b=TNGhQIlXOH8gmnB0uiML7DeKY3sOjN3wOpjW21tnf1clw3vRPqPoiRX00DuczYdid
	 lmu3UHcYG7Ad3FA5JnflWNs53YHgFpkvLS+eLPj1lU3Vikqkc/a2cD4q66q1uo5s/Y
	 GE2KxuXe3IRL9sO0OuKKs333KHimjeOn0Q+59Qm3bObD66E3mFgtvloCNR41XimV8F
	 WuUYqfIPNkGhuYGIeMf7laDhZPsGZH8FgVBLRLEbL+SiAqKgA9Gjr5MzmST55xCrRj
	 XmlVVb+LmgRwj7SS0I/2fMjKm9V8Iq5h0uYYua0g2JOvt0p4B1DbXyYQAU5UaSEZkD
	 p7wrSgjDNHIjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EECC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217183370.5669.6123766752746192089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20de588f3952cd5242c82a6dee3a897d2f03ed201d8b826f4d5488a0cf541497
Date: Fri, 16 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792171833
