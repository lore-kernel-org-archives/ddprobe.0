Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5087217C7CD
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717178063; cv=none; b=pndyfGVqhR/FetKLXC5wjzUrETtElPYN8XJWTyFz1zg7rFA7S975O8yGKDVEDxF+dZZbE5OmAUXUlD5k4l7OTGfKtw87UY44iEQP+j/V54R/YuWCTW4i84KNm/cS85buVJFcAwf8s2a86J3U/QjIzAtTmnRqAh0ltP3QqZZgIAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717178063; c=relaxed/simple;
	bh=RoL1d3iOnealSmMJQAz2GlneD9x6juiOhZQb2j2Q92Y=;
	h=To:Subject:From:Message-Id:Date; b=D9ePAoxK/hWjwyUdS638/1kJWy10EYFyQ7F+atJZwYeqaRlQaZgS5K31L6Rg7xFYeMYqZ+D4FrHHnF6WRn9xJU5qS1M8EFAE1msWJaTuXfGBl8k7LDZK8jGLp3YpMIJbGhOWX0LM2eWzSxRes58DqNpiRDNkNNHlqfkZv9Nl+lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meF31bmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meF31bmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59AFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717178062;
	bh=RoL1d3iOnealSmMJQAz2GlneD9x6juiOhZQb2j2Q92Y=;
	h=To:Subject:From:Date:From;
	b=meF31bmY+afdgq0IX+5tyePzM+0r9if8kn5hnu40qpQJsrrxlA3Z/cyUofY3D8RfB
	 9Ppib1RXDGp9cZ544Gkb2Xoq2iaTJUcxDtxUPql1zMneZetoSZEZMUt6MgVYpU2ICJ
	 4T8Yr5YP9lUpZrIQTM3ZhUzYGWPtLQNFhjTduyErNcU8HL+U3So7vmdrXeiFoANJE/
	 WfI3vu6b1ik0XGI4s43bauhJAR2WQG/i5MfP3TfjCfW+B6x/clf2V+LyG1OZGsexMT
	 Eqe0BfoBk1KaHM1CbWHEw6p///zddCNNgaEfQ55tgXB/5TfG16IwkNq8eqgmFIjQDe
	 pGCPHWkBbcUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48BAC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717806279.25349.3829757805448020668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ffd15aec1c03fc93fac057fbf4083561f5edbab043411036155195c2b96305
Date: Fri, 31 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717178062
