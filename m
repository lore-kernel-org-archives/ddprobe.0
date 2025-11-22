Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339AE14A91
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763772714; cv=none; b=aFlVmktXvuykyT99tSOS7NlKEDzdeIk256QlSnbAhZmzMRgxiNVTF+S1/sjxYeKDjJ7HHx0LbWRoO5nEC0UVNpIfvniBErp2SO0g958JzsqtH9GPbR4UkkFSBOsPl7fX1zdMWyOp+iMr5M6tyv0ePWciq2OXm8stHJcwEaQzFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763772714; c=relaxed/simple;
	bh=UFWpHahZsJi4BIURIz/DA+VaJGqfEH3ng5UC8KUaK/k=;
	h=To:Subject:From:Message-Id:Date; b=saNQXrE+3mP4RXbalo4IYksHSCq+if2fdGpRH5XDQfp9HFWQUcGu7I+fvu46PooA4IwYA9NbsOKKeLEnVgelUXkpKVZfZUWUdS/a1WHFtWWw8fPTUD7NKnLPMYsUACXzgBNqZUn/WPE0qWgDi1C7qzeJBlm4eHbk6LQfDQoZ4eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpBewEBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpBewEBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC321C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763772713;
	bh=UFWpHahZsJi4BIURIz/DA+VaJGqfEH3ng5UC8KUaK/k=;
	h=To:Subject:From:Date:From;
	b=jpBewEBChwyKVb18BZ9dubPC0ofGy77zOyTXEgHab6dY2XlbyMN5FQ/TTfOX/mIVm
	 AekexafFxY8LDsXrzH7Tp+Wy5waMUMzFVlfHB3j5fm+XU5cfNc3paRPJ/CYapaE+aP
	 dd1cP0q0NKMJi9mJoTj2CfKqbB020TGo/1vvJ50Bnb+d7n0cZ6NTRNcmUBEZlqa3qp
	 4oxqWV75gH9MQFEAE+bXha9VMAArLpgCGdyFhioyD5m8ZVtMw6TTSqrhfVKalXgjvD
	 BrLYDkvDCTQfB9pkIcBzCbl/Gc30hPNXzhqyjC/CeOp3A0UkvLoCjh38R0TdwO+Ovp
	 G0ynnojF/Rxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5ECFC516
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377271359.7416.13813404820869176833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e4f229004612d66af8b41cf49a51d022557398835d8f74e7830977986a7b7f
Date: Sat, 22 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763772713
