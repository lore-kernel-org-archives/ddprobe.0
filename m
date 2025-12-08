Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201FE2DEA75
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765210974; cv=none; b=uG/VitzFwJg/pS1GNvmUeJtQHbiMb5EA6qiBAX3j1osgpDqWYcIQVsDmZnfHDOjEHz5FpeerTGlzqUMXgtVIFCLUOc5pdp96UOqkuBSssD2w8JagxGz2nuo+Xwqki2hk0r+IAlDgvkKYTaXuJOlZguHBWDzTQKZEvsX9sRF5HD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765210974; c=relaxed/simple;
	bh=Vk2bpmJ49eumJrpz0LofcQQNXUWhk/PGqH2QvJ/EsDQ=;
	h=To:Subject:From:Message-Id:Date; b=f/N+2m18j2k0OBpzOjfr5LJURwuL1tst6VOO9VvIS67EKxufRKKat+V7BZT5vTnyIWZt3YyZp9JJL4GqajSMq0txhMqlzl41l3AThkbeaW4EUi4LFeDDUXKdv8iqeAQETycK3ofJe2eJtJq9Js6gJ01/R3NcTpoXsFc2Db58Svg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thbEcgDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thbEcgDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B3DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765210973;
	bh=Vk2bpmJ49eumJrpz0LofcQQNXUWhk/PGqH2QvJ/EsDQ=;
	h=To:Subject:From:Date:From;
	b=thbEcgDBzxdCqmpjaiPSa2xNAK6PIgL8vNMbd1VOijBuX9Qvs33W/Xye5OEVNqV+v
	 GhSlTwDbHdMTwxuwG7gF2aB3aPp+Zx4tOznbXF3FJ1CewoCO6JP1C64U9aRF64Nh1P
	 S3QGPaVDpr7kxBVlBuAoIv0gwwu6HHmPcbJHdHO5ymJposqC0dmaK7HM22SiokVc0i
	 2XDgKp5dcY5V/f+Du97rytqx+h/WI0Zz//DVSkmy3sV/ibLDZ4as6Pf85j6kBTaEDI
	 yWkoJz3hdXA/azcVf2sckBUDGutO1qdRuKGsY/wBTIeVqmBaM71w8tvWfJjcptLILG
	 lP1t555/RLHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B9D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521097358.11255.4941375109431506314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91414ba996bd4442e6c64f28783f3b170d8c3d0625002b367a093d51be6c446b
Date: Mon, 08 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765210973
