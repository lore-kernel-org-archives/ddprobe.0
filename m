Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B61391
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764402774; cv=none; b=RypLFwXfpM7x60ASPhuFaAgVVFhSXRwnXRLX+BHBTtxSlZ93LEkiTG88/nF+NGsi3QYlewfZo81W8mXpv3nh74rwVK4nZ7CaG8Lkh+2RAmU6asw3NQIM7MEqeeCecZXdnSUC6MII4xesZgau++WJB7Hw3W+1uka72PngR+ps3QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764402774; c=relaxed/simple;
	bh=xUWPiGvYLjuHUNOlu3Ik1h+INIIEgMduC8Mh86VsmNI=;
	h=To:Subject:From:Message-Id:Date; b=mKEilMJxqsDhRFLeTupsiGPXVcC4v0hpOAqZ4FTk66LWqDIO40YyAVkW3ekDfQxWusYvo9UKamrE0Fzu3+c7f0WE7w7TWEQihWRcq9Q96lQK8ScM3K3k63PNOEV0DkNuyNrBsGNS9TVYKyNvEzVzIpqzB2LWedXp0w2s761VT9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6AC+jS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6AC+jS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C65C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764402773;
	bh=xUWPiGvYLjuHUNOlu3Ik1h+INIIEgMduC8Mh86VsmNI=;
	h=To:Subject:From:Date:From;
	b=b6AC+jS1TG9T+CrYJIQBaedpjH6/AiKI9T6nPigjMVnDpGJlAGE6ajnAeNPLwTdlV
	 5IxOb/3ze9MI5M8FigbUaa247khEmAqKxd7Cz+LZvW4ObcVOAMRgWAoUQUooFzq+LF
	 kuujEPrH3kCW/b9q/jaFUdd04lImO+mwXqP0NqcjGJkICg34YlSPlh6FyzXTk8DxwU
	 9JwW9O9N8pP69qi0gQ0DiyrujkARfeIBVk4hyeD+bWI1EH2r5MuOMFsXoOnWv4JrLo
	 5KUPte382mfovyEwbsZ7QiC2irbi8GwPW9W6dP9boV6w3llnF7k6KBaYo3lpG8QlLi
	 O/zLaBDa+GliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2CD116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440277358.23513.12084458094994224645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f45917a3ce52a8be025d83bef592d167279275ac771435337b35e94cb4bcfd
Date: Sat, 29 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764402773
