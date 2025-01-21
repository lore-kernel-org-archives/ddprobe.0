Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C24C1494D9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737467754; cv=none; b=JhEO2LMLXQSthYtaaAof7JJFlY1ijnme5hms33Q7D70SQ5qRRpcETPPgCE8M59g6RTnzOg9w2jm0Ah5BKsu9Me2RMLmlO3pidYgB/RtwZPaLGomWk4bGUP56Q/xdJyo14XOZFnsOxMc+FPbySkiU1Y1mF0MLRk0+XSc6BEV3zEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737467754; c=relaxed/simple;
	bh=rr1ReyFFlPdK/3KAlmLv6Gg6a7j8oGLDZmAo9QtusAM=;
	h=To:Subject:From:Message-Id:Date; b=ZVSa+E9T/bfn4lWo7E/sHoO0WbxIDJlrGeGeqfEMfAET74hx+3BnlV5bOWOnuRdhBuCtVUHqEg7gPu3zOXbsoKJ/iUmfk6PeVGdF/Nj8nnXntNJ/wn42vqXJqQNCVchxVbhMrlkpiWiQimQjzakNOdqUL69CIK83w2EkG5wukWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXolVoPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXolVoPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE52C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737467753;
	bh=rr1ReyFFlPdK/3KAlmLv6Gg6a7j8oGLDZmAo9QtusAM=;
	h=To:Subject:From:Date:From;
	b=UXolVoPEWmG1XC6WuJ/TX74ufBKnZSb+3ikT281HF8N/dli+Jxw16GJGEZrJYoLdt
	 iaO9CHh9hxdD7J9EobYiFVvs54Wwp14ZAW3uXVPq5RXpibOKSErMHAjlZ23k6FbDfw
	 C9FiM7yXveKbYrsajb0jCtBZpMuebVZWazF2+LOn/mlsqH7OvUB6Q6h+r0lpSasW96
	 j//0X4/yIfwL+hiXOM1w3eKMyEWx3dbPI2EQXVNF1C4A2mxZHNSDEu37RsnsfCmkZc
	 IgTR3JjJ6kRuaVzqfeZfBO66DXTj+zX4jX9AHZ1Xr/CYi/xQ3lQOQDllu+yyvU2LHL
	 8FZdVMtxhqvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E891C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746775357.22551.4026339975311223111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb16580e35ba0b23587080642033e23276efa3e253d29409d273336903b60e3
Date: Tue, 21 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737467753
