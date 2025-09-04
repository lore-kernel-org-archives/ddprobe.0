Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449A263F22
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757000994; cv=none; b=CE8qhrV6YzJUi0kj/VTw+Tcu26FCz6F3ZK4FGn7ZLK+slhYUpjr65eXxkZYKmHhMv55pmSpg5KoAeni1eBmmGWkPEnhz7OvSzMiJGH1gKkUNfZiZqcapDq4xCNl8lof+0AwaodljNlctnqaicn71E2QKwP7LtM0M+iALpA+6lJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757000994; c=relaxed/simple;
	bh=f0aUY6enF+fMIqxeWzL+Hen5uI4tKnaeU7825NrQJ2k=;
	h=To:Subject:From:Message-Id:Date; b=c9aRxtlCZvay7IjApEOFSV17MhoQ//l3g4oVv7/WDVp2hIOEOoJHbUK7Xz3awSW3f54qXDj49zFYuPzC6w2s1aytCRHuct9k7tW4DTSTgeFroIYzaJjw4s32yozJth0m1FpqGYpCPaFw+Fqe//Qcxmy2JIYb9Err3FzIg5BbYGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqymOJ+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqymOJ+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F88C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757000993;
	bh=f0aUY6enF+fMIqxeWzL+Hen5uI4tKnaeU7825NrQJ2k=;
	h=To:Subject:From:Date:From;
	b=IqymOJ+cmSNipni5YVQ8BhSUHvIrE+jp6ZrUNfuviaWUfHIelLT61RIbUsdUKR8vI
	 atC40fnbUgffU4czUrXb+0F+lWweF0MbQJTZ/EGdnz3KxRUQyJfVvxiRqGfmNYqhjJ
	 tgOvZpx/DgH+7Xmx5OkCmQfBzIeM4WQaBgqznpQw8K7lNs4PeHh3/07XhA1Tpij8kW
	 ZZ1vKQ1POrusVQ7nzxIKuNeAdp7f8/R54TKpEyRZWeNs6ranCsELkWJJtKeUVLVbWx
	 0nwhS+s0vVlPwX+s13vVQTRWxHp3ADFet2krCc0Ln9AhNfBrzHCBVHl+UBfe0Abi6L
	 bm/lZbDTICvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E91CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700099358.491.7474978924298430751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054fd2dfea5cb8b0ef279bca8344e05cc74edef3cb4b0a2a3fb12fba84f48d7c
Date: Thu, 04 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757000993
