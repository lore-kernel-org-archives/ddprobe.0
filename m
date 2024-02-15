Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E337D41A87
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708037297; cv=none; b=BYya/6x2eAXGEaBEpI3EeWT3ULP+Q804jlbP4UI/bdyKX3wMYArx13akTlQXmxJGLQEFOSXljP5QycNcgOeJm2xQT7FOn1UiEsvrhsZr+OE+mB6YXO6L2+zCTWxpQt8kWl40KgPHBEGklMLiUhEX6WMrHqTDuSCV8dr5UcS7/VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708037297; c=relaxed/simple;
	bh=VC8+foCLZahvQoAw/ZvvNow8gQugBV/xEB+crDLW7/s=;
	h=To:Subject:From:Message-Id:Date; b=KVe8iMLiqNPmhdwvMdzjT8Z3mNFOwHTfAIe/mfa1InMxY9jfUbQAVT+Aw00xN1+LjDpLbv6zwnNON+TaGGxjpjCPfaW/BT1BAxbAdejgTtvo7ltTtaxQu91g36qQr7njMGwHcnc3NqpMqoforc/5clit0K8CGYrNceAv4LNP7Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixhBJTLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixhBJTLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C13FC43390
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708037296;
	bh=VC8+foCLZahvQoAw/ZvvNow8gQugBV/xEB+crDLW7/s=;
	h=To:Subject:From:Date:From;
	b=ixhBJTLhnEVMl5d3fpnUNvf67jyyhNhpje3t0Nq1Bdw715YmL62hIl51Si2tGf/qK
	 1ZjnMCaEbnL1FQhrUzy/tV0kxjibNx1GAPYuXGKrgsXHkuuJSMZfroHymrWglYnuLc
	 tGFb8YT/QvHTNeS/sSMV4ZD5VkByK4jXARZaHg7ZG7Fth8A4WNtJC89k5a723Zr9lR
	 mUnhwPeTB48qIARm3dkmEFc+q9EjfXjK5eSPDzMQ3C04Vm9OeTgHUinvZWPehOyqTD
	 Jyzf5+SfZteAR56vP4iFeuXtosy1v4SlobOerKWHFz+D9SFvqS5UZGGc9u16lNBPEq
	 PjBBEXttjJDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5E3C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170803729638.5093.13075449025134768203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849def5d8d58779c6c23a04fb16c1fee4c61e117a15d3b4c8cc8e251bf37cd5f
Date: Thu, 15 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708037296
