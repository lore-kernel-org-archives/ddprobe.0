Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AD47605E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719603263; cv=none; b=egkKnSi1eHHdfxkAbb+S/Z8UUUWKtj4StvTgtEtbHfsuFbHyCvg1t6F+RVyibNQxriUaxGCK1ha1KBvkxanjRdlDNebOISUFv8LuEkO7PzqB6rH6K0gIiLFqhZVN5k8fCLkiFBeuQz8vq12+EJnzgGYkgdr8xS6Cwl4cJMruJtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719603263; c=relaxed/simple;
	bh=qvSmJ0zBAm2RhgE4py2Rio9Ne17olTIX3+JudkzCYEs=;
	h=To:Subject:From:Message-Id:Date; b=N86BpNLj6azqcdPdcfUktUlwYymE8M3zYw8+VOi8vt1q8ib+N0GC/RYaGlq0tK+5nS6X66xuTwfVSPPUnSvrr7mrR6zq1+HguuQRLzcfLnKS4Es+bOT8KPJYNxo+vK51qVc1D5uYine/bGGAWyS7gAeXrAYKqUR2W+bt5VIp1Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOJHTOi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOJHTOi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF3AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719603263;
	bh=qvSmJ0zBAm2RhgE4py2Rio9Ne17olTIX3+JudkzCYEs=;
	h=To:Subject:From:Date:From;
	b=NOJHTOi9Rs8kguyzvcqxOjhcIAjB2l4Zr8rAijm5rvD0oSy9BbJFRIERY4AGUzGBI
	 brwPMe9iyTRlAL4CSlNCCtNrxkuxD+yTrb51kQKystxC84+R4gXmUlYDVef8IALKmS
	 1Xa12cjy3ChcmUdvNp5ECjkjsFBkyJPA9NWtQBYHRFHHU35v1EY0N+3mTOO94QuSI2
	 2QryjGK/RErlwKQzUZJcaF8exgjK1fnJIJow+pdqHVt4/eRlrqkk8spF5vjlv9Cn81
	 EGzSYsq2DXHEucGHjERD4S7e4vToDYpZYQivJn+CsI3wMyCuHMLjxiLE/QhrpY8b7a
	 ieJYjdHniEY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC847C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960326286.26323.13889498632282848062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da58d2c87dc5e4553da00ff6fd66fd934241ccd1aa0bbd203ffffd48d326d744
Date: Fri, 28 Jun 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719603262
