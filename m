Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252D031B11F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762951194; cv=none; b=ijj4ddnW/yHMQCfzCf+Q0ozu5pncRLaCbVvVbVyCA6rw31rQMVwVCve6lQJtp2T5ChBd7q2tbea9D6mzuqEbQwqgS/VaMiJNgi8EFsiBI8culi2VZlOfAv4LTcFYCgNpDZMUkGGfWo4sBIszA2Z0RrLlDJnNNfumWstwfA1VWUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762951194; c=relaxed/simple;
	bh=dFfAm8DmkquAkHuIHeLvGjtq+AczM6mt4WTN/RdxPrs=;
	h=To:Subject:From:Message-Id:Date; b=NHpFK/vbwUShVl+0cNu34iBTBW+qGQZaEMl1YbWrGexJSzcLuiaQWmWq6C0UrJshePKMt8JreBenwzjkyO2/AcrdIIQc68L84M255EjIXBB/CrAEYBLCg8AEAiV64eL2jyWwNyWrAAcdusMjYjpCDj45m+HyCk5Gj+eQNubJZeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IygwNzj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IygwNzj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1CFC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762951193;
	bh=dFfAm8DmkquAkHuIHeLvGjtq+AczM6mt4WTN/RdxPrs=;
	h=To:Subject:From:Date:From;
	b=IygwNzj/82UB5kg7CI4F6vV6I6fIrxQap6Rx41IOC2HtwoVCyFo4Q2O7HoJD2Edoo
	 k5rp6cpzw33przznsAcpHGmwVohOjX/jzj4M8Kt0iZMPlAteoORGz99HSCr8C/gY6Z
	 how9RrJ4ssoRAwvRve0AjVm+6LQyM16pU3JWcbLWYBeDDPXkrN/iv2gYeeeqTTvgjm
	 uOiwdXqKU+fF8RViZdDFZW2N9Eyw0VRq5Yay13N0u1PZBrkOgbdhMjz1sa/9cuhi7x
	 EQIV9hf9lwe4GIsF5PHCxp2m/NH8Bf1DkgMBPLfdSbGTU3yWb12xbehYIQYe5Y/DmD
	 Pz5BMg4Im6wVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92369CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295119358.25032.2075214609047592927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57cfdbfa6f8b1984b52cade831724c4ef6df71b61245633dab5dbf7d424ae7e
Date: Wed, 12 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762951193
