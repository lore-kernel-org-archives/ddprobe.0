Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2013A24A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723918554; cv=none; b=HadBW4z21Cul8Hphvm62PeR2nZbEceq6c7UkdQWNlcLBwouQT0RSl1NXMfIcwrIbyMNp/qP4mHlyqqaafdGRdz+Fpz2+it/7hrVywiFvknBk8jm+o822/EVcZSiBqMcgdgIUraYw1G66LsJvn4kcsd2Q19IwbxDa/U9kwGbVstE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723918554; c=relaxed/simple;
	bh=ogYvXsQZks8bsW7WbP1R3jzr1u0yHzsPZ27W6qeorZM=;
	h=To:Subject:From:Message-Id:Date; b=juUhxIHlvmIxKmbFHyQV0ioMz2CDTKq9Mnek+UXk4m43GN+W3FJ7ifV4xBHXRfHb7gKBZsi5xhx0w5mn7h6riBmkLhsxyVpYEy5CZQvUQBEe7RaI2tILXcTlqt/NtFSJRH26rgslohnQTkohQTmU6dZCw0G31x5lBmnay2vtnT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aORv+nsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aORv+nsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B546DC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723918553;
	bh=ogYvXsQZks8bsW7WbP1R3jzr1u0yHzsPZ27W6qeorZM=;
	h=To:Subject:From:Date:From;
	b=aORv+nsjpLeOIT6yEsPB49aJ7Y+oaQUmGSP0pZmaMI7M8RffiI4qvEyV0a3U2Ptqp
	 tWGzNx+LYZRmXDhl33ZrLvmIABgpA/+Fe8+9fA+2kf/+G+h0mmKlpjSlo0WZSR6gR0
	 +llvVpq2rEfQFVDNaN9OFHJ2b2GYdwukqt3vCQWYdb+Ysy2B64j9RJPpfPv9dAdb/T
	 ae9j9cecQcYzXEIssUCzyPTZxoygrZfu6VX1JKj6Cm+o8jhLT4NQ3dAfbqsogC83zh
	 332j58LTx84QeHcE8WP3/mhrAG/tBQ5F7ERYl+3W0Fb+rD3ymvMHOByyD8LMuM8DGI
	 dfMZNap5xPceQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B5C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172391855360.16693.10085663007969381459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c35cc653f4e26b8a083b8f13055d049bd0adc628ba55863a68942719150def
Date: Sat, 17 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723918553
