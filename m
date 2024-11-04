Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340341537C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730685954; cv=none; b=Z25szmPMsUOY/119RRNg0qx1I7obv9ZrOO0V2LfxvdS4+c5Nvg51L3m9LwbJemB4ngbnRlrIuy1DVAh/nUz+s5Z8vO7xFDJMKhLc8Z2D1UQjMIUoRGxzyibdBy2/9CLwqXSyf6tDYdeZRpr3Ohp4soUAiLbKRRlWgaFmpLLSOeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730685954; c=relaxed/simple;
	bh=/tv55OO8a8BAYREOYj0hdvGstwmwkWuPCxlz7XY9UCU=;
	h=To:Subject:From:Message-Id:Date; b=EFyH42tt3Zznw8PkHvxC8UvLxPhEvgojtpVdhZMyzsVIXAHVQBWm/C5GiV2ZlxJFb+2rxNb+Th2ut6tY3nI/76In0Cjx96V1NSpJ4P8y5/esDVGIbS8TLDhPIOQrE5yrNP67xYf4fKqAC+Ezzjig8Bvdq5varUkwdnwmq0IpkOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2W761i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2W761i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA8C4CECD
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730685953;
	bh=/tv55OO8a8BAYREOYj0hdvGstwmwkWuPCxlz7XY9UCU=;
	h=To:Subject:From:Date:From;
	b=j2W761i8WOcJ2Keh/NHZ1jhIgvCLr1Kp5HTE90+hVnLAr1IvNYEms7f/5J1YOwIMK
	 BelXZV4gh2LZ306uPKE642nFrebdd5X/6uMnPO9wQiz6AWTEi1qiFF2odC+JAte+Kr
	 a8D3Tl6Aw5f3d8x1MQDr5/aMU2ZleVw64HgD6eTOwIi+or33dxVPpg9Mk1ba0H/qi4
	 PIrM618Dy+dW+s12m4cb0hI7wmAAG77zNGBcVVXi25p6o0bVpy05wN5Xrh4++lQVNB
	 QnBAkv2s9wANF+MUsGfKG6zK9b690kP9iSS5YOojSyilv7ZJ2E1yY2/2xVlp0xe6uJ
	 cSlbejNdPhj7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FEDD1119A
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068595359.4045.9608370492984673209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f0c4f4a58618cdbf7f684117b56eeda06b7e7a6989b21d891402862babecb6
Date: Mon, 04 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730685953
