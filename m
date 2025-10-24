Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD4F3043D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761311394; cv=none; b=X/6PIlUxkeK5RfZSnoVWYeXP5wTeXNkujotmigq3Klw7CU7toomm7C+rGjJZPYmAqVx8+0IptOSliEQyVHIOXmJb/nlGUQuo6Ya/znlKdFbcGi75V+LXfQcD3ZafHlSpXT50sccSLZaL6GtKVhwZCObAm/BwVvy0cV+ZRZsQxgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761311394; c=relaxed/simple;
	bh=/jtsEYECNov0nYBaPEByyAVu8dZYDn8EtKRHPfimgQA=;
	h=To:Subject:From:Message-Id:Date; b=craZpZsWsVpAil20yMfbjuFkQNL4MBWfQjcpFugHXSYNmWp/J/i1q5pZ+pNlIx5bo2aek7bmxnl86P4FxrGPxkFSvfV9NGQe9eGEhr1SgIN9dtyNF83L1D1QfN8sBfseNsaDgAh9F5AYbQ0sOu8XvyOKgnZP7PmIW2TfczNExCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKB8kU2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKB8kU2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761311393;
	bh=/jtsEYECNov0nYBaPEByyAVu8dZYDn8EtKRHPfimgQA=;
	h=To:Subject:From:Date:From;
	b=FKB8kU2Ru8GVaMrivQrxY27MLbEor91g6BX/0dD2HvZJszhoPusaX1cV76RoBatp5
	 yBugamDTLAhoHAlBy6iTgtvLkvoGo0P5wnZiuR1Yyaq07E6UnbdOHSvREnZW3RMO4M
	 Os0KfoVYD0ceuJ9GRr4MZXz4uBlMgtxbPpUtCdlysimEcU2M4mfuJEi6SYqEp2IpMe
	 lKgk2jYfYayQhdkHkZFYOb2SWGVY2RXkpEZ+fPtBPkUszdnuSBXEteHrILTImETu5E
	 9iJSK5GUIyg08ewOytNYyLJ5Izf85AexI5wffneRjCUcn2Y1GLpcRXLBuVWF9ieZM8
	 5atccL+4tcbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A11CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131139358.19446.4562283989340288838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae5eb213625972c4882c4b0f5773eacd6c412c580495ccfcbfec8d6bda7dbd0
Date: Fri, 24 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761311393
