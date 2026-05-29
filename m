Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3B30B51D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780092814; cv=none; b=YLgjtA3tsGeRNTvO1rqQqmgG9n59KNybHUoFvkfi9qk/UFQwqECWZVsbiMnhgulf3R7K/qg2IsBHy6dFft1VzCZk1iVlZdCoM+p6DU8LXCSTfyvc90729bYx42AygcmV2MBQi/uCDgbq2f4XaT2dRWHhAR1wTQUk0qeDfHtc0zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780092814; c=relaxed/simple;
	bh=1ug1/My0Fn9IiQFGrhFcp/AAZXqufsUTrGnTD5K58ow=;
	h=To:Subject:From:Message-Id:Date; b=bss3nOKEFSaUFV6MzPMzqH5pHnK6k1mxQ34jiCoRzH8qkmCo7hVtUxn2yWdg6Nb1osIAfZx33385+1pu+LhX5h9NHLjlFFeeAll4DHYsjdCeLI1cdRXP7CEkuqP+2A43dX1kTrMMAwAhRIidg67neLcbkblaVUhS8a+BhmI+PUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwZz3V30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwZz3V30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86B8C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780092813;
	bh=1ug1/My0Fn9IiQFGrhFcp/AAZXqufsUTrGnTD5K58ow=;
	h=To:Subject:From:Date:From;
	b=iwZz3V30HHJ6r21i61M1DJ0u9AngXatAc27/ql8gNnWZUkjr4X/rjb2a4IJ4Va1m6
	 ufBYU/hwyrDrEqCmje6Az+pB6bzBDtanFfzUAZEewflUXjkZ3mtb/q8fz0j2QKusY/
	 WQiZhI+RA2yizHhchkZVWjWKCaz2KggpxlEZTK/apvq0IUFf0EkR485RioyEjbFoTi
	 w4+2TWhZuwhqo+Z0fnS/2qvoWQBWhFh/FSmTdwWsUE2xO/xwy8YnhmLGcNufavMswe
	 iOJwMH0hmz7/MCjZk/2Hj9biQACDobljMjy5cyLRRAxEOl2f+bv1U9eZjhQfTB0E8t
	 RfjZ8m5dC+o4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE62CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009281369.6291.8574832922117534530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e29a4c836b8d9b127f2f6863c7504a34ac44861fea093755528abea77efdbf9
Date: Fri, 29 May 2026 22:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780092813
