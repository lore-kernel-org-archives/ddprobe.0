Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A3A2DF14B
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761210594; cv=none; b=DEf7fCwjbyCMPi8ESBDo/X4wPwcbzoBYM57c0ult03LvnijmcpnoY+iaiKCzHKNk3Ym77XsyWXhVELlX0mtFECVgvF7zs7P8NA3TSFoNBkolitCuBkeSfTHg7o55oLy6lkJaPlkzIOkcjxoXCTT4VMWOsYoBGkIZuBO2nDgWiUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761210594; c=relaxed/simple;
	bh=IbpQQFTy/4Dk+YxAc55qvKonlIfQxX9sGgzGyawAUug=;
	h=To:Subject:From:Message-Id:Date; b=E2vWigVWjWz2opjrj5dwRA4n6EG/aezKKkP+v0TtBfDBB+jhYx6x9xboXd51JrlXNSq4ehSgVVM+JIX0lweXbusGt8Qa/jzbup+0poIGEoany551DKsvejv/CppAr0HCxWpA/PfEsxZlv1G4nGsfMQSH0WtT9kp/tkdCGO7Mcxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7JBQF0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7JBQF0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2A9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761210593;
	bh=IbpQQFTy/4Dk+YxAc55qvKonlIfQxX9sGgzGyawAUug=;
	h=To:Subject:From:Date:From;
	b=p7JBQF0qp/87oXA1Q+Quhf7O2tcTL60pBq7CSSGtrK1+bwEo7El0CUwKrvX/ULLwk
	 3P13nyQ6MlhkH1OqYaeIsZk5qE2WcbF8XlsdEmLNYMwSBIwaNZS+ZwrRcRDybfJNDX
	 ppKLeM1kJVXkqZf95bcBosWbxcMS73wrLZITpR7unL/Ofgf/7fdJtFp1rKjR6Sdvv1
	 ksmPgpK7WIbncHf9E5zU7TfbxHKxNfB3u2rUZkzhIYq3lE+eIWbp9zw+3pibbQlNwN
	 aWMn/Pop0EQfi35d3UwyH1oIuE60vHCV5nn/HVC8sHUsvfMdhlqg0p4ZaLwNS16+ti
	 /fyv+Yq2f4gCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1B6CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121059363.24913.15885520816001158891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc350880315e78020e3dd3a350b5713890b26e4fc878f2276d5bf4b5147c2d4
Date: Thu, 23 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761210593
