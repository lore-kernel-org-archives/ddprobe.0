Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EB9239E80
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771004094; cv=none; b=ptZ0o+Ow3wEgcKFDQdV8knwdtmE6wonac3KdsiQ+7AwSzzdBfnWxKUY/4f0REex9LlnRw2IAwzRY6nhQzp0h291v+kTplaJ+avyr2MsXUqyxbgAvdBJd/M0e5M/TB64zWGw7tbPsOzcer7lwZWKw6QlTHNH93Q3RV49+lNlqh4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771004094; c=relaxed/simple;
	bh=nYGR/SyU3N3Ma821JOyLsPtB7YOzfTNTAT70CtgoTus=;
	h=To:Subject:From:Message-Id:Date; b=hnfDmof6224s6AznNBEcVJ6asXCCK8RSLM641Oi4rvJs4ZMilf/0SFTYTXst01YffBGPNeusjXqWemOdbzlT+WxKrdfgme3m8gWzE8CL+PxE3ZaLnj98IBpC7fOzCcgZW+21QjAE+wVluo7RRO5K73mDT5DghYlUnZn1hd7ieD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPucNUuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPucNUuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB3EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771004093;
	bh=nYGR/SyU3N3Ma821JOyLsPtB7YOzfTNTAT70CtgoTus=;
	h=To:Subject:From:Date:From;
	b=vPucNUuHXp2TcSEPEw2HBMfQMMkwV8/i/ACDEGK4v+uIM08NzMWG5uzRnhFaiHUEa
	 44w0cn53QwibKgp7KGwYu97e3wHs7Rh3kuzDlQNAbsoYvDPDknHm4sOnM4FRu/N/Pg
	 ZEI/n9i6xHsoi32XM6vyPpJP/X7dXdv/6TeNfHKQwiMXvvK3DRDNr91I9TiLZkXlqk
	 BBykdXzmUSoNXtpyq9kvJxLpAdmnD6Lp9DAhyDYjonXYg9v7WpMOy2dwomHX8fiQZl
	 sWIPqpruhw2lNq8x9JrtzzhGlCsL47PLwdmu3AutVz0bicA7s4o4CCGKlQxjYjp8iN
	 pzsJRXffzrrNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A511AEDF17E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100409363.26033.4198775346732028310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c43e0397bcc224aa59ddf247c48146c41da726d5e1a377b24971c02b5aba11f
Date: Fri, 13 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771004093
