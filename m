Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB1D2874FF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771956894; cv=none; b=hKGl+wFhAnPEaebk6BUqGy7PIC0pk7SQ8vs/+q6C7SWWPDj8Vr/oTEHui1DhkguVe+adc0BpV3tGGWcLIxaikwP5KuHqMXsGECjAGajONbKjq+3rfkMCsT5ls9HmMOBIIvY1f6DnezOsIV7cBvz78+NqPkJx1AVdGHCVwqtPPK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771956894; c=relaxed/simple;
	bh=fcz1clZO02frwgjMIiyfxqOZ7iNYi3zswUhgaNTwkbQ=;
	h=To:Subject:From:Message-Id:Date; b=tN+YoiSpnWlkP5KCDNGUu4Nf9pHFuaQWhI/QR0HdoNhWBFBINO51zQbII5CWuA2DXaEdEYKzrCot7tXiYnzKwalbx8z6C6WtzBPNaQTNizAOCg0xDIliI6V1HNhVS9xKW4NVVtSPIkPDmBnkLsJ7gdvZuZc9njkH+MxrNFTU0Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1lemYQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1lemYQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B78C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771956893;
	bh=fcz1clZO02frwgjMIiyfxqOZ7iNYi3zswUhgaNTwkbQ=;
	h=To:Subject:From:Date:From;
	b=k1lemYQPqm++ulNxyQqbzQgrDB+kc/J3e52otwKfOeL/VgTgYUFuqgbLYlRVnZNqc
	 NfBHP9J8O1S6Zp+b4B+LDp5SmGNGeOUU9w1lByavEbAxZacCwq0lmPgRH8MQwRnVQx
	 EYDwqJnlJcCP1KUweciahau1d7IWSiuEvMxHVX/9VMODpl4EbAGtz7NYDy5O21cEYe
	 PDOfiB9YY8tHSXjLraFN8bCQingiTWw/vMJ5USyh/rTTSwGTkEXcMye2Lwzvf70+Uf
	 XPoL0TwsJxng753fqFS5bZc5wTsooeGKx8tuoj3bTpw3kHqSl8XP24aB41ctsC4muV
	 DAROcgVuS/PoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADBF4BB6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195689358.22062.2905103477346581496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d3c1f3db138d4173816c9a84e6c00a026ea4c3e20479acad88359aa36097fb
Date: Tue, 24 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771956893
