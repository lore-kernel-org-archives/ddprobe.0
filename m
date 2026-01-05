Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E5D17C220
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767628433; cv=none; b=EFOElj6eKncKS2WJVoBuOqf4pLkHCCoFV3uoEBr/zf7GOZ/SiVKozr1gB1nvKzpBu299Ga6G2LrNbPSx0oFuZBR4P/W4feOAKkDb4IIPeUqk2cWfFHWxhVwLggvC+LY1TjRIrLRsRXi9SMRl0jnUnWtD2g2Yhrk+1o2+6N9/FDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767628433; c=relaxed/simple;
	bh=c7j1CrMO+RspA8dfaG+HRGRlHkY/8YrxYbaUXN1LDio=;
	h=To:Subject:From:Message-Id:Date; b=L61nvg8yc74yt4t4lHj+q57e/LcApA8q5t7U3zK2Pkfophz5plqRp9lCXIgY1un3I2QkUelqqp9Ezw1eOUAG8KBFZpvk8RX4vhuLk2fGGp4PmLSpnzdAwlRU1pp4HMj+FNinywsYsSj9evUKUGNXzSJ7I6OZ2max9fN2N7uTQgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6BamOZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6BamOZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6BEC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767628433;
	bh=c7j1CrMO+RspA8dfaG+HRGRlHkY/8YrxYbaUXN1LDio=;
	h=To:Subject:From:Date:From;
	b=H6BamOZLf67rXRHIs4xtK+QefyXbRgugGTkJJ5o63iuw0I/WvNoMkbxLgR6655c1z
	 ht9veFikevsFDykCIYnBT1zJkEq7EOmH6HcSh3A1IaVQcuqnu+sTeMbL5d2GoyL/yg
	 VoJ9wcli7lG/8wGbZFP7Pnmy/brNCKo0hHymUs4lglb/57VmjEzZoWvZhtAp2aXXCn
	 5FGIY8kCWSc+z6U/14XWI7cpBA8gd4uegZJrXRiiCmLY1gyGBMAG1dhrQ5K6NQhsMy
	 jI/8e5rZdWHBrxdqn1jCHB4NZ9GVLkycjjOq1gkxQ5pLHEugh8xkE4y3SOkxc9hsT3
	 erH+twvSmbWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1EC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762843358.15825.11484068114976207321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df221c910287b9dd6e65c0a85eae6ae3f293c86624653e705edf710b68fbecc
Date: Mon, 05 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767628433
