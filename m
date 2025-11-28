Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EE426E6F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764355974; cv=none; b=p5icdNFAgxXSBPN5+HtwcYkhajFgRzIPyRcHMCX9/V2PLvTJYuVrzT2JQiWQ/qeIBMHtQuUeKnVy8j0D4KHJ9NO2EgF1886BdoTtIg8TENPyRj7AXtHCIOLwG+CI9ZiLkU29FyEMl2i8m+PnziGUs3EP36/NbsbfkFWEwzb/JO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764355974; c=relaxed/simple;
	bh=FO3d6+/WfRo4LYnIDVREU4wINnNlVcJUpQP6O0U8Nbk=;
	h=To:Subject:From:Message-Id:Date; b=A+UWkkYt9nuoS4kY+ZSwidc2gGHm15+yi1XJmfP9vHxl35btwjwVbrXh4H8kPpbEOXJkxHESnceJEhWkp+B+qH39djwjJfq2ztChIw6ZcLRWfJ/ZPK8FE8aKH05Hl+xmcelWcr3NbVx8FR6L+qz9vF/EayS6s5RI4XuRkjMCtVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAswYlU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAswYlU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764355973;
	bh=FO3d6+/WfRo4LYnIDVREU4wINnNlVcJUpQP6O0U8Nbk=;
	h=To:Subject:From:Date:From;
	b=gAswYlU9bNzW7c82cEUmcRCR0vR943NDh4b2pNfwzV6GaMJAoQj+0pVGXTo+g5A5L
	 ufnwxqJSndm9AVAy5441MGUZEf4+0kY9qpjKp/k0ewMg9jCdkSKyWCDHyar4ON8Ar/
	 HCXB2gkKQWQYeI65wgJNLSFF4dOPTaz0ScvQ3s3IVfd9aSUDPyE+m0sUcDrJ4EKJ4s
	 J62Gey/1h0N/jkMZeJvSxI5Ormr9xnODVucI1HVoHEI0AVzHf+Nshqjg0eiv7652XQ
	 w41x+IuQD3LrwPGaDCeRG37U+SkkUTVOutrUOCArAnMyo/RDJAHphj3dmIlx4Ee2ja
	 Gg9YpEijqpOcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE6D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435597358.25450.2077507438407615249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc22e4a9716c225c9ff1934878f131a0e9fdcea72475671b2678010d3c6be50
Date: Fri, 28 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764355973
