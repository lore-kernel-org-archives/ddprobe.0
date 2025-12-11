Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B57D3168EF
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765486374; cv=none; b=ejqNBFHluOImoy3VwiqkVXhpMfoctO4stWw8egOTsQw27TZfXoPf6vxqnlilnwEatOi+8G/pcy4mspu8aN8lv8dwxAxlIAwv8DamRwFGwZ/IwjNPyuv3b/9OKMBctagYmXUDOo0j4am4hmKTvaqz7WAv4YEtZgdovGchdrikZu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765486374; c=relaxed/simple;
	bh=Okw9rVPYkZW0bTPriwvFozv/zB1UvvSRz2v/gjCUCTw=;
	h=To:Subject:From:Message-Id:Date; b=RjbIcMoJUYHYuFUPPLct5MtnbpVSzzX3s+EZV0bOfFW69N8iCekj7kX86AtxT+Km1E7imvoTpMnIX2Wj2WTn4FcNH+x47gNedgsCeVOCbGE3oGYnsHwrgTNTyAPAmMfJ1m4Efv02RepVE6wiIAOC8LO1BRS2ZBNSwGTy5hh5C9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTRnNi0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTRnNi0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD708C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765486373;
	bh=Okw9rVPYkZW0bTPriwvFozv/zB1UvvSRz2v/gjCUCTw=;
	h=To:Subject:From:Date:From;
	b=oTRnNi0nrRKxI7c9B8RKeOBzcwwsvN0c2oNHzIAjfxLWw5hEmIxsUbadFhbOPwdPB
	 a5reigyLJ0UCgckCbdkxtsXXh8RrhxFXcbpAkU8pO553LFVPShlIKmHpw8CdxAsyLf
	 +MFkGdOXCNnGnPVjuubMSi4MO2SjXmjKdumjfk7E57PvpzO9Nya+7d8yW6loGXl8l9
	 6KzXAP6mk7oQutlrVHnjmZCw1B1IcEZrFuKdti93Uhd+ESB6+bWdn5JQbI0gUqZeS7
	 MwzpbqSFVaAj2xqEkieD/lSJ+I20R6MwX5nZhfs7jvX0Y8PeDGdphbYHrfndKf6wg2
	 zxtG1WMo2AJQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996C2D43356
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548637361.21726.17514720616381313310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64a9ed20f5bd6a3b7af5e47d9ad1fc7eec029f74495e146752fe1f00392ed2b
Date: Thu, 11 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765486373
