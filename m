Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B998715E5BB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769264633; cv=none; b=Iax3vZHbvDhYMhh/3DJ/7U6eYtwODO+9gq7B5TpXxA/1okhksyoNw7K1H+2e2ZozsXNvUfLdAT3W5/535VrEHeFA1CokgyQYpwBM6HOeQ6cjIlDov+xk51PPObjFcIBIcGFCG2DZv6WwPcH+E6KKRLKc2LKdtvIjs9sPfcnXle0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769264633; c=relaxed/simple;
	bh=KP9F9IA1cKA759eHx3dYHvwLFoyu5JnmZuxPYEHLWnY=;
	h=To:Subject:From:Message-Id:Date; b=rkYA/EANdQzntCatZOAMrQ9zrkLTFfNBqpABUVW5nvjarD6jAWwMTD2LliKiyNmhLWfMd4zRiYHQcWwNBYvZmAKUbd0DWuZ/XW5pmp4TZWA3hUAbcPN+NAJyubexv/GzhcfL4zi2rojphbMozdUJJ/aZ7yBVIaQ1j+Ps2WcfqWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv+8VJGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv+8VJGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA6FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769264633;
	bh=KP9F9IA1cKA759eHx3dYHvwLFoyu5JnmZuxPYEHLWnY=;
	h=To:Subject:From:Date:From;
	b=Pv+8VJGBO8RUFgcNTVwmOEezykECxbZDIcCKfvMwIGSnqgd9wgu2+C1tzwmqHBnc9
	 AfWIfNsluYrBKwC27N+Fflx5uzkiIfSOgLRmHibQ2/+5KCnwQiRrbBjMNh8DVrunGc
	 wTU9YhYVlm1FXO0+lP9yXbeGrx0DfDQEaXouJbUOKs8XsH5YhUbvoqpAi6EB4cjw6j
	 HU/0x9AsoZ3lQHOo0Qsw87Hxl/9rx3w1na2jh0FrXz4HsDciGgS/YtZtbbsEAeR+1K
	 CWEBTz8Pe4q+qcKHCq4IKoNMLiknJhAE67K2Cs6tfonBTj/0soXuF9U+Wi/TjyL4el
	 wrcmXJrWiq4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F450D715EB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926463357.24211.14102170615946337573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d78966068f50519eddc5f3d3e3b15aef4e7637f4ed8c829e9a630501608645
Date: Sat, 24 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769264633
