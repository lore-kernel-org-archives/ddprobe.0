Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1743C1E835D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755506394; cv=none; b=TQ9Aq3QDBiqFM2dUqaa3VNfHdgrtRaOnWScqs4T0OPrm4f2Rbh7kz8ERHVWUowHmCBxSLg0iX7K5/z9+LhKpiyVTe4sk1PjNlaxcJhmKsEAPv9kY+ApSgQJe02ZZEaKac+zJAGF6gAt2+wCnzliGWXc63s9g7KU6lu8+Cl2Cf2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755506394; c=relaxed/simple;
	bh=DvRt1s7V5r1mTUfrnuSdYxMOBlgZMKFk67kx9MaFR+Q=;
	h=To:Subject:From:Message-Id:Date; b=FeUFAa+EQtJ1Rzbe2YS1k2kyZWvH5+e2xd+UUn21x+90aXvhlnE/JvkenZ+y8nS6g6BxgG41l12S14I7DSbEQkLpMFIzRZXqsCR6VKKFwhRZmtbjRT33VpBj4sURaHJl+U6UEyCocjG2EH3PiSgJotBBKBgpasbVPVpsuWGzHII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvub/pfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvub/pfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2636C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755506393;
	bh=DvRt1s7V5r1mTUfrnuSdYxMOBlgZMKFk67kx9MaFR+Q=;
	h=To:Subject:From:Date:From;
	b=Rvub/pfT0XsdEBpYKeg0cUvxsfQbtnSD+3VBEYzJMGlVK+UjSGhgHrQ2NWuFifDsM
	 zjRY2+M6AFvucEuoKtHUtQNtuS20gyRXpv8awf1emudkssMxThsWP95d3e7+emuaVv
	 SFQ2zXPPh1/sfo+fgeKvcF3/BCfzWI2/KtSXzi27uOVQzlWqympFuYYHoCaqOntesr
	 Lb5D2HAF5n7OYspaQ3Bc1yiW2Lpg8gWK38FxI7QfWv2Y0y5jyy5sGYjm53h70yVOSn
	 jWYrOhzqEWmyrgQ6RmPs19D9l8AG7Fow5TRvNAf1JImrsd0ZEVOqsIHAhkKQ9S5pMI
	 e+YkEz/QLbp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56ACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550639357.13670.14035055521626344669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc8f0bad180fd8adb462e2979b5c14a5b29e426630efa42ea89fb8c516183a7
Date: Mon, 18 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755506393
