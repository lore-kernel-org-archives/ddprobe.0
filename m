Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B393EA83
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738417554; cv=none; b=V9mO2JwzTTHuoj5o9Y8oIFKVAbje6gCGaqeRw9ZKDd6Lsu9VSkRqbA8pkFfDkGO3f774nbI3xaw9U857G+DbSo27ri+V4Zzeghbt5udm5NhWM/xfjEBpQFDCvjYUIOLlcbwVodca8QzZjmNwJta2b4/f3K//sf7nR03VzgYpmCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738417554; c=relaxed/simple;
	bh=RWb/kBm83GXqgf5RwlXzAc0SY+uzXvx2WoPaDGdTtnc=;
	h=To:Subject:From:Message-Id:Date; b=NuxPz6nMdugS2kStMmrx7kHIyBskzGdTfDHF4G+y8pvM1u1cquSffcnN4t0gqJb7KcedDhviJWU6mjjeNDVc7VizZ/QZGss2XgjRBNWlIS8sPWZGzJ/ETWJh4QlGlbyvBD/W7RKUNv6wBpFnN7MeD3KmApz9qxOIynjQcMWwRkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaPww5ZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaPww5ZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1707C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738417553;
	bh=RWb/kBm83GXqgf5RwlXzAc0SY+uzXvx2WoPaDGdTtnc=;
	h=To:Subject:From:Date:From;
	b=QaPww5ZSwf8E38W7Ff0nXsBOk89rUdqeWYMI50QRZPQqLMSUN6+hDZ7VSlGbYbZme
	 Nl+KsBavFk7UEah9NAOLiLAFdnz3Hl6V5FOQoYj/MiTTgHuIYkyer8iUkm+BY5WPIb
	 KdqPCPDBb1CHP4AT1voqVRebw7FK1P8fRYK8yGtrp6dP3904tPAivmmouxrukLriMs
	 z6QaAU68sm8TM0ZI1U13CG7DvwwKQSnZwsejStw64/ScRPN1OkP2rX7LIUm8GBb5fw
	 q/7TG+ibVJc3+Yloj3fgmbWL0EVnIGg+0IEXWMPefvk6aDXpi871VbpD5Mnruf2Psq
	 4Gc02QZlVkBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A17C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841755358.14883.112889986035928934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15c7a48272a5b07fc80c1a17de6183f3f64116293ce8378afb5d54b86eb67ea
Date: Sat, 01 Feb 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738417553
