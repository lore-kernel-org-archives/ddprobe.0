Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AF013A24B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718399903; cv=none; b=MgWlH6MpjTaefo7ZAsGM9FZ+NJBJMWFoq8/wtBSzhzP6vXGCoGDrfwvtrzASzPjujR/FfGTvvcogJckmudkz2/DLOf2U1P2eGPqxMMpdO5oQ+xakqJ1loj+wAixFKxxgKcfpaC7k5fyFwD53gojd2+O89UXtbc6ITNo8rLdq8eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718399903; c=relaxed/simple;
	bh=3Y5XmlicpjUm46d92/7UHS+TBNWuRX3j7MyF6Ryxh0E=;
	h=To:Subject:From:Message-Id:Date; b=HpJtmiOlDCkk3VzRu7cNs8j3Dn+zf0LtGAMJeQjPWdv5t0Ef4mxAsAM9l4tokWtbpUCRmlLQoT9Yq1yKbOQnr1IPgKZ5ZknRTchOeVo4h++E0cM3nOmkNPZEiYyG5iAU5yr1wYLuCABNVeqdn0G5QdKKn93rixPEUo8qgf3tfiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T23O6k0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T23O6k0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 007BCC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718399903;
	bh=3Y5XmlicpjUm46d92/7UHS+TBNWuRX3j7MyF6Ryxh0E=;
	h=To:Subject:From:Date:From;
	b=T23O6k0yvUr70csWMJDzlbSsx0uYb3JAfbLP8XsCx/fwngOCii4DzV62imJL+/A+2
	 66OYTXIj+EcBaz4+Z7feH5XyAlU3EC5DhYD0m6nqzpw7nMfai40vuOaaytVYVBni7G
	 qVIMx0knMuhFlZ4QWpjfA5QihF+EoXalTGTWNhrX1Ay8Xy1Su5auN8iwWwoIcs81Rq
	 zj/DtxITMevUqZn659ng5jwikl4Ghwg3FqBMFHhSlgtalH+QCL/9cHP+kVEvSzASX4
	 GSMxyNj4MJUmS+M7gG+lK1Jd05liC/qu829N7KOMGUmGLkofQ5qZZAMX6s8L/tN683
	 XgzmbHAj1ktvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA7AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839990279.28967.7051333652608130210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33528148d271c4d56465875fcb2e9c67cd012fa9e06e4f923e5237a852e6fb09
Date: Fri, 14 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718399902
