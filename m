Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8AA2230F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718098703; cv=none; b=YcLB/iobfvlB6EA7H7SlUWZjokx3f4A8NWEwHG9Oe2SNMj2p8lNAsR2BHwOUXmppgK330qxQ4VCJbOeybyp3OnXGmRRv6N0CQd4FP3QvafZ0vweArI3BMVPMAVMyiocFpZkj6QLqZ93YYpzbdRrEcsXsopGLovcT99pFhZjovc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718098703; c=relaxed/simple;
	bh=4x3LwEA6ciueUq5+sNmOc/jE9zhqF9hr8LRNPSBcj1c=;
	h=To:Subject:From:Message-Id:Date; b=W82M49eY/fhvbVKhazFU3l7Jtnjmb/0ilvJ8U4YZh17vmy3Tpqeu0jsH2JoRxB7YDFxZ0U9VnAtTAjvU6hQr8IJjAj5vkwtBxXDoJuIL5VWM3EuENJ+LqiQESjN5WP30EWHygJS9pY4yYI7l2de/DrcPasDGz4BMyawhtJ+G+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDmCW9/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDmCW9/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D02C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718098702;
	bh=4x3LwEA6ciueUq5+sNmOc/jE9zhqF9hr8LRNPSBcj1c=;
	h=To:Subject:From:Date:From;
	b=rDmCW9/ZQr5oSzlltfBwlgL9+gET3TwRft85iwsynI0weCY3WGhfNX1BMpKtfPTRB
	 XnWUAf/UZHE7pe+xHYoeaSZ5Bd8cYWa34tN0ySRqfkV9ww5BdmAdrniG7Fuw6Kxoyd
	 ti7fqRDcRv/eMD8LekqET+JqIzAVlGAnuUC4c5NeYgENIyWLAX7IlmfKlpaal1OAo8
	 acWb17XtqTwJSVqmCYsFdV7vFpksIBL0A+jsJaT8Gsx05hg2mjP5I9BQV1uyBRpDpX
	 0oR/bkHRj2nTxtj3gG4+qxiupH8Mc3wko9KsWmtlF00FNtzLKWsdGdJCrjFgUffZwP
	 jSFDkItCmts8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0481C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809870276.976.7582494691763533876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121a3a2f8616574f145f63c7b81cc7b7579cc2c6f1f05c1716c5b9845074aa29
Date: Tue, 11 Jun 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718098702
