Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6141D14A63D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717525583; cv=none; b=TExRqBTsJwmrnDAgU0/ccKBpfVVlfWqcwlzDpcnJxxA+7htJPP0lRKGJKC5pnwejnsz/HIusl5D+goAkmoEKnY2P8pQWtjDK1I7hJAgGivcn1+IOArBIQtaQ+IjqHIujjAE1pR4z1Dn/wsXs09MfVQD+1lFhnQJcD0Z2xWlRV8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717525583; c=relaxed/simple;
	bh=ug+lta1vDZkAVS1uFh4vQ7odt281pQo8aq8uhtG1SuQ=;
	h=To:Subject:From:Message-Id:Date; b=ELGJvGtBQlaiZ/FwJG5lSGPNkdNaaekpccPj/8O96YJfR2Aa8Q7IrfRo3TXBLq148X2UyC++Uk1fnkPcdrX0IOpKsmXi6lPmt0ws/PqTU5PWgi1MMQ5I9NtoCJgct3ArEbqrgHIZwrO0Sa3eLrFcHsaHEdt2jBqkvilIJx00tbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUQw1Zvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUQw1Zvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD15CC4AF09
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717525582;
	bh=ug+lta1vDZkAVS1uFh4vQ7odt281pQo8aq8uhtG1SuQ=;
	h=To:Subject:From:Date:From;
	b=KUQw1Zvy21eBpDWbOT5YhKfPVRQy/dgT8dAe7mS81lx9n2b85x0R7DMCstnF76qYg
	 oJHGTlYLwuc8W0uZhrQunIzouUjlRDCSZB0ken3NZDGQxGv9vpwps/kXPabiClvphE
	 xnkSx85jMIt+jJYtjk4vuJ9O1/PRGnin3nOxPX0WLy8a9FjdG04oAG3Hmy38w4TKzK
	 6iRk0oKfUJ1uyEUkseyyYksvuSmXhRsNoAWzb5O6FDxzKokGyOANKHYfLQrAjw4PZC
	 iyTLPEbdbP8VYyAUZ6VfS+1mwp3qhA1SpLxcop6s94yQzRnjSFBKm4P6s2AFr3wEFf
	 Kf80NDn7QVgUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC2DC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752558281.28167.11710668548456005370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b3ff028c65033aae30901b3662889625a030210e83020ac7c602f7fe05b8b4
Date: Tue, 04 Jun 2024 18:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717525582
