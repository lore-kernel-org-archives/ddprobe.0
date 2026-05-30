Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F04833F5A0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780164214; cv=none; b=RKTlk+hu14Krxey9tZsz8GpPdxe/nFqV4Jz0NFSZFOXS6puvAqL2n1V13sOkNXOQ0Cd4QPhCLZG+a0yzfp3jroLqVcYx5tva1P+XEkL7GxiINcfM+QBo9drbqmC1yOYx1uKrjZloGyEjl0SHsgCA1+u7XcBhigZ4CkMKpJbzBk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780164214; c=relaxed/simple;
	bh=4efe7L6oHCLQOOmaUkHDggXiIj2P+yRsrjFVlkDueXE=;
	h=To:Subject:From:Message-Id:Date; b=Hm1gMnVNpd7MKnCe1dToQTV7dEiwxwJfWVi+kTFWbZwuuD9HbJ9HaueILwVm1jWjEw3HScXq3frw16YTw5OShLuNXs4pC8kXRDofiwjt2aICfBQviyY6LOKkRhdnYFM6HGscmk2JfGdolE+QuDKj9Itlov1251HYpMz/cwHK804=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAt8yUos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAt8yUos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F73C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780164213;
	bh=4efe7L6oHCLQOOmaUkHDggXiIj2P+yRsrjFVlkDueXE=;
	h=To:Subject:From:Date:From;
	b=jAt8yUosIR3LY5Kzwc4bjiJOllTv8iAR0NgGHMShEYuy3/5lMRJsQiGs4tVlnoYji
	 ISeky1wKm4rMMp3vYE7M1z7UrBir9RXAwQWb/fmIDhIiQVfgBGbu0MPHVAqFjKYh8b
	 vRxaN6jRCPqLZJyKctz3hXke4SV+qDmXeN6q9Drm0SqNnNEvCF5QgAtNZSiLt7ccIB
	 N2g1GOJ139C+904CyKOfuIfvomfHaR539Q9e9z/qQlPJQpMYWgbS+ETtAKsqYcujgH
	 XZu4WQVXS8KK92gf8S3I0dxRytOc97L9ghQ+6D1m6Tbec+7gCrOUJ6oMw4IaNq4m+A
	 y22Q6qbz6mxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08BACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016421371.4386.9404737059465341410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0bbbb9d643dc036265fe2bf38e5eb06aa94f8f5b41ab3c75b5f480dc2e4e3e
Date: Sat, 30 May 2026 18:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780164213
