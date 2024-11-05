Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B897EAD2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730772954; cv=none; b=DN4FKGSax8bbxEAiQTnIvt/2oY65c/k4AshD5QdcTj2F0sSmPYGIMYDATYG2pi3cPwbf0PY8bnuiCmnEPi47XsywgK029h/jZ+eofynGp94lCeLRI2xQ9WXmRH/dPksHewsUd0+CJd0I7PgqWZgpUMvekdXk5ESN1wFjIEkgEg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730772954; c=relaxed/simple;
	bh=K3R4rDEUiRxz44+VNnd3MFJo9GEFITpFciZOxkyKNKg=;
	h=To:Subject:From:Message-Id:Date; b=fKdYgL9RkHx59fImHs2Sw8f8O5Mor/enUNif1TcdART+cm8HlbFLoBbWyT4QkDB4MJ4meA/9bWgZ+DmTptM2jWEf/TR6epo8SjzIWoL1y0RvpCZRyblPwoeN0Z0zTdHoPDNRyae3dC67lBpmSTZ0aZdkkvC4ZQ+8qqv5A/34OAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVUoPDLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVUoPDLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17B4C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730772953;
	bh=K3R4rDEUiRxz44+VNnd3MFJo9GEFITpFciZOxkyKNKg=;
	h=To:Subject:From:Date:From;
	b=VVUoPDLzQ30weZKUttxgUTdUeeX3BZizGaKm5ZAd4/Tne4hilELGGfq/kSU3ZggZ0
	 ydDiWF6sj2FZW8AjO4D5f+1DJeebDYzr4ITnrUJsWfaq0UydG9p6qlURq8CSxiuB45
	 eqJSmX3Fq0qBHosHAa+MJd/G8lTUxOMobWmUvKfxJxmUP4lEFP3YixBr4/22ZwLz/h
	 TV7jEUXMvNtzN6pWvNQYpdsQFMh/CE4zP5Rx7zBt9H3U9PghLX6OMKLFnYP+avsWjS
	 gzafqHG4SHjJmQ4AJ3hPPCBS929k/krpQU0NcYvIMydZ+Czd7CXdySfaMJpuUpZYyf
	 c1nIeBoou0UKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4CDD1CA0E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077295361.23981.5558512262717414934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15daa5049daeb8942b0da7913ade4645b028a4d498d3a0dafd17d2da396f133
Date: Tue, 05 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730772953
