Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DD5382288
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284694; cv=none; b=fbtjbb12sa9oec0wI61gTMrDKwcCohvcHqMYv7sXRAleTpVMbkcgWgyRxa5QP59lKxHxMzPsiAN41ZGVyv+24F3mLTu328997iZQxdpKfdNHzneC36iZvApnLG34zQhGpPtp/aYZUbesamwyxV49opm1z78pvQAeE4Mmrp4mgNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284694; c=relaxed/simple;
	bh=fX+faB+XLb50ApSQyF7pEe8SLFA8EI4mRWd/RtSqJXw=;
	h=To:Subject:From:Message-Id:Date; b=e38DygCv6OBaNr4gXahWHLhnYoXApSBhmwhMUUdYOmiNhkEwnMmJBuxQgI7wUd2AO0dhlcRQT5F9m+2pcec0QIIRdBmU+dGG9cqHss7oqmozEG5iwzNMkhwzUW7dnCB9rYWZEJQ9XvCbwT7Tj0rCYoa3zV81ekjU3niyuv5fBEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4YIYlZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4YIYlZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD41FC19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773284693;
	bh=fX+faB+XLb50ApSQyF7pEe8SLFA8EI4mRWd/RtSqJXw=;
	h=To:Subject:From:Date:From;
	b=a4YIYlZWo6dOnFKvyh+3w4uZIZXSq68TqoWi6IOQY+65C9lxNlSQfLlVDoZAK9Phs
	 xeZsA+PPf/Eq6n/y7vKMSc7pXqlRZF3sA//qDczNm/q5IpEZa06v/0xPY/7fjpmb90
	 WLB6rKpxOJ5smFb5jVvcRIZ9XOvVCsU6j2ZIbLLtnHChfYzZT5425HPIKWMTsq+toH
	 /WyEHXCEKrrFjYYComMz2sR1CCB/k1ZbfEkCq6wSXvID7zA0CLT0RWxiciWZ9AFnnw
	 uj9ykh7oqg3mStzSdr0kig+v1rAXiIneza7j9BHXjwpCMxDEWrFckpfI57s7SBuJlk
	 DERLNhYm0PVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A81A103E302
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328469359.17209.3017765912366923821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d42a75df95fa68de277c259a2a4ef55fb4f009044a114a6d2585f40332acf5a
Date: Thu, 12 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773284693
