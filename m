Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188852E92B7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759861194; cv=none; b=uKJVeUdMp9z2xbR9Vp06YnFHdry84VrHqe9knBHZWerI/wHUOzJGnRsVQa5cE4nvs6Eyxuoe4x7YKjj8WavP8DVZRjO1OeVKlycb9klhUHyopEmZlZP5g+poKwgvA0tvaltf0TxQwQyYR8Wp2x2K21meV4pXTyFynrlJCEVQKAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759861194; c=relaxed/simple;
	bh=ZKFdCDjZQSuM3iBE+R9FHBys38a2765rJaoh7RT2GrU=;
	h=To:Subject:From:Message-Id:Date; b=i/aqKhOLs6ULKtVNZiWDmCaQRAYxN4Vyh5xYcQOkvWydljrulFrlIbkXgQgqgP1iCdsFYu190GKeJ9E1QwPhpowlIFLLwwKhnIifDmP1SXlWF4iQ/o2/NTAREj51fA+zaVBuRE/cagLc7l5VukYPJxNn3HXM/Rbp1xnGbiO1UDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUQBYvy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUQBYvy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D93C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759861193;
	bh=ZKFdCDjZQSuM3iBE+R9FHBys38a2765rJaoh7RT2GrU=;
	h=To:Subject:From:Date:From;
	b=WUQBYvy1pf5MEa6Y6eU6kOt2GY9VO09cGW5Bjf3bnE80/RfXDerEMEKPTyGJSv6AE
	 x8jUOfPIfcpem7r+FlfslInlnKpiBNjiKRP3i+IKxdR/8tn25WPPVSXNRUJALo1JrP
	 eKmbp5TkcNopE9BecITWJZd+fy7rEHMsbrhgZ4nlmz6HB+rkvUDKU7Ufv6iQBTIUdY
	 X04Wqu7hUyUkhzoyX/nlggZ7Igz0HvCXXMSjb8PNNg4TpZTwp0TThR/C2dsPEMcP/z
	 ZOPZgu31oW1o34D/zerRsgURvfrzkH9N6OqHqUwzEQQt1Gm0wo0La7fF66ShkxGrcf
	 jQKzjngRzOgDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91036CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986119358.3186.16609951169273995270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2228cc6f1d889cc6253cc82f123efec4b98f34f60ded282b29cc5f5e045279a
Date: Tue, 07 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759861193
