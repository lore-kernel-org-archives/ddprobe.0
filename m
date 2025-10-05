Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE021FFC59
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759653594; cv=none; b=oMXVlUmcBkuhLiK0dORE+sNf9orrAanD48oaebVWl6ltFWBFOuGe+jbzTQCB7A97N+E9Mssm9ez4GCtmE7RTchwsWLVJqkHu0tO/PPJEtR+ObdfT5Qr1XJAAN/idY+JsojX6K+78ehAHFhHW+QkmNXxhsneQAGghM1BfM5O9MnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759653594; c=relaxed/simple;
	bh=XcNiKRdZ4eObU8n8aB4zclWq7/neBi7wqcpG7TDr0f4=;
	h=To:Subject:From:Message-Id:Date; b=gAx4oMXeqsVuRzreCoF75BKgl972HiNkWxis1w9nsu72QRkDmy7zgSmQKDWV0QfXGV8j4gtacHew9e4/YV38j6n/oy5xN7Hd3MDB9uByc6USmdO95JljtHdrSJHoL5rLjNONI1nVPZM9+uShawk2tBjrrDxww2jlJN1i4/YpvHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8vk5dWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8vk5dWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759653593;
	bh=XcNiKRdZ4eObU8n8aB4zclWq7/neBi7wqcpG7TDr0f4=;
	h=To:Subject:From:Date:From;
	b=Q8vk5dWxY7LdObX8z/SEH3ubdLjghZ9SJHxHEYd3Poqprwtsw662J//Fv7UkCONJz
	 5H1kagqsdB69M8xil/9Rvm8tSZewEvLHdwX3WLfjEzTE9Se5iOIKXksS6NCAUTo7EC
	 CwAMagm8llPod65lRyAotRlq6WaYrDibxVDUiLlwTQtz77qWBd9AEq0TsQc5pg1VBL
	 98F1RoUCSoyx1U7CTW4NmjsgPteT2T/niRydRFDrd5ySYBv//KVrx6LkC/bIrLZknU
	 i4YMRXoHloiIgkN2QgrCqlMpHTpnBIrhf3xBKysu4DAWGOezt4vCkr3rglSCf+iC6/
	 say/5ZK6W+cbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B56CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965359358.5336.11513253676215964186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dc23f283b089341f0d77f9087eddcf5fb3ca163f120c03fa1ec97b4b755499
Date: Sun, 05 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759653593
