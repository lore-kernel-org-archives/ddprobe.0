Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249EC1EB193
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764690774; cv=none; b=Mrsi8TKFO5fMR+B1+GiDkg9vpd9EO1zwkXZlzP/8bV0iPYVjBOaBd27rTIdvPrH7mZ+4BiSw4KeFIe+nWsAFECht1jBX8aitNtFHZ6sukJ7nWlv9AH9x8qYtg/+RHM/asBwFkN93dcI+XnSYWi4Vo6Uyo36PMM7rLqnvLHbODWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764690774; c=relaxed/simple;
	bh=SLoHlTutgiTAIRUWSqFhPKJSjgScgzLigf7/4T5baZ8=;
	h=To:Subject:From:Message-Id:Date; b=X+wzRjjy8z9VK6grjnBHLQZGLnfMV8UWFp7yrSe3cLf4qMNyEQN8kwFV24HFKyOXpqhYDXvGMh89r4S2VwTLkIyrBXxNjyeaoko6rP0SIM3CnpoYWpnHhlZxNP9uW5Gu8hgDoVkGc0rs1lNaKuT243xbb2ud5GUIlSNXhygGdAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1lTYG+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1lTYG+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F24C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764690773;
	bh=SLoHlTutgiTAIRUWSqFhPKJSjgScgzLigf7/4T5baZ8=;
	h=To:Subject:From:Date:From;
	b=B1lTYG+xmOD5vuEJRxoFSJlsFDNwFHMMNKBSbf7oDlchUVYEz2CZSQu6Y2ibcV0Fo
	 hMrzOy3jCtNXSq2E2Zgx51WbCDHhK116Z58kon8dAgVQUhInELZqu5r08ZK2tuhIpD
	 2b0rS1d4u/byP90wAWZJ4p2TO7LFlTrKu/9+puHoLNFFVYPEdRU3hMHUcuqK7VtRLT
	 UR1v/QIXkahJe5kj77xa29AsVtTiVxdl8rKvyGebvXw+CzymPNEYYYlocVbzhlBBB2
	 xuo85fi+FF3reIU2g4AwOfWGhRiZMe7aSC22VvSyu77ERiT5HSYtIRAreaWgSOBzQn
	 kYu+hCED5tttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F4CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469077358.8885.1325970711177294796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b451acd2b8ed08b050d93f4d18e62cacc58dedbd94a5e9908e5b73deae6545cd
Date: Tue, 02 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764690773
