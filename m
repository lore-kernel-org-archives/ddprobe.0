Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105864A32
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756546795; cv=none; b=fZdlgInAOAkmFJ9Lwy5iiDx0W8h9XpfXVRefNCI4z/EmyQggPD86Wm+5yA3JIXCd23I1BI4ilPFMzSfBzwL19LF1pCUtjqsSmQFh7zDPisNUe4uB5m98ANOXcQLXjSc5SUkowdVEHKQgoP6ojk6bkdpiCggocvvk3a8N/ahi5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756546795; c=relaxed/simple;
	bh=WOueychkD4a79xaYnQc9XOOVv3Fi+yOcnOtlLW0D/bU=;
	h=To:Subject:From:Message-Id:Date; b=J5FdmpDAtnekNEVUvdUhmAoNZFLN48TDYZneiXvgYWJkf+rBKl0LH8H7WNK3zWig5G4TNnRnhVCaM5IIeF98zY2gbeTYnJFJAD+lPpxfvQDmLemb/GlQjtakxQSenn2h0wZBksbcZNeEcOWpxJxr8nYrUbm+iKQgJ9RfbeLMSx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+e4dcqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+e4dcqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756546793;
	bh=WOueychkD4a79xaYnQc9XOOVv3Fi+yOcnOtlLW0D/bU=;
	h=To:Subject:From:Date:From;
	b=s+e4dcqIhEUg6mFnTWSSGE3jUJKi81UmUXEUV6rm+bTUaUAPcP0IFfP1ryEXsLGKr
	 tMpsHAxtub60h2et6wgpv6UsQrKZrkbIVoHoIfvfFBBeNO9q4JAXYJ1QMBF21kJ1S9
	 ojkSUyZ10V65CDPzzeCi1vecqUbW+KDkh86gLzarwylroqJ2w3ASSryhEpo+fKDqB5
	 0vbGk//no0alyUCNb+9FrEU6l8mZGvvki4LVS/N+lm5gbP8Y98NbLY2jvIMND+DdKk
	 wRi4p/XoIGw5YONwo3cpluwGMtMJVU2mthtdOCzVi+aAEvq6sa8USqG/kw1lJ/bmnu
	 7Hhoz8AiccxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F15CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654679357.25116.17222575525785062904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b85ee295dd3172c0dec599896c001cbcc5a73dbd5addd197ba4ea020140301
Date: Sat, 30 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756546793
