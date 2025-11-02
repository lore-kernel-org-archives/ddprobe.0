Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36525244698
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762063194; cv=none; b=PWll5p3g9yUUZbPS4l0mFFNq1zunAcpuRrgVvCK5ZiZmuyUXlRW3pnk8UO1201Fz8d7xDH7V261FVfKm5z64vaepnxUdrlZxqcNrCLInFyFcZmwRRSgacbTBv6y4k1p5xaYOI3Rsd809+4fOg6oyHPFfGvlpZYbA6ENOwCrKeiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762063194; c=relaxed/simple;
	bh=UG1FewlRLeK409E6tEL5JWtcikGOtekWDHb4pDLWFNk=;
	h=To:Subject:From:Message-Id:Date; b=n9w9PH/dfUqdKZ8uEblaiMa8/6gIjXFT8kYNLh5GL76C0VyLXCslsXt6+6WasVM7RUH7IIJChrl8jW6ppxlvJujhEpeqreZc8iMpbidQoRxAUzJMuWtEay8rppZJICVopQrwNrqZ9YFqAbbzJ41BZJwzhWRLcFVN6hyamuRMz30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwigmCi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwigmCi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762063193;
	bh=UG1FewlRLeK409E6tEL5JWtcikGOtekWDHb4pDLWFNk=;
	h=To:Subject:From:Date:From;
	b=uwigmCi6vhokDhOD394qytVoMMNoCZAjX0floxItHCKFestnwnilkP58M2Sw4bPMz
	 hOZvIJOUjPYbrWW3Y/kgmz65lhYcApifyP60JGa6W5QkAd0Laspt5l+EqG8BeeDQ+L
	 Hyfe5klANrALnxwzSOgUSFYI3ao2Ol0wKhmVkg6kD/bCG7lZvCSbNPwnE5pkny4yvA
	 bp98V8Oxa/RkuaLC7yCsloz4afoN/lav6bhGdyyn9/2/DvcjpxE2phuwmXNZdiCk/n
	 541boO6fM24TBWX7alVH6WtawrlYf6gxV76hSorI5hc8MfYdFQD1rK0fF0xfmjG7J8
	 SAQRdwFpU8/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F64CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206319358.14616.13744951082289071356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5abadefca2c7e710c51b48634d60dac4f5797a33a4e89cedbd57e6aed4cb283
Date: Sun, 02 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762063193
