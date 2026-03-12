Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB9737C922
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290094; cv=none; b=GlsHHfeq67GYi8LjKkKx21CK+BQgqPIx62JQhYAjhgX5rwjV1EDqeDGNmQN8e5o09wVjv0iF22cKLaIvsgWruJdx0IR15QNb4WWuJnu7r1M06hZ5lP4U/U4FPHuKtnzkdWvwc37E4K8/PcBe9WZxl6Ed2y5JrpS6fCxxBpN4hFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290094; c=relaxed/simple;
	bh=aFh36GMqnyTq/wTXCRCHuqFFpzWkWU26F4Ikr1fqUdo=;
	h=To:Subject:From:Message-Id:Date; b=LH4p53WDof3/DyaebrAvjVCjDXmngZ97ftFlty5DkUNHtIezs1pot0k/a2bSFBGE/+3aZ9iw/UyabEAK/8IQwNy3uQZOVnw4E+gUlz+kEu+3WFpx2N8LYAgnDEOlgFVKLtNMa+7Lpg0Kosh68x2AI5nK9W+46pS3vpqlthAaZ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmt+OZPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmt+OZPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773290093;
	bh=aFh36GMqnyTq/wTXCRCHuqFFpzWkWU26F4Ikr1fqUdo=;
	h=To:Subject:From:Date:From;
	b=lmt+OZPG8ZgM9QKdVc8qIwcZpXrifSJbMZOBupEs6I5qJmasKHHFbViVKTTQ/31mn
	 B/f9VwK8i/5CGPA3WWsVTi0Ek0bK+eiWN+hYCA6M2+Hju5yQV9Ym8LjVKCKb3ZcTB6
	 idHuxzCvnblIMIeQksKjm7D+cltK2guwT8J5NH+1/N+N1WDHeK/fqbhQ8BPRP72XXF
	 oUW8duGsXlFPG+4yV6MQgWt+fNBQtNM/xdnXXEMdxrKWwjazuXFC1UTMfCPrp/OV3A
	 zJFEn1pjEYmyL5R+bNyzmtwkPx04v13wsk39z+EewSE80IUZyXlEJhHHR5a7wz60+N
	 f16J1+y/qAnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C93FED2C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329009358.11120.9427036841766575394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7facd17b8f49df658816e968b8c358a2610e49371904e3372230c2a46b71757
Date: Thu, 12 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773290093
