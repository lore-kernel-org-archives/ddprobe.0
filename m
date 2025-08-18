Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227842773DF
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755541194; cv=none; b=FY+jeC+4fBOjO54/p8vWe6G8++Fp9RV2S/K8OEaoeMrhPSXSvktnolrwlbOzzze5zPeUb1gLyuhkPfuRwhOvJJ4ihaJGd2grCi6RWNaeUYWPEodOCNLhMrTKoh6qMefGDd0M5JVXK1I8+jL9TD0dm+0s4dfJDKxdppfJoiYNM+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755541194; c=relaxed/simple;
	bh=3nDADUqZdhkc+6bJgcy8RqTDzhQAs3GLAJm88kXRsRQ=;
	h=To:Subject:From:Message-Id:Date; b=IjFsMYCHdDMVlSxGBjRVzxwwcWN0p81JUwjdb2D5Mx6PUpXzKbllhQdxWlcjGPrC3sSwfgiHoxu3yhYG4yAoQtIrdjHMEcy0JNuZad7stO/G4El0Aa4jioK5b9kxEvUpBCDBpiUAHTPVZuLTchynnnPOGwwqImdoEKVpioW4XZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i44cjfsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i44cjfsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E00AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755541193;
	bh=3nDADUqZdhkc+6bJgcy8RqTDzhQAs3GLAJm88kXRsRQ=;
	h=To:Subject:From:Date:From;
	b=i44cjfslzlBEqdZ+4jBYbPTlyoKzvz9IUoFVjPM03e0kVCkSaF6/lX0k7hRWCD0/z
	 h4mBl1HbBRML/Gkc47BZtG1pvQ0MJRRiAyX+jd2aYES3bN9ilXGNCwkq+GWKK7c34w
	 K85EpVI7roNtxrGmKQTTGOgWy7sUoJ4GEnkq0QBixWY3pcl33DexhhSUfOCJfxqxN6
	 3J7ngA2j4vrUpqnkCtSZ7ivOzaEw7Ojw6zUqT7HxFyVa/IgWkPYv2Lm80eS8HV3khu
	 GDNS4C9ZIrnWLjYh9qdingmuGd8EGXXhwJC/+1RrLZfdyoFqch+30ueEzWDAOaVBrx
	 7gjCIatnGgRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB22CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554119358.2994.5512550229337980496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322b9e595ffb250898d59a29f3ec3abc7cbfa078634583beb0ea0f75fd5e9f93
Date: Mon, 18 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755541193
