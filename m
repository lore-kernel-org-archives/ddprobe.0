Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A737F8BC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780512274; cv=none; b=ZBPsPaslzcH0LWGUFpSv3xEaUWxfzRz9pL7P6ep9AeO3dsQ3PEEcjD4GfVWMSHfzfCTAR1HipI1ol40sEBuRisICFkRQqvzXcXJdMfdU9kOAhWj/OTGIJerp0+14Hb8/pH+7WlB1ByW39dFLo/DBhg+LPGA7CetFMnW1MSikvfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780512274; c=relaxed/simple;
	bh=MjPDgU1KIt0XVcI/jb5yAL2vb3uokY/j0JNJRIt3i/A=;
	h=To:Subject:From:Message-Id:Date; b=jNFgHSZxVoirWTffw6G7q+lz+fawrQxgGKMoDqbmE6esJ2zm2G5D3KMEBsztRrm9Kci8DAppmTFRtltt1ShTdTmPHqrsm5XPWiCvXpUCztYVv+DCZZacDFSMmqdlAGbNWbNNS4rAahyDZjDxUwdTzBQ4gqto0GsZ4Ml6AiDW52M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E42r6mxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E42r6mxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7C2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780512273;
	bh=MjPDgU1KIt0XVcI/jb5yAL2vb3uokY/j0JNJRIt3i/A=;
	h=To:Subject:From:Date:From;
	b=E42r6mxiKpub5EsMz1wSj5vaD/rjCXhL578ibfcbcR7st3bCgKhJlko7QWb+ie0/k
	 hFEZ859yXMYgZJbaXkSJ9kfXjSnQnV+A8c+gIIdq4RE2KAV0s9z/8sdUlAA+++f/hr
	 wiZsT3cKbKWdIkKmHA3bd6RrL43EJisjPMvMhY1EEFj7oU0zH9KiorCCmpbP7AiFxM
	 1TF/w5vpGPZ9J3biVeE/VnxXWBJ31IvUoXMDkMs9HKugkEoROAuuxrA5z5xcFWEHDu
	 n6Z8lip/+tlHuI+KjupZuD8U5A+5wcKFq60U0P2HF9RHioQwT3QIhrNFR7MpnyRjm7
	 hvP831iLQFb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3007CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051227372.542.3921229107524052188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a275f38156d383be042607881807dd64603ec104afd3d6eecc067795f4a19b
Date: Wed, 03 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780512273
