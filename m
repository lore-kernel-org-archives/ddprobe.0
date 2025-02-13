Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C7520CCC4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739438934; cv=none; b=I+gmvBUQ0vm36VO+BEKaip6BzkgSiM7WyO3wlndvsik4ofyPceRzgAKkDMQqyAigq05K5LXKB/gMWBk1S0Xra2cPSvSsoFE0O5ubkh6VhZnYLp9LqqEnv/XFel77GqoumolWHljI9fHaKnwOK952X4XUOjk8kwd+WtagHd6mGIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739438934; c=relaxed/simple;
	bh=bZnMJyGSAICiNvWSMnFlumf0LMxE7qNgzx6K7dZNCus=;
	h=To:Subject:From:Message-Id:Date; b=ioUZ4LRW65MZyw78P5Ueg9XVTepiB8a9VQHuqizwG17j+U/zLy3b1S59AJ3mG/qJKHOEjuC9QBwEpLyBzVnvlgf0ZbdlxaqpukYMWQ721OlraSC6Fj12j0iJQn3zVxoW+aClFdUHWBDOKuFIeC8tYE3uWlWl9i+d03/cKG5nFHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGueTrMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGueTrMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4501C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739438933;
	bh=bZnMJyGSAICiNvWSMnFlumf0LMxE7qNgzx6K7dZNCus=;
	h=To:Subject:From:Date:From;
	b=RGueTrMJIHYS8qRSOAhaEnhDRjSi/+baD5QquuZeEUOyA92uptiSO4/q+ATpJkgFO
	 dzGfkp+5MTtoJQH+r9KgjzWPGsyxsHq2uJrx9iWp7kucQ1Gb07rTWyvEXHfH8Cd5GU
	 hDxrbNd5Yyw4T5fx2wAWdoVtez9k2vUji/f9hucfgDKX/RKzjcZbi/h8QwopF4Q9Q6
	 qxQTdABkuIE154OAQPfoWNc134Dl7IES6D1OytqbO30gtfQUDQirt6Cz3dEud4CcFJ
	 VL06ZN3uc+tqGf/DjYfmDP5r8cYnpCEy/1/1tikzHw4RBthU6BmoXp2qz52DYb7ezm
	 lDgcV9KHoOg9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173943893358.5994.4917065738954290797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1089547d93c3c8426ecd044bc740b84bb2009f9139f4b512dfd0e9d60f0e5d6
Date: Thu, 13 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739438933
