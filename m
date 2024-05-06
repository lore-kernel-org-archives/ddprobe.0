Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93D13664A
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715004743; cv=none; b=tuV8gt1dAUGw8VTOI5Eiz11/nbVlVUx0fg+JMpoXXPTYACNutyGDmeqpJqZPM8I1KjuPP2TQhJrY8ENVuIC3NmVt7VmMWads+kNr3/Vim7yXeAXg3pBTqAdcGvw4uQ4bfOWMNFxmVk9PDIz3lCZIKG0Q1xmVu3svRsNl3t6KSgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715004743; c=relaxed/simple;
	bh=51oNbFik2K5/svckdtWo0zhyfNvzVMgnQQYcIZNczjg=;
	h=To:Subject:From:Message-Id:Date; b=OJXdagZANDPiPjIZTkYEYvp4v4dMAxRYmG6JDAPoofBZakwgGNBCfVH1f/sbStO97Ne961f6QCux/+oFu4HUwyIKvlnvkdnJp/ISNujIeIKHmP6kAuSMSphWK7ah1Wv+GrHOORQYpqr2i1m+Gpgx1L1j6Y/kD+Te/p7P+aQod4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGcSroVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGcSroVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EFBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715004742;
	bh=51oNbFik2K5/svckdtWo0zhyfNvzVMgnQQYcIZNczjg=;
	h=To:Subject:From:Date:From;
	b=tGcSroVsFypK7PEUqhtOwXOj3NhDmuIr82ck5SOUFyw2o6htztBsRqnJJujADfCvd
	 GW1Fu3h1Pmo/nui34OyHuMI36LFYDKdNVEKDelGxNDAmRq6IXyi5Kn1Chw9IkIZ6Yg
	 fXaJ0voo7sxmzfwaa/XZ2dZzHHjDsGFGkJdiMwXlnjvcld3IaOmnOmooM/uqBwA/C+
	 6qtLl1e8c6fiUlA0ionlSFsFm/vJj4As5UG5pzRsbh+yAjsFP+vwBzZpgHAhfb0qLZ
	 N49t94ujQ3K+WUU4DKjv4uowJbDtBSmvqSLC9mxZbuWeGP12EGxxt+XQFaPaD/jT+n
	 oynWvtq0BWZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF771C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500474277.6593.10368776245733990615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9faa03c5b4179d40a570496580c00bdfd293ddfa6622f6fae6f3c6983f47ddb
Date: Mon, 06 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715004742
