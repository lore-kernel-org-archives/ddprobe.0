Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6062EC080
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757759994; cv=none; b=lzm7B0BLqkwRCjIBUtTTY+5RJPQRR02cKvCXuE7EG5Seg/QmkH8UiKj4Tx44pMDweWuFyRZZXoOKkscDXTG5/6mLQ7ROsM7c/vi/hWKEf4aA68zNRfP35nKYu+ElqESzc3FcuT1o+greRnk3i/ekQrYG9gqkOcEwkjcBlN6wgk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757759994; c=relaxed/simple;
	bh=ncHEAScI4PDXjjc4KyH13R9JqYCYfpGkwgMNHjwTU44=;
	h=To:Subject:From:Message-Id:Date; b=LeDZ2HEQhM/aF4IuFueVXOSWKLhoSLucaJIAdCHucicC0rr20eI3nQ5aF9XM/z7vem1VEWklqSxlRTUEC3a14H/SrSkcmbYSboFAj4U+gqrn/gUWlDLUkowFILQSQXDb1TMBvy7w70xNcpmal0Gos6Ziq7nWuMJRm5iOT0TfjoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqYGnswN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqYGnswN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE5C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757759993;
	bh=ncHEAScI4PDXjjc4KyH13R9JqYCYfpGkwgMNHjwTU44=;
	h=To:Subject:From:Date:From;
	b=NqYGnswNd6BVpr3tJaoUFbzq/POvgnpgIam9IC3RdJppi029v7XhGZkQc+344078Q
	 SROA9D9bGpTaGUt/waPXo71xQKzQPLSRsaFPliHGnZ1X3bdHAlc4E1gqXGnNMA5Cdi
	 7RXYbQ5RTSNKF9yprvrihbeFkhYyN9x4wsDCkAzQUSlbhGr1AswwVU1pi2Ut4d1Z9F
	 n+rBhtZH5OOC4QaCLzBiTOhOdwLjzRsqnFWbs/RK8DzE/h3Kt9jhVkxkR1fbdeSrnQ
	 uMqIq7PSLoBemXmv2v1jEcI5lHf+DfGpC8g0CqIwNoTgiJXsywjhn719YHnwZGeVTn
	 ZUVLeIRlo3jHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539ECAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775999357.1747.4798929364416047251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c14e4b5f8b996e1a3690aba47d01b73f7a99ada3c2d47e4a377e5366a43d58
Date: Sat, 13 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757759993
