Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D32F8EBC
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786021234; cv=none; b=QGBWNn3mxJBHm6yinvyV0uvQd/lA6nKeuD4S8zueyHnxukjNQXomP/df9ysAqLxEdHXz9kbRikKSW+KyhiHSc4qX9sBGKvk60EWHQVcvKSLT+sBC7OpP+sG2bT44nQWvPIB6n51Bv6wj+Jxxt66wmfbDR0ZvrVtx6pIJO7PhIPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786021234; c=relaxed/simple;
	bh=iceiQU7G/4ssyEzhigYBEoXPMdlRHQ+WOrTsO/NZM38=;
	h=To:Subject:From:Message-Id:Date; b=i8PdX0gXP8P+CZaEzVYVf51ga2i4awGYvbjbso7+MiT5eQxMY3vxlNCqw5GigDXb1GvxOoDUwDAAGEbltUz52zUWXHQz8KiUTYfBI9Pk5RCVgy1DVYz/58XYIVuIotXkf2SIuifoRXkczl/ri2JWQgpYuu1631Qa6CyJFcQXD5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+xDQhw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+xDQhw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77E2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786021233;
	bh=iceiQU7G/4ssyEzhigYBEoXPMdlRHQ+WOrTsO/NZM38=;
	h=To:Subject:From:Date:From;
	b=C+xDQhw09C1sXcK/5hrraur0++cBf31Jz1NRtcPTW9aO0yxGVclWZI+bkHbFmp9As
	 c3jyQRMh1OTsT/7kwvvTcW89hT6zS47JjtP2KGeOIHOiOgLp1VdBE5Dm65IrPWLwai
	 qVXwC2+oFdNaMvcnMiU4Y0x0p22kII5WZuUy4pTGEDQwfHl9EaN85+o1hpJmgGBT0c
	 UBL00mKgNsRqyAyHfloGQ7BimWyxhbC65O1xCaBw3K+VXIP53FHAOcxIb2Q6NiS4Hj
	 174rZneAqm3S7lOLxiLHCfsES/frQSLrmZ7LGN8RiUyf/Rt/oAw9Fs+iw5JMnOch77
	 Dx+M5IRyACDEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7BCC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602123370.27389.6036035526423800359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770363b618f7a18f0c04aaa87d8ba41597ebdc22fa6587a84a7f30eefbdc448d
Date: Thu, 06 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786021233
