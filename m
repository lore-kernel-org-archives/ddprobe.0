Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F822199FBA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762100394; cv=none; b=sMw9DB57F1FedX3LTQK936mM+MrsoVyEyVPWV/kwejQmETKaxX6l5CxslQUj/njl56S1/V399h5jU2yMyRQxmNP17A7r7MkRnhBdfFPOs7N4PTRuPSEOVc6tTNMGQPQo+ffitRcwv7jxXZ5RLlRezwNyPp+a3khXv1CNeOmf15s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762100394; c=relaxed/simple;
	bh=mhtUBOm+9y34p2vk//HRpMwHr6N6P5xJKgP9qnX3J9k=;
	h=To:Subject:From:Message-Id:Date; b=dP/KASYgZFoupC0RqC+OxRzEQYNJzfYzbhT4FNBOBnWUwSIO6w292AGsorScKOrMVNxgk5b9ip3h8alRfxtZ9eAMJtOv8nRFkuVndMRmoSFF+C3jpDMCWTJr/JKzcMIlF+ChhUr6L7Z4PivCiooU+2YMYKPOqqmjMQkyvW5+qj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jroh0GCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jroh0GCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB74DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762100393;
	bh=mhtUBOm+9y34p2vk//HRpMwHr6N6P5xJKgP9qnX3J9k=;
	h=To:Subject:From:Date:From;
	b=jroh0GCJZmqRjcLhe16jyi62JOOJormeXVHvIGhTZlBfrHvitC4QnAk0VveDo0MvI
	 8jodWz2+f3a8qw//LGZOlqXGN6b+8TL6fAyJL4p7fu0w+/UM4H2c54o9yeRWiIA1XF
	 3awCsyp2cVuXUDYiCp9jLSGDOj1OxFPaKdKGbHFrgptTMphAuKAqKADrOiZShKFgUB
	 yGxvDX7Zo6XWAobCed82GMvO+6yk6l2yFliANvrn5eTkoRWHPZnJ+NvKIpXnxm2GGp
	 NLI+XHfmdrIfslGwgwowzOb/7fw9Y6SQJYVNGskQV9y0ZbjPWex5Hf81iZpdko6oiI
	 l53HpW9c8Og3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B0ECCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210039365.20807.6957015161548429562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0b9ddbc95ce00e12738f9c9042ca3ae37552572a3305d13db843e2af7a7dd9
Date: Sun, 02 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762100393
