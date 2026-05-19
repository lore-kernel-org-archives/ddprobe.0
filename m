Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894FB2AD03
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779150634; cv=none; b=JSMadByHWz2yCAyIwK9HDX36cRA5ayvSnsVbQ2+HA3jwuaxNrvlASIBRpAHs/Gze0zry+MH1OP4sIyRtIMUxjbuASux7efxB2v1JH8MtkqhfuGh5IyHoCnEiCrJ+vNCSys6sUKyVPNxlyZ9xM5nRJh+V/FyRMMUxw2QWZohsFT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779150634; c=relaxed/simple;
	bh=sn0IwwoyoofrKZ2AlVoRg3G+gSxm5hUDqU3NIA5rQ1k=;
	h=To:Subject:From:Message-Id:Date; b=A0VmyMFLQVymAQ/qSG3P4hB/yM0ehk7klNPOm6eoGq8jvzBFlhMQcI3hlPf26+98rxkIldYbaQqOQHQFeUAVKKyAgH4jRHAxOOsupyelMQCsfHIyKd6NiIqdLKxoOBBHV5hBNAn79nn+oasIHN0GDMmikVKMYcW8ZUlMY8C37ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryscGYx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryscGYx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44ECC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779150633;
	bh=sn0IwwoyoofrKZ2AlVoRg3G+gSxm5hUDqU3NIA5rQ1k=;
	h=To:Subject:From:Date:From;
	b=ryscGYx2mXIhBfMznf5xTgME4TMqjl3d+FOy2Qtv7SvqWqmMEs0lTd4xAqQ4h6qZO
	 pNYo6aAqBlaJ57Dq9o0UfLO6+Pwqx8tdVndM0edyiRm7VcWeYsmElreWOsGRw99/x1
	 KsUuf0bfIEUSIIF7jbQGDzjgUMJQOdBukLl5HyhWMMqYnU+zgTdxYLRByFH3L9Zpog
	 oAPLMYEOLWORlUkl69dEH0OwFLaWTSBXukw1IrGN6CiZlsfM+Pir9/gjfdSQLINWM2
	 78AUvvGwWRs23h25+NaEXS4KJfmlVVaGGvAFYOiLs7g3wT9RJgBoDF02SBNLex33M+
	 NqLkCrc/39Gag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B9CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915063369.17777.4341078774338116276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80450c0045e5c6a48043e58aa63c602fc1654406c286202dee020eefd94557d9
Date: Tue, 19 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779150633
