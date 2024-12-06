Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB9F1C548A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733516754; cv=none; b=Ii6Io6DLCcFUR10IJD75uBHUUtk9cFa+KWO1H76KVjgSFe+r+9zJUa2rZqpS4UR8MjUb0oAklzK53nMuYdpk39VtAPApOhRLAznjrYig5HX5yYNoHtzIi9Gb+qMBHIVkrePjtkxusrCpoVkeK/uW95AGLeobUnr3GeU2DallsHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733516754; c=relaxed/simple;
	bh=hGkaOcN0paVxlyhC30LF4DHA9rv9v6v3N96WrnSisxo=;
	h=To:Subject:From:Message-Id:Date; b=NSnLq3godOh/IENFw1KDlT4oib9O1URPfUd+pRMk8aRTa4lTdTzCAO/lCAN0/Wa3CUiqHn0x3dm5vMuUhSHD2iRVWrlCaU7RxE/2lV9UBMLxZPVJFNMKnNyJl35JczsDppJYvi1KlKWMgkTEghtp5qj31xuPAHaxuuQn+m1DlWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0QfSU0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0QfSU0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A0CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733516753;
	bh=hGkaOcN0paVxlyhC30LF4DHA9rv9v6v3N96WrnSisxo=;
	h=To:Subject:From:Date:From;
	b=o0QfSU0gNHkSszWuEPvmBwpwezo751WwyH3wrnGYKGe45qTaO629uWZYBqoLjd0d1
	 k8pI8mvEb9fWsFjah7M8GUh7kN6TYd7pkG+29FuJGw1IN9/nveaPfo2a6ucQ/wPsQi
	 nQ5OC0krDNjXCNzDswKXUS1r3UCrDQV9haicD1C955X36M38MCRGS61o/CvzG9QOZ6
	 iBTssm55zmv1QCoOikBZKIvw2bC8XAK/zI1ikhMM6npCdmHVbzDuo1oy8EomlOxLfd
	 cid4DFonG627G0L+MGpQI5CpcKKUQAUuAQwpYOhV8SORVvvao8Ji19ik/z4DH1SmJ2
	 l8ytxslJPaTVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1548E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351675363.5525.17916712449495384963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a045f4b15e06cf6869a7c11ac86001311e23297f05969300934396351fdb4b20
Date: Fri, 06 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733516753
