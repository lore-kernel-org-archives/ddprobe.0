Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA7F4400
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718413103; cv=none; b=EJBpSM3q9DL+bZ/qAMPh7yK+Xp/OXA+IUou0ixhYT3SnTCdwySCExcs5iHOlGjuUvXaSMeGGx8fDl5NdzBv+CL8rIcggiipyPqFVpesi9IiInuS3Aj4Yfk0LU6ufG/AQtxnBtyYPsYg92IvmDUuQjNxDliRwS79SCCYp+O28Eks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718413103; c=relaxed/simple;
	bh=Fb+Vbn+YthPAYKaINZARJQoMEgZIvsUdpS3JhMdXgQ8=;
	h=To:Subject:From:Message-Id:Date; b=H/ehBFnGPd6bexWk/BcGNE4L2zjWIzrlpEXg++XEVUafhT62ktc1ADHRunHJGHZxrY0VSdSr6IaJXHeNXJo8vGFthAZ4Z2EhEdZwHUl5h9U5untFohl/Grfy00ivh32GmZYlTUom/2a8evCac/9Wjey1Ab2qfix1JMoydhcQ0bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HztekjXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HztekjXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E062EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718413102;
	bh=Fb+Vbn+YthPAYKaINZARJQoMEgZIvsUdpS3JhMdXgQ8=;
	h=To:Subject:From:Date:From;
	b=HztekjXzKzyqbGMETsa7pKbPAI0g46J9ix7Hvr+3WqBl3NIr68ay/CKDCEdbNQbe8
	 zD0r1zsCre/SC/IMsMi3RekCOOCd4IR8wabZvqhj1rPJvuEFewHW7cFfa6XKOtpN/f
	 KwP1YY/UbxpjyfbyQHv3W7n0YXaYLGyXCNKE8IVurcaEGpxEEsRgraTcnrKETf8F7u
	 LRsQJ7tC9NusT4ROaHI22vkFteGQW4Y8d2NvN0NOi3sROagSqWy4fCrqR/PIIGql1x
	 ccqbjVJIdRRk0TK+xjx89v6fPAiLqyqc+wl5hDzh8wEvwXoZXTidO2OVcIncztMKlK
	 Z9XTWAZsww4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80A2C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841310278.27800.16026539907153500874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b86a21cefdd6d1f5d184bb10db33d869f57bf0b226ce1451c8e14944ac8ab6
Date: Sat, 15 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718413102
