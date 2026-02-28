Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F7B2AF00
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772255694; cv=none; b=q+cGw2+DHUtG7xwfDAkcnlzgsS+IWNv4/MUzp82BK6OVhnNdL2zEG1u1aOSHvnodFwmKnMR21N+XvXd6qrcNhjYd0utejUVwpfnWyFqyJLAqvoyJZ93VU4m4qLEKqS6h73e15tZfntbWBTrXwbqXIrIQZZCPEJCxzYKW9XwIgnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772255694; c=relaxed/simple;
	bh=OoBPirKfTLoGI8IGwhhhMfUQK6kVCfiF7tszcJmOJro=;
	h=To:Subject:From:Message-Id:Date; b=Pj3g0zNzFV2w/YdylwqBERGN0VfPM3tY/8qR3HxEYl/LaB426UPN/ZpDjSDlwowpHQOSHAfUKlFrHpVdtHkrymXknH/Oln/zb4MMBv/ClNrP598S6dQnGSELe03jtgWeVAYvoYuTQxTu2ILZP7yf4cmd+52pW6xJHj2Tald7AoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iht3qAd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iht3qAd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51A5C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772255693;
	bh=OoBPirKfTLoGI8IGwhhhMfUQK6kVCfiF7tszcJmOJro=;
	h=To:Subject:From:Date:From;
	b=Iht3qAd3parn0p+3rI0K2jzdZuzqEbKwjWwRBCU7vE6TWS2h+XyUb1Vpb2uLNeG6w
	 dxqPKTG6ZhjzzuerkvNcAt8aQxYwT7J3dD+Jtxe5bqmUjoJdPkY99sTNO3eqVmBaPG
	 A7zu5lA8FGFUVnjPo07PRH6jqEuQbylH1s/7LiLDmFlQvKCr60DaYTLyMSH0aa5m5j
	 9ICHrv+df4F0BhN1bvBmEj5OybG9e2T97NB2QmRy17fEd5GvcWn3E0xcPvQ0VP3lvB
	 AbKw5BqqxHeyMkmfFnDNyxfySyMXELgOSeaB0LYGk9tWpIUKkt/yGKzqSceyWrpweE
	 Yeb+wfs2rIIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A5CFEE4C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225569361.20923.7128597104577471518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d50b6b12e4b9a221416122f442cbb295e1c31aa4256f70701321374f0dc77f8
Date: Sat, 28 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772255693
