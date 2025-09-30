Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177328F54
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759204194; cv=none; b=oilztG7dA4Hr7K9MkSzSSILpPW1eCg0S9YhaLyB2f52EWcfPjZxNrge7Oxc4OTyBAuWA1dRb5+dohNsG824KYS8VvgCWKFi8ourqLRXsPthbhYFdl/N8Zg+bNayRcT902ABfd6wZg6Jxofc1e6zbDC0iBgKD2Ch9KOt/ggvHSjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759204194; c=relaxed/simple;
	bh=3QukZfakpaR45A9PXvlobS2fGRoTJEadpQWSzqesZmE=;
	h=To:Subject:From:Message-Id:Date; b=X92q7z0g/LeS9gYbtzNBBB7clujl1oK00sDuLCbdK/TnAr0XZQUWUFUBBIykwg5kW03jxVn26/emXCu3Eauw+7Bdgg1Rm72E2HCUj2D/92yS79MwKAfXRAXxnSAaOX4H3Q99IZh3BxnEipz+qgo4XpzjeoCuYeBXuyYjF2Swk9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQFu9u8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQFu9u8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9478C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759204193;
	bh=3QukZfakpaR45A9PXvlobS2fGRoTJEadpQWSzqesZmE=;
	h=To:Subject:From:Date:From;
	b=LQFu9u8nvCxWHcq6SrWlGUxbxSYVzM9IWc6ZYQ+Tbki/GnjkjXvmwirI+enuD2L60
	 iiETqDOyqIoJs9S9R636Gb+XqPSlLpnHWEmU605tK6OhoYwyoS2O+wsToUp2wc5xYI
	 MQw5D8URYoWmSAku+mJUBOajOFZKjTpxzOdFwq1w6CG+R8zBkZSzOnTeXhfClaMP8u
	 VNJZaJ3UByheTjOlfIJCSF7gaBKXmHTdfWLBiVGL6zh9Jt+UZh13yBXS1eam5Jl8bm
	 z4e6ZNR3jrrDr4WvWooSDP/Sn+k8NvCC05KwfJ0fKEnlLiz2VxOQLi7LCw1g8/VTWu
	 VLJaLvLz67KhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF0CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920419360.26333.14137259374762099976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205f35058b748927908d55903c3b208fe466858509f497ff9b527d909ef7c916
Date: Tue, 30 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759204193
