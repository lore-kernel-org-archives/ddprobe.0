Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1D41F91F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758611394; cv=none; b=PGdW6Xu3qyiaOxKfQwwRJHviDp9FhXLua3dFxVYw70HyTufCMXbgA+MO4rtG1wKdDl1LwKt4mNfpaQR3FiWeaggIwMAggYEI55zq/Giupz43GqPFvQTmPAacLb+oGIWlBsukp07uwiY9vZC0vfNQhwgikBry9guSqcEeEaHRB+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758611394; c=relaxed/simple;
	bh=jUX/ElbQEJC/kS8Q6IDYjf+yP6GpmLkjqLnZsL2GHl4=;
	h=To:Subject:From:Message-Id:Date; b=L9bCluRD1GsteWo0BzhyXO7C28ziQ/byVFs7yAUbAuIav3nn+pZvVUqLrBdOkdMUet6T+xD+SFjkQXFglFlTzh7F1k9yafNu2sZD/hSCWIQg7ubPxceiL2Q6NXhq/GqdB30rw3TDIszrdJ5c9RUBwyWtpJfFnB02wgudiU08DFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OF7g0Uu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OF7g0Uu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B29C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758611393;
	bh=jUX/ElbQEJC/kS8Q6IDYjf+yP6GpmLkjqLnZsL2GHl4=;
	h=To:Subject:From:Date:From;
	b=OF7g0Uu7s+q9aqor0UUmCAOL45/KS2f/Z0KtOiVIMXMpQaWMUhMeY+TuZG1yxXn1L
	 CKiRm+m4pajitIe9HfDngyksD/NP/PSAMsuwk50FCIxViF3BkR7bHYpMew4ec7zdW1
	 8E0QPxIl7kCGaYRNfbJO7x3/Qouta2yy+WiSPezsp8b0d96QwNm1BH2LDSA5KLRZs8
	 Ab+iKeSztWd+rR5i9dbU6waxhT4OK3XUk5T+ig6TLJtkcrE9esI++B8WFIa6BBy0K5
	 g1IhvDBOR1zADemGzwixuiEm4F9kACu37SrItptwzTbeUCshPiuIDfUuma45DV1HUq
	 PLQMCO1SAgLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F589CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861139358.17831.11196801593249008088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3947f536de29ce43bd842059a2db89b15cc1fbbf9015e92ff50afd49592c39e
Date: Tue, 23 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758611393
