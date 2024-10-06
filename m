Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2386316F8E9
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728258354; cv=none; b=YwFpRNkY+24dd2Hc7RwXh1EQXSJSKF3E0EcAumCRBIAj/Xv7Zy0v1qzFneP8Y358TMs9fKQovB0kyJ1c/U5sa5uIyPGPfg8to17L7kNUjxLyu2SiU3S4f20YNcOzoT1+ApbhQHPqHdkDNa2DDJw1gQLmFP5Rios7qZSyTFfa1Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728258354; c=relaxed/simple;
	bh=LZbTotlUi5AY8PvgS2NrugGYBUdP2ylXmV+XfBGUYlM=;
	h=To:Subject:From:Message-Id:Date; b=q3q8DfO8wXJIj3SrI5laXyl1nDD+1+mNFBEbFeANbUbRrTCLc56Tdf/HZ+ad+6xCmh8HuNxPHQS6MCkTpvKxiAZ2yDtXSazg8+C/O4PGzs1NyJfhVPkv1IGk/PKVXmy6MWfeGt/W1YnZKaDYgN99YzShS7ieedMYFO4AHayA+s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soCih0+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soCih0+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34DEC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728258353;
	bh=LZbTotlUi5AY8PvgS2NrugGYBUdP2ylXmV+XfBGUYlM=;
	h=To:Subject:From:Date:From;
	b=soCih0+1YgLOqy+p3z3GnxvbH45qeLY61xQKHM9XSfAKP/qlEqw9gYjwsrcfjRXrx
	 HANG6lERKY8az4x5yq+tntG8rSAC+dbhBIAhlc6RONiz9tTAHKXhdKJ7nKtHQ0ADCT
	 8tQpX3smJJqhXHKpW5C7fQT++10REPgQSQrPg79Ug987GyidTbY28vsADeiHFunZ3c
	 QuHi1DAzvcJqD6DnsowtputKE3YRQhMNspBKq5y603ZTsja3gbbGu5rm/7tK5Xpzwe
	 jsZNnCyYvalwF6wgXfYx9ADGVyzd93SyFWtdHYypkD6klPVmaAyawEvXq8OalN0kXE
	 bRMdYvj3zPWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108ECFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825835358.5686.15645535950964103221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be467210974bc943f6b41909f265226f7abb009247dfa34016403c02f50c5092
Date: Sun, 06 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728258353
