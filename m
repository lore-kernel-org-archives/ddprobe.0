Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291BB4A28
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752193194; cv=none; b=fQ9C/dJCsImsk7aPRrLhQ0erc/Pl/izXgFsMb+W2zpwySd7M/nfARntVtvwvNA5ki2SZIxPOG8Rg9+saSDxq5QVEqNYrLoVz5S539LyNrolmz6g1iWDD0p9e4DTFSY7mGy6QFShnolxVjkZMoB9J9MyQWnXES0u/QIKxua6otF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752193194; c=relaxed/simple;
	bh=n2jB+Dp0oZpr6Bw5CIg6dY4LM2pMpqeZsqPp3MlQf3s=;
	h=To:Subject:From:Message-Id:Date; b=GofS9z/iDGPrsBWG3x0FLXGJ7IKhQuSSnz1sAQZGxndCBJyeqjvT1rc61rMllQO6fe6C5OHrbtGb8/ivJ8amJ3goT4X6aH/vDfiEerS1YneAkIrWn4y9TKHki75r6i/8wFeZcwHmv4frDGREr1Z03exTMgo9NiwMRwgCM/GcThk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRPaegsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRPaegsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3635C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752193193;
	bh=n2jB+Dp0oZpr6Bw5CIg6dY4LM2pMpqeZsqPp3MlQf3s=;
	h=To:Subject:From:Date:From;
	b=SRPaegsaDN4/+J5qyagWTmKW4/03rcxSQy50ZNp0sOW3Kn4Jn/hPBANXdJ2sgx0e2
	 kVcb3r/rD2XpRRzJJZg70FT5f3tZcJVEZWqV130sqmcUekGvgCQfHN38uCsZxE8YKT
	 91uoq+ogj/VZcR+FERcgJGJ93okmZD+uuvm1nXjXxq3juUKszUijNWR/BJspg8Lqi/
	 6XDojO62fT/6jSbNr5+V5fLjxio8sqB2CeLu5kOuWkYBHdE1OVRvXfzg8bYtfiwyfE
	 iV5+60DcEZ+Bl6aaEmLEx+HUpvWA441ZxsHlflvCDNtoFr53Np3Mn56Yw26B3RiKuz
	 SFEiOEENOigpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91118C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219319357.23777.1376562472005177715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6eea8e25e2c7937f443ab7c1e9c222fd38bd41d3f69bf70044daaf6b07ca87e
Date: Fri, 11 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752193193
