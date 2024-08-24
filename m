Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45765AD2F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724526354; cv=none; b=WfPXWv6g9YkMp4MiD5w36ufh5si5926/khgIIXZCkItP56lH2+n330ZAzqyRdv4roGffwpoCOTF/R021OtlVP87Z7I7FNm2/1a6Iguz0LgDKewKYDpFaOr2Ol3PFtLYfA+f2flK+SLNDdp/ftx6kPioysWx5vI/wZ4svUrVk1EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724526354; c=relaxed/simple;
	bh=8EvcYPAko5csEiWEP/5ds8dLh7bsBQx6tQi2BTVgY58=;
	h=To:Subject:From:Message-Id:Date; b=ZCJMHfrZo6nP2vGWivnCyUiq89h9Ba0Er7wukgzwwk/9z3zPQmaKjJ0SDMrxzo+ZYeRtdKsOUNnE3RmNn+ibFHItLK/cFgGqYas+xu1SDnVAff2f3jyvrhJSPBpn4H3nQsj7lClDKSP1QpQE2lRfowO+mvnhg9QBpkR8iJ2/UpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSJ3nAyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSJ3nAyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B944CC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724526353;
	bh=8EvcYPAko5csEiWEP/5ds8dLh7bsBQx6tQi2BTVgY58=;
	h=To:Subject:From:Date:From;
	b=eSJ3nAyIWt1Wz/CulAQVsTvz88I1yMb5qkdpmi+HnlHHRNehWFWwJ4EhqnhPM5a3P
	 4FhlNFBvlDFHlU8kG4Rv1frUCht1+Gjk64D0inpNHoW93y6HWAP+H7e2WQDrlAgpsq
	 gV71+ZP17ZweyWJiH0LaNpphDPHLQ0hLxtiwk3gSRBu/TVERGpSfUfxEYYHcyBkpkc
	 Z1xuKt44JnxNWqhzKUq7qNZAOgDxTGqvJNbDyh3PUX76fZI4jbVgQYNrbAkQja9kkS
	 n55UBY+hUf7bNPP0Wi1k+XwvuhyYKQpvpDD4JvQq9mkQORD1pkaNyZ3e3pk6N2xD34
	 nEpYTZTgQU1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25AFC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452635363.3644.15278578463968456124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28fe8380bcd94b28bc3af82a3c09327c4a192dd8b05afc4557dfce7157a49ca
Date: Sat, 24 Aug 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724526353
