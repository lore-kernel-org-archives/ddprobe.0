Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B1D3191C2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768043634; cv=none; b=bk3Y8W0Wzs6oQvoADlJob6QeCa+QBq6OrwVJeMkf2i14tly1/N2HUzE5PDjNq/C+sPXZeqDiBNRMHDAamxDeym5nda7lqgDhM6oxidhWwFSn3+D68GtCoU40+A0XO8CgO5GZyZmRmhdKFlaDlyY0UdV9kH18S18UXNWtvkbIRgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768043634; c=relaxed/simple;
	bh=P8r0jZazeBdmN/He2oWq9whUqaGiBIGaMryHi7J8HjM=;
	h=To:Subject:From:Message-Id:Date; b=hGPH4dXNvv2MB8rcZdOdxe/M2JsR59mEc/iDYJ+867mNVdM0wwMDZa7+bNWX/bPx06GpLUA09bo0fvGwRkmpJaxMf9CCN35LjVKj7m7dLU5XFlONheIcK85KjNlr8/XGfUTm1oIDMsLlqA7gCAnfZZbGuKfvXXwC7qUyGMhtgTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZF4ZyaDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZF4ZyaDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D464C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768043633;
	bh=P8r0jZazeBdmN/He2oWq9whUqaGiBIGaMryHi7J8HjM=;
	h=To:Subject:From:Date:From;
	b=ZF4ZyaDjA2javOEL5qDgZSzm/S+uFB9UTxkZs444aFr+s/e5PAtOF5H1OsoLruRBT
	 KYq6QipE0wZcIaG09DoTt0suu1niVWQrQ7cFClG/9+MXeN9OR0SLI5wy4HKH+HSe47
	 b7JTYD1kH5rAtyjgOeiZi2Gp7+EPUVyRXzAPRgmoMLvAwMoEQbFgKu8GfaNmw1BX1s
	 2udM7ba5CsH1YR0tbYxREYAmttyBx6IKpdD5OnV+usvy4axsas8/h8d2dzsrpVLuNW
	 5zM3Otrn1Nfl7JuVw2EcgOutgzleWcwRkmy7cQ+TWNRvbNFcAEDIaNtCIrH7KWc3gI
	 PuuOcs7KcO4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BCD277E1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804363357.1866.14712262008481351314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8a65b9076771b958bf1610261b153a2b87d78478c57ab23eeb00ad22c47ec8
Date: Sat, 10 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768043633
