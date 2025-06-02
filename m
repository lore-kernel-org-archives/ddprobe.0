Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D849478
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748890794; cv=none; b=cUHaMiRIkO5hw9exqcYtUodrAIUl7TDp+ScOfcVovqe44mNCb6KakzG25iLvU9KtnqHg1FryRg4mi2AwCkR5ZLpf/y3foRpDdpWvff9lZD65tDGddwoNjGksnrVw/+HSTw/AMmxxhyZjm+Bn5KjhnSLarJ7X+twM8gsigcD1o84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748890794; c=relaxed/simple;
	bh=7JyVyQ+eFCl3QdkiWv6CgG1F2YcTdXnBQdc6pQR7C4w=;
	h=To:Subject:From:Message-Id:Date; b=lI9gQy5pCwEgWsjnYpCeSsKSbWwrpaqhuPxLHEMnfjPOsxzVzRDBxC0kYp103DT39L9/mgu8wR4ww833Msq5wdyjUTMaFYCT3xL8Hj/SbQXTeF1CvFTqmynnk68mAQ/oAi3kK0oct0lpo63IVxtUzOSt54StRjXSlsw40WNzfNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=We9ZtGSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="We9ZtGSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D96C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748890793;
	bh=7JyVyQ+eFCl3QdkiWv6CgG1F2YcTdXnBQdc6pQR7C4w=;
	h=To:Subject:From:Date:From;
	b=We9ZtGSHKPKaQHuc3LoiAiyAGIuMMkhJiAXzQDLIXyoUyD4FQ59rsEEN9VrQzRZ15
	 ZFL30mB9pNup4/xCjV4uQr28fu/qWJIb2jkqKZ1bCWWI1TR83+hJJOTOL81Rd+HAuw
	 r9AVzV6vwDMKI0NKUUaxDgHDofsDRwItc8AQ6F5f3zGVBTEYObxdvsHE61jVxdaYEN
	 e6SwTMMt1IeGfLiOpMHJjYHWvHgQLlcImkzVNtYdK1icMJSDSINTAltB6f7QoJTWWx
	 SA3HFQgHZAuy84clgNzBezghgM6VjimSgWz9B2fZgnEOmhh1Vqtz5Avza5OGuwVyzK
	 Kkzyih8eFKT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B04C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889079357.24445.4738387459364761727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693e76fab585639c89364b76a9bfd6f9c530a2a40354475c5b25a2962936f60b
Date: Mon, 02 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748890793
