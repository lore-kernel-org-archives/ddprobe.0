Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F006A3328ED
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766175234; cv=none; b=kVpAB9Qkl0QjuloJ2mWo53r0663KL6U7xsSDq6hBxbOutlfvOuIkgf5Vge1nFMHMAvuiUA8tlbttTTExdazTujrD6Q7l8YZBHBb1s+K0aeE4oRnWeId5umP8I6uHIQVWCBWJ38vjTzITOOSOsPkxF3IWHmko0vHJV+IUo/p9C0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766175234; c=relaxed/simple;
	bh=34qxHS6JjZCtnJ0+QJMqszvHe8hSuBazaGNtMNX42TQ=;
	h=To:Subject:From:Message-Id:Date; b=Vim/8GXH14s1X0CDP3ep18W0La4KZIP1KjgPwwt6nf4AJckND3ST6jKpoIiIEQwBSLK/iRlXC4qrIhZGP2cGGYbFrxv4PRUZo/VRD4RncOqXhvUdNnSvgjsAVmR2Ql0//lKbiF25LOESs+BxvwBAnUj1nPvteKKHGI5eHE8ZscM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOztWDDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOztWDDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0823C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766175233;
	bh=34qxHS6JjZCtnJ0+QJMqszvHe8hSuBazaGNtMNX42TQ=;
	h=To:Subject:From:Date:From;
	b=cOztWDDXsVJF5n7tmd0A+4wmnJtq6EL49yWVyVbNoULLdZ/xAV9jx4WoiRQnsQhTR
	 h6MQg3rYGpBJt1DBa/SxLK8aj7vFTQulHhvbnOAchdhamtyRwVeWIjcH2vqftj/BKN
	 aTGUq68KASxZDf4a7zXXGEleVDWFu59dHP0mzlcD+CjKjbYlt9Jweg7tcRy4FctZI4
	 q9VYLWOpWN2NmYfpXcWGZUoCcIgi6ZnXeQattb82su7oBFtShPD8oe8q916DWZysUk
	 bVBNg6XkHpeF5f8C/H7bCFWjG6eU0ptWeGWMozUR0OERXG85EXr57EkfTtKYbzVovV
	 x6mhVpNnGKmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D82E66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617523358.14696.873807893817779694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab83b432378b88e98987f8fd03fc072e36d51a07b74eb9680b4c8787867fadf
Date: Fri, 19 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766175233
