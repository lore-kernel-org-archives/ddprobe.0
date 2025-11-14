Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB16186284
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763129994; cv=none; b=VAjyX5NX4wLFZFPx4GxQX1yX0HpcTY8krYWDvfSkLgWOQqjjIDM/WYzxg8h3kppQrKxGn6zBP8RqqUU+7A4CnMSrXSp1w8jOvtcYtYRywRBZPpNrQTRXPDtyQXRPm1v1VMO6ayGWDSidOEexDgPORaN664vOnTeia6f/OxJI/C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763129994; c=relaxed/simple;
	bh=1wOVQ+cfA38BuP1/qQTRbm+19TVlwgE535h+x/kIYT0=;
	h=To:Subject:From:Message-Id:Date; b=ixyjJrZnQ1ouMpqIF6SA9VsPdoBOU8YEVz7A7rEotLEAF47Dk9Ch1o/dWJKirWk3vW352rTu+ZLj8ZJwcqqGp5Vyd3KlifbZl+3KHqaNsBaMNmrGLWLAb00xM4FT480K2xhmXafW9EthD0mo8GHd/xB9nnC5Qu1pfVwPaAITEpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWMpNooD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWMpNooD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB23C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763129993;
	bh=1wOVQ+cfA38BuP1/qQTRbm+19TVlwgE535h+x/kIYT0=;
	h=To:Subject:From:Date:From;
	b=QWMpNooDzH98uzGGw77ddIXppiH7wb2+81ptXHURW331Q9INRPMJInMEucgWFW3ui
	 pEW+ZTBZL3SColHrM+iJcQsHACh6RKXrcG3V/u5b+4PjajqGg0aURVg0Hgmojsf1UU
	 avco9spJOohX9UB2wsMK4iKx1G3PQOcH/bjU4RuYtKuM9y6oG/qFD2XPxK6uh0Im0S
	 tUKbe/lneMV85VK7K6ef84ZDAhAWrVHBkc3XtF8SBVJqnpI17akgJseQlrmotIw/Uk
	 xyPYpAiYdv19NCke8YS9DwmicY962ctP7gJBWn0SDU5HoQa/TcmU+6YA+ehMEdaDcs
	 i6Ipz2U3GxieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BDCCE7B13
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312999359.12088.6851387754011328771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb5076d75b4005dd4dbd0fd5111bf9a885022e156e1098cb65098164ef23a7d
Date: Fri, 14 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763129993
