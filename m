Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3734C8821
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736112954; cv=none; b=QDx2iubr1YUPLCbGPhN39kLARb4J8nifo/ENjIHiHr91S/K1uFnhVXLhacz20/AdGm4LpeOtlBvUDHdNiGXemK3eZA+5wGuwe+ENQkiYijD1jEwbiXMFfr4Y38hNZrn9kcgeR7ui+V+95SCWJCUbtiv/uPVzOnr388clfXnWwvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736112954; c=relaxed/simple;
	bh=GZMAHCWVuG4NEALAdq/4c3vgc+VnPcKctL6wfWoPrX8=;
	h=To:Subject:From:Message-Id:Date; b=h/eBMxDGb7sxtl0IphW78TydXlJiTMROBHZ173N79kvHGPcZ5MvXU14lUWbBXfalPnYmkcAl2GqNfodomQ4MnGTCeJlQl9scxcGwU4RwHHI1msqx/bf6gkPw8oLuvjyfn0GHOzciKvNciSvzD1ONY1LNwzzO0itTdiycoa8/ZgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaEKPlBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaEKPlBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0B5C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736112953;
	bh=GZMAHCWVuG4NEALAdq/4c3vgc+VnPcKctL6wfWoPrX8=;
	h=To:Subject:From:Date:From;
	b=ZaEKPlBU5ipIPAP63yinE13rZJM/E51mWjeu1yn9NUiijjTmSDPasHs9PNwM9BjDR
	 RM1ZVE3x2icU3bnwbMOY2TUZ/qlom/RUQjIhc5bkKjegZPSbpjPThvgwus32zepbiY
	 xa8SRF8NUHTzWX34cgh+/+Uvc+/hHh4wUV9dBHrLKnnM7PQXaKOCD+QFlVyOD5KCm6
	 1Ld+lUdUIF8QX1GUMI69ERj0OX6AlOX1Ru3gnefj02snYUabU7fg4n3weKo97yboWf
	 IX/0TZyecyaOG/cq6waX5J8V6s3lRW7EZs7IEsEc8DSBlUUTpY1pXuQnVHGmKUjfD+
	 8tqqGuN3nlJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99844E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611295359.18701.5070270356757624857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff433493e4dbf20134ebbff54eaff5b859d6d760e214fdcac18b86036657511
Date: Sun, 05 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736112953
