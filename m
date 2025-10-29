Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2701C5D46
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761776994; cv=none; b=fVjewzGpiQ1tKinvzxY4cPOLlOP5ahQcVUJ7ywqeUVyFCneFG5BfA07mo0aBLGgYug5mZwtGDmkmiEPPALQWrNk9pDFaMR7Nb6ormum12qeQ8EMNByl6rrlK+/TYQZ1lJHM7Bl4q3Ipjwqn4tv/DDDTj1y/5GOTEp9CP5/EusKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761776994; c=relaxed/simple;
	bh=at6s1QIbj/C1Uv8iSJQKZIpfLy7GTgwpfiLxeRsNSHY=;
	h=To:Subject:From:Message-Id:Date; b=mA9Oq90dFidWdK1jDuYYvAwr0uIEtp1f9TsTtsl1EREVdeNCRrAx0k45Af65sMOkuJfa7HMPzGJJJZII+/p4PYnRy4Ov/tBF6jvPQxt3oVb9YRMzRCZOe6ezuXqqti/Y4fg+2oECUwiWL6P4cA2l1NsbjLB8yIZqgrC7rQTRF0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xao0v1xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xao0v1xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3737C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761776993;
	bh=at6s1QIbj/C1Uv8iSJQKZIpfLy7GTgwpfiLxeRsNSHY=;
	h=To:Subject:From:Date:From;
	b=Xao0v1xVczHFjdJnQjKwOZQ70t+3JgptRPRwk0H4JlpKQRHqJ5iqKQNh89EZt6a2W
	 rd5Z5IZl8XdeL7Ff0dTdRHWT5bcmM2cJq7zKFgqjXwNeulGXmStGeEAyuPJidLDp5L
	 AdWK+iUicExvdx01a+HLecfzJ7GmLOvMZ1NioaySJP2Etv2nQzhvQzUQFqZh5MS8un
	 fUl0XMu/YGw8eEFOK2Q9oOTodrKM9unAqESGryMSM4YX3ZuQPxetPSYullimMiYbk1
	 Fp6PflSHeggK1tqSKsIpNSkO/cPf/HBXQTpbY5IE8jCgAoqMT3vHCvXkHLirjbgoP7
	 2BhhP2tR4v0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AACCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177699357.13223.5903337240149945875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b31fac648f1029f3bad63e07a16c06c76aced9ebf5919bcec4db99035b50e4
Date: Wed, 29 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761776993
