Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11A0635
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763775113; cv=none; b=XxdY2WJCtJEJSTSxZsVE/2Eq2xvL+vx71KzOIDOqL4773D62BOec8St4fSk9d5kc6n5E4Dw4m2G6L3jGIkdX+sK638F4Xa14xkxwCR3Y3vrSiNm9gOzqLE/RmAz9/MAlt0tbtC+W196W3wVfJSOgVmLVfZVIxHJcoO0G92kLoDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763775113; c=relaxed/simple;
	bh=AAscWsvjX9N70KezDyeOXkAD5wI47SCh4g6qVj17vo0=;
	h=To:Subject:From:Message-Id:Date; b=k+WFE3vRCVWO28ssgRTH5QnKuYKdhQDo1/XJzg/vRiV9D5JG/vsFF7GLkA3ZTYashx+/XLmUs2zhf2mEYdzVZCG55UGEYN5QeJ7tEBliYrGzJYnFKBz+Rfw0byfuCzGtbmrLP3sfdRr62eMxMBipQVs1IWaF4gwTNJMP1fu8Px0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL8b8uk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL8b8uk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F48C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763775113;
	bh=AAscWsvjX9N70KezDyeOXkAD5wI47SCh4g6qVj17vo0=;
	h=To:Subject:From:Date:From;
	b=JL8b8uk9EVCsbr/5EXs1vgCRgRteVKU6Smd220Zg1BvhxGVididKC/Vm3lQyIPAmk
	 yWgOJp9h+ZWD5r0eGRXs4HKhE6IwfDwgoqnTYIG/sbzQY9mkMavMDHeH6u95Vqoi+M
	 GbbZK9iMn60pK7uZf4Izc1bDIXwiiFLPiD3+f+TG95Hsd9AHyfQYTHk+2O7gXCZklf
	 ZrXUS1tMNf12ddiSm1UtZPPzTfoRAP4jRw09gvk9gdXCkni9zaXSLRIoaKWkNUKH/q
	 SCQVwQlottntatCLaDVaVN2BCgDqy2oDQ+B38GAvfMnP2Jjl8bMyu44VAL2ikRYEWb
	 JVNVFv8z8urZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91026CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377511358.19675.17743626764286733399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97342c0f2678631963ae20fd4956d2d7fc029f66a07722e8c40d2a16f16f428
Date: Sat, 22 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763775113
