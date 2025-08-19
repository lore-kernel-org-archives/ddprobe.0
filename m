Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850449620
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755590394; cv=none; b=rva0PWnmsjd8XDoo2VWCgKDSu7/fUtFXhHrtTCKh3vcrGaONwDRGweNRvXYW1T61Z0crme8mJeysO1ykZxciH7Lq4nRZoQpP8KwBpRlEofPpU9GvK2Ly1jK0qu+H8aoYFhbzzai/3kcodflFw7dmZt51CN4E9eaoJeveZwPnoQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755590394; c=relaxed/simple;
	bh=+yQcDcydhQP8BFjD8TEjgv8n1b/phF0vwWnBmXoMccA=;
	h=To:Subject:From:Message-Id:Date; b=GDMKcGC1M29AQiHusJG7VEMBz2DAGoI+ML6k9Zhm236NnwwP54hlDfvVl9w7qR6savH9AdRmBnwUAbu5gQAQumpOF+EC+vvIhtoLhkn9HzPB/sn5sN3YoOlSppRRRBvwidRQAvj4cyTLQXHHSJv/LCvJior/ykPnrzBOPW0erNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhLKL6C8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhLKL6C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA7AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755590393;
	bh=+yQcDcydhQP8BFjD8TEjgv8n1b/phF0vwWnBmXoMccA=;
	h=To:Subject:From:Date:From;
	b=PhLKL6C8RFpGXtoDn4fncdXYgBRKFpBz28sUwQDGwocEqxSsYXioLKtUohlfkqTT8
	 qyvGTlnID614CQtq2x1afSCXWbqMSLsus22AD2iiscvfg9br9P8bLtrtGVC1XXBAou
	 +5We7Vn8frBaPlrvgwRNvArs/TnuVKqC6Z7K5IJ7+sZ/88rUJ1IBv7bwxUQYMCG3st
	 SnhQ082IbJoowXgsPI8nv6P9vHNyKTJ41pHWyTbFVHfMxhholbYcYfmC496lVm8d1y
	 BB4q2SV7LgDxbIrzwn74RDUYT5bzBOHfUXSX/dcDNAs3F1kIPzkco10hP2CyPRtn3h
	 Fv3mN7jruISzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE5ECA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559039357.11938.6486807496071236973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373633893affccbdbac1ccaf7a78f9261c072c713066640191564e870c40beb2
Date: Tue, 19 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755590393
