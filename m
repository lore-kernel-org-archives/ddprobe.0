Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60A2907
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748565594; cv=none; b=svnvXP+Pr+rEvXfnltJYkTO4Tashi8HdZvfBpWmUWc2jt46dY7joeiaDD8OJCo73Dj+4VMJ0tdQhb0H2XTd85lw67NH+aISWSYM4IkWbs7AlEFpCzwplycSfne8K+1MrJ3djmmJa/XFIko+e2kkC7L/uSoBMm9Aub13s6wNu5w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748565594; c=relaxed/simple;
	bh=vnqNTNOwBFEwf5bcbnpkIK+yB5y0jALjSLxTQmlC4sg=;
	h=To:Subject:From:Message-Id:Date; b=tG6X3S0b0cuF3FMNSc7JeS1aKiL0to6ebtm7METg7jEmiFgSvrU7u6v53nevnJTLBG0ACRdiwx1MOXR9GmF3sX3QpcCbDjV6PlbTsok78tHG0/qhr6jJuCg2bDKkioGS1jZAHl5Rc7ldoe284GpEsle/cTh/DtR6lB9l4aVhPSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klKUlDDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klKUlDDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8804C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748565593;
	bh=vnqNTNOwBFEwf5bcbnpkIK+yB5y0jALjSLxTQmlC4sg=;
	h=To:Subject:From:Date:From;
	b=klKUlDDmTY+kpila7SyCrcdkZnNriQ4Rf2H4kCMwwr1hkuOpALeaBeLmwxN9CI0Nc
	 Q+rkMlKYsHM1CzExlNu/WjUj4dLvpeTorbSIHthT4gs9+iqUInYeE0hyOcUS1PPUi7
	 XY4SOoBg7Wczsl2kYvTn+OUh+GyP3EYH5h04Xscwo9yqwdR69xAQsczzpJW1LluX2D
	 7LCZ+deJ3cZDx6t5Np6uV1ogSgXg0TjEE6AQkf8RKZ+Ai1NTILiRh3CC+1m36dc9te
	 yLL7av1RKrzCN2a7Hznz4VCb9DvZYBbcgJ6L2aspGfUbP1Deosew2xIYi0LnYy6SXS
	 CeIcIdfTzIFVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA2C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856559359.30185.12509328643507407102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f51437cd16a5adac47d2c75e9e19e7cf95579a11a823e3508bbc8643849b912
Date: Fri, 30 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748565593
