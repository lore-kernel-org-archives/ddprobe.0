Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461741F3BBE
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742664594; cv=none; b=LeYtEeyVwVmR5MzgnxgCS8H9CAWHJF5JvdMrthJ9l9PuS3atEZfn0qiuUku4BP3Wpu05kf1NrTtA02Krcc/NvVmt+P79gpCGYtAU4UtGCKC6om9dDFJOQeGDUqQxmPdKe3OmFUtq4P5+5N1Jxr07GhPw9haYMe9h37gD8yyn2yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742664594; c=relaxed/simple;
	bh=NK2mA0saSH/0armE6sFfjQEpVYuPHeGoyvN2rgk/ubc=;
	h=To:Subject:From:Message-Id:Date; b=SlLHG+63EydJwGM7V0XEB2CdqYCe5itxsqpBHGt8hQ9MPWuOQ9eSFIbq3zCN4pD9KEw/QSLiWWmUNHoPhXqngCnmiCWgBwVg4Y84K81KIRemUFCQ+ao3L4pmOIPqBpDS+sYjfr9fBbNKjnH2cXpHdAOkpVWvcZcCAZpl/huCjSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUl4MzWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUl4MzWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48F6C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742664593;
	bh=NK2mA0saSH/0armE6sFfjQEpVYuPHeGoyvN2rgk/ubc=;
	h=To:Subject:From:Date:From;
	b=DUl4MzWSxkoGab5xLe6zRNWDRJn/KQUxNvk2+6yu8krJg5g/bQhlb9nsSWR22J06w
	 YsvHinCllSOe7VVM8ks3RYMG03uw0hDRijvtoZyeFjtApmhrys1crGRWats1b+x5w7
	 lNBnbDp9LSOwIEivJ12lxS7/CoeWevUR5b2buNYKLdp4ELM0bN5AzWevuqMbGtRT9G
	 BpsYE1R9jL3OPnTVpbcP5DPB2szUdFv26hyXuqwwB2gvX7zZJUKMsadXyOUVQ22t+m
	 5z9zYn9Egh9nTAgUJ3DaLSPX0YDS5piHAaLjvK+j6rvCeNWWEm30vp9bzOb7Yt5gx9
	 siYojTPCZyd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1A9C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266459360.5198.17535646525679181073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39487fd82b906e9104a080b6b1b24d765c5a2ce898deaa0618e0bf03330d866
Date: Sat, 22 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742664593
