Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A85930595C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767206034; cv=none; b=EkuC8UP7Jb5+LMQ/03Xeb8Fj2v/l5xGRGAXqcYQKZl6s5DkcdNRFBccETBbZJ4piXjuhSmW7FWCBb0yGGwkIUSJkuS9bwOknrGZV4nk1bUL0YmPDUyawabsvzzXa0W09JKPEb8R93G3LrO+prkdJH9YiF+AqBhWc82IWwJJvN3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767206034; c=relaxed/simple;
	bh=Rzwjq5vs26iO3x0kgCBsidTOHDkyaa9RFD/8l3Af2aM=;
	h=To:Subject:From:Message-Id:Date; b=PiNw62+/tqBf/fzBMXihflQCgDE7EIRP+GPyx+qJiptNxAHgXzabr1Pl64y361Y+ebwDf/vxTmWpEcpnqzq1l8pSR8ZZk7W0sWQgkfPxwCzxpOx8U6FSJmWquuIGGx/EIR95xW6JpT9oOcTR3z6b0K2neG+JTmACeT/HK70z8fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USysUzyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USysUzyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4101C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767206033;
	bh=Rzwjq5vs26iO3x0kgCBsidTOHDkyaa9RFD/8l3Af2aM=;
	h=To:Subject:From:Date:From;
	b=USysUzylPlwwnLwXKaQz9RoqnutSRehLf+9/gxrzT7KRkmSuUrN/IhhIUF3x2/zlG
	 ld1RSuk+8Dn8stb1cKfzTVkOEdTDegwD3fqKKGtnfPSNU3S0N9dZR7/Dpj+Z6YI3w8
	 7X+efgyHRcyuwGSE2Tq7yYNQa4zV2hhZI5u51fTJ4842YwxmQN0PQYTStC8A8SpeLy
	 6YkZU1v7Gz4oy+ydR1W/tUo8Li+A08IGAMcO5nSUMBdevFxRe0wiZTTMXhIAwLMpzg
	 36FsXkP0QvXg73KqGR0zIkuxoafciLwAGjkXv0dH5WXEdWZhlkvCMBLMjqmGihGe9E
	 2Lm0bM8HammyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F47EE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720603357.11302.9341802984725743620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd28187c2987c981f0dc089199d353532806d5adb266fb33cc57aa2b2451bcd
Date: Wed, 31 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767206033
