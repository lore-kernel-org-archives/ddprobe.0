Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3133B155757
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766694234; cv=none; b=R8xHpp3zxv9rqZYib0VQsXv2HvJ32HRMRYiGIngQ/vE1LvKxOlesA4hxJQv4es7V8dqVSa+ixikJwvB7NrGVlIr/piwFFL3lkWDDxLtydI+zBLb1t2zWfN6s/RUYuBDFHDH/m+g1S07k6rKjyjccLtIq/i8Udd7iRCG5Xh5jeXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766694234; c=relaxed/simple;
	bh=OtfxaNR/WA18bjp+FJh70iXjn/uEwPfYhplKh4iG4nc=;
	h=To:Subject:From:Message-Id:Date; b=cnYXDpXm+pHx6iiJthPAEsnaU0EaiDf3jBxe8huWuyu48eRxA3CFRPAgHGg9oqtZ4Z09ZNV1+lg88VZXcNrj7rdO3HNXqEaWxWXgxIy1FhrhKOnzp/upVciqiFhwfuQ0g6u4kOH8xYnO46cwZ0RpyasGuMweaF0qafQe6kCV/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpf0V/+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpf0V/+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF53C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766694233;
	bh=OtfxaNR/WA18bjp+FJh70iXjn/uEwPfYhplKh4iG4nc=;
	h=To:Subject:From:Date:From;
	b=cpf0V/+tsZmYVLo+Vxb+rwk44fMNkfHfxCUcsZXk7P1dypJva6iDsn+iHS+l1u5Wr
	 wRzN7G4/rP9N9yuJANCHzRS7LGnlfNLmZ/7jcRKOLm7xmsbTjXNas0OPE6VAsWWdEb
	 7SHhZgzDqmIdYP1YPNud4N24smzIDnXhc7gXkW//8oqsutCr2LhrN0hW7i/h59W/qh
	 gSkAEcwnIugeeImFmCVlBg5iy7EvZl3Jqz032boSF1Yqp+Fjs9Q5zWaCwS2iJ88tNN
	 TnQuGfF7Pt/LlpUA4tM18QhPs44Y7VCFL3407fScT3p0oinvva9uebgbQDBZatLfS1
	 1gHupQxAYmF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96549E7AD6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669423359.13690.6492021996178126506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e7b117485ddea741974a5236914ee5df2e55d449009ee8f6cde17aba706ce6
Date: Thu, 25 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766694233
