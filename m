Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610C3FFAC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787833234; cv=none; b=C4rycHPITk7j23y00luAzvWte93oqqOQzG4D53n1uj0aNYXeXsQQeuhDb5AxlHqP9Ho/zQ2r7pkr71V87nlj9PjxINzO7kCic0UjSFYR/Vj6lOTasHOBevwO/1CYkd57KTwQWTgBRMsydOznAH8s3xcuzbAIS9ejC5KpTONeJrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787833234; c=relaxed/simple;
	bh=wF1pCpZ0d95KySyCiHcP9FoUYizzuan78U9Yf4N7u/U=;
	h=To:Subject:From:Message-Id:Date; b=OJ9NkGiOg8UWi27Uk3ls+4fQCcswzxqBXVNanH9W/zFb899/0GYGLco3lv7zJCBiLUrtvNgaa4p0q54evoQ1wPXFnlxnpb0Uim2NVL0Z/kLpUV5ZuDuPePaWpKnmAi4gr7oQBmf92ssmxZVfcD3a/SmBYTNNUlTYD+mlHNbQprw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUro1/i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUro1/i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD644C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787833233;
	bh=wF1pCpZ0d95KySyCiHcP9FoUYizzuan78U9Yf4N7u/U=;
	h=To:Subject:From:Date:From;
	b=FUro1/i03BfmqOe5DAqQa3XYtq1ZZqeAgqAzjsjNkkVhbH/8MfTw1ZXxvvx82f6Qq
	 noEo8pdOWaIh372jgSpkcSRzDXEb6ciiDaQl/dXeMS0arjD+VO4v//WPE+nltYUhiP
	 TDcGlW6zVMKY/sxarVakkrxjc3LONbqWMzWNE+7lAe8neWWgxnmeoRn7H/+HcPpZYs
	 k81LS2fI+TWKF2CqAmLZGuCmVUT4hYF6mfZFcpHTqHqDMIL9T2wP9g9Rum5Y5RbeBj
	 dqSKQ8IaSBwsT+tqo/vtDfOLrK+PrO8S8ZlFTj8s3ZqGKCiKb4o8kAfJhJqWtSXuwY
	 YpI2naXoUdeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABDBC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783323369.13839.17784117444900504190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6da7e0f46532c13173c024df3b49bc59c53963835fe5c864dc0578f49a0f05
Date: Thu, 27 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787833233
