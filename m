Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C731DED5D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749929394; cv=none; b=Fqoj1r70CUwF7g6buLdQNVVyK5fj1qdrKzXnMzh4M9tqbpa2LOATmphmFRRxIwwQajj4ZkE0IqoMlth0/G2N5h8vqZK0yKbzwax5u7k1Pvx698S44Bk1QO6T0dyWVpAq7t6hqJmZSzqqgdU0NtumGksjJKEFhMnTAkkzjues+ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749929394; c=relaxed/simple;
	bh=lk7MAYDDRRvek2Zf/ys0ae4YenPlKqNQ781OQVyuj14=;
	h=To:Subject:From:Message-Id:Date; b=UFsa9+eSx1LGO8KcsenoVGGYqO6RRi1N6MsAoyj1XRQWB1pjtnZAohIliQc+cpQ4qFKwHlpHKDk1R+CeO/3b24mXZZ7NrZaTzz546Q5NjRkYBX/uBTho1p43f6YtqhS4N0AsXb0e3kzvy1JMT3QWfqNn1LhIpjX+Q/E8Y5qcvKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f57ZMxky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f57ZMxky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C01C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749929393;
	bh=lk7MAYDDRRvek2Zf/ys0ae4YenPlKqNQ781OQVyuj14=;
	h=To:Subject:From:Date:From;
	b=f57ZMxkyx93oCNi9KZ/GRyM6kVZD+e2DcasYjureAjJ4i+gcnsXuzW0n7J7SlscSU
	 q8153QwMyikaTU71UNwsi1Ebm1YTq549wX5gdY3VDy71Wj58Uk4Z2I0+yyDbDkrCVp
	 tRKnV8vPPXAIHhZTGuO2F3No3LwG5M2Ij+tvmIg47ZAcSJUh6SncFoSPkJlfxlm9KP
	 Fm/QytZq0Mn7PkosfD4SjobiOhVv3xx83Ds7S0OPHJkgCQQuU8FSYu1QvatkaTjr1h
	 HEJOaSgpBBmEqezzpagxqNx8IH5I4RcppQd8XSbtGNFA3j8g2LknOErIuOD0z1+HY7
	 BtSnqG5Gs8acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F1C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992939357.23927.7098855038465808768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d6268b2ac1ccb18e0dfb5036041f3fc9be5ae8e12c52a5660530242edb6ea9
Date: Sat, 14 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749929393
