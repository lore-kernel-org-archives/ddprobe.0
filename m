Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9DE20E6F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008994; cv=none; b=o4QZwVmyN2dZoYsbQ3G+wa0uhOD+8vi+h2lZEXXHnvCXe7lm1Wa9AMwoPDQ88UwnwiMs6T5Xkq8WKQ+ucziDJfNVdje+Z3//gW1GAmZ7YgwT4zgzF4lHHMen9DnKZS6vkxDhBKC8SanVTveAPs55/vqBb9iMIiHC23SyMkJ9Dko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008994; c=relaxed/simple;
	bh=ZHo3k7bbUuiYeoJoZDPKlcZ8r20D9XXrGO4JYi/QRyo=;
	h=To:Subject:From:Message-Id:Date; b=rCTIVS0I7VkDBX0iLHU3oti2LWj7jMAgBxJ+wRdqVPrNkW+MgDp3ZQNbIcCYUOzlE/C6tP8aVBuwwvxPcdU9qWvj3hvV4MAI1YJY1pq3dAPPLpbUkevMElSCnn5pMsz6RHqxfTd1MzZ8UCdz/CbKPvqxzUxAjNe37gkTKf05GXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6rkoRy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6rkoRy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758008993;
	bh=ZHo3k7bbUuiYeoJoZDPKlcZ8r20D9XXrGO4JYi/QRyo=;
	h=To:Subject:From:Date:From;
	b=Z6rkoRy/q1tIXdPVmUd7gfKpvsAz70bqMiGjNs36Dz755AX7mWnz0Ptta0U9nHsVF
	 pC7Yt0H3vnZQMuV2xwEXjpJ53ZVeEjL7LMs41lUj5s9krHIHuc9aLu9/46Tc2qErgl
	 W3vgTVMsXFouuy3LYjUCruXspusfsNB0Kas70WbPTygl+CJANS9OuNz/C9CcaUqgg1
	 4rmga4pI2qHOhvEN2k1o81Kc9Z0t/P0TUzJ9E2G7DMJtWi9N4zRbiSnPRLc5/hhqO0
	 vegcn5cpGBAh1J3C53jWPn9Q28Bb/vjRXqfXMTnU7VoDRN2kne4osh1B9jqXO5eEOv
	 9Ms59gnPNSKEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C8CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800899362.16853.11757299015111712988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aee8f98435129ac7d07b5e2297b8aa8d3ce9b8086a765bd3f62a5f2e1c60df6
Date: Tue, 16 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758008993
