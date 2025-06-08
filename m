Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FFC382
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749341394; cv=none; b=vD45SiFgv03SBYwbMopJGgKrnANC6kmnUaxM7UTKOS9b5mNFuXtMd4KYkkrp/RNRZYHFTfqUFETuuYSoXb3d6hzuMFckThhkcP0Jm73kgKXZ+lxEmWgyWkgZqkB4c4mZEZqEV4rq0rCW8YSIU4rx/XKislcL+jYsjS4wXRZSvGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749341394; c=relaxed/simple;
	bh=uvvbO2tw88VV5FKrSZ97IzaAcUOEDWA/IwZric4sI7U=;
	h=To:Subject:From:Message-Id:Date; b=Vu9RHZfit0JMs6gaSnVKjPHDgsy0o46d5ioEDJrWzEY6j2tkZxkxb1ZIJ2JUZFXxWgb58vJ9Iy7Qm2I+7ojbpaov7GIRMD50woj0rSViWi0cuNdSlzYKbqk1Z5dxYIWvqXoKcO2uRQS5FNUgfoDzaODJWE2o7nA9HFlcacc02pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjeY3z7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjeY3z7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FEC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749341393;
	bh=uvvbO2tw88VV5FKrSZ97IzaAcUOEDWA/IwZric4sI7U=;
	h=To:Subject:From:Date:From;
	b=HjeY3z7EUKQyvbDR/N2miWsWaBViZv3kLMyRP5U/wuU+txVyFb0ekK5j4bvTvrBvJ
	 3yo7pmwa/cyLxiEBp8kuRrTqp1pmwSe/v6CRf9vnP+0xbnVmfkbN356V9cNaDK4dT6
	 0B042U+t7AkGMghmuRYnmKRLbVgDZWWCVZ+hvi0ARExnwPp3UKuXSnXMPev8WRXJJ7
	 7kxSEct5z9j+bsGvI25zmYRtOIAAagTdrVy1rJCLsE8O2Y8yrC/ajD4YQf2GDyzEgi
	 BusE6hvMfWVyOL28/BXM07F8D/BtZ6yhS2IcNxt40xaOv/CMcBcYo0fS8xmTxWQJnk
	 jCB67XOj5miIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6AC5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934139357.9291.7854650242747512588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de5cd1c99487ae03a61d7c1e56b3133f1efbdc149c9e5c08525f9e882bf7b8d
Date: Sun, 08 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749341393
