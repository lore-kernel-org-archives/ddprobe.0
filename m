Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A033EC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751349594; cv=none; b=eFgf7yVqa319wBWBrUTi9DX5ux7NZsSzg0d0FPCppKjFgMR0jQpoGjAy5x9X6Dm4bmq24UNHF9Sab795CN6pu+WBXq5aIYOinGd9Qz9NFEtDNHqjz7YQhl17QdPeMszyZEED/c+OGMtzWFs/GmvUTHAexE2JA5TvIEiDJugM+AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751349594; c=relaxed/simple;
	bh=cKgb5QCo6TqnJlqQs62i4TCguMxHtsZdPiLdLRByxGM=;
	h=To:Subject:From:Message-Id:Date; b=kJ3RXdZ/tv641q96+JyB7oyhuxDnzxsUOEb1BJ/dxaeNv3ZAmr9POEHUwuPp3FYNqfWXE0dpBz61SBi2VxvD+DyEeh6OkubldZVrXEzih0DOzRNaRxO4nLN6eUzYS3QfaJV7TyHZ0/Q7M0yxfaolBxDF34zwi1WXgu0GxIuVLoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIwU7s33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIwU7s33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0F5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751349593;
	bh=cKgb5QCo6TqnJlqQs62i4TCguMxHtsZdPiLdLRByxGM=;
	h=To:Subject:From:Date:From;
	b=jIwU7s33vmx1iZPm1RPfV9si8qBs/EDtCMuaPb6/IKegqotVW++DvTm5XURJwwM55
	 i8yvgldSuLpFdZKKtI8tIWgqa6qtHDtiyQUHkrGzlk1vcq/HdLl5IbeYXUBQdVdT+p
	 VEdpofZ+QDVVNBHMPX1SfrKe8BaF8wLg4BRVTliupmoHZZ/4pzpVXH90jbdxWSlYCH
	 +QHnsxa3z74+5TBwf6z70Kk9tyXlIFJZe4D+QB1wbHtqT25gbT5Wim3BDbKHoA2flM
	 R1eFz9dZlr9bHmmx+NUIxPWi+Cfp/L2g8Syg3TegziM8dHYg+4MqAveD+PNBFjkK2b
	 zqQL9tIPCRNGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87AC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134959357.10090.16057492308992642184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bebefff031466ab0036106452bd2bedec0634d1b61d77dd83142859428537cb
Date: Tue, 01 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751349593
