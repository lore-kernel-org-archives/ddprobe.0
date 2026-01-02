Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BFC2E282B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767378234; cv=none; b=JdeIlBNSouHe+KTUOP58kNKU3x4l5P/f69hxVGvb6KEMeHxSM/nKDEom2358/qE2la1/MPdvymaBlLcHg4z2hDvmaJ/5fLkIc7IcYvgUYPDtA5kt3vvmSnsN40hYg2mxkuQwSHNC2A0nGirT8H77/zuaxrwh0KOngxM8CciqUUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767378234; c=relaxed/simple;
	bh=FrgZ3xDUqOAqmFoGh1JoYpzxJCqh9vDLKtCHEUFVhHA=;
	h=To:Subject:From:Message-Id:Date; b=Fv7tMd43z67ywFPMBUm/gFiBaNgVtbMsZxIfp3qZsG70vbFJ2mE5Tka7ATg6qd6H7mcYc8qIRRGZER/rOTVNwlrkpq+ADJRwNQSfD3awRgb3QWyIJMUIZEGvG6qlfog2JJ/I9wWKHger3pRGvwPva1ThWgmMGKlj2DOWIZriUpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYN4kjCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYN4kjCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D943C116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767378233;
	bh=FrgZ3xDUqOAqmFoGh1JoYpzxJCqh9vDLKtCHEUFVhHA=;
	h=To:Subject:From:Date:From;
	b=XYN4kjCAm++vWwZCNXrNNg9BOk56cHtEBkGSgjMug8nswq9QcsjhQZPYG+/GQ+Bh+
	 6u+su9j4w/SLFIp/UAXQ+wOhqye87YW+sNvEMj6vrSWP66xqL5p3rEypBlLJcjf/W4
	 OCT/nHg/5fLfppHL6PhGsXWz3P8dM42fTZgLY1WIp3iO1KzHcM+ZWxIuW1xdLWHpM4
	 YH8elhOAKhF61uSjMZHuUZ10vaHqWh92oTlcZnT1LjSXsytJXvThqu3/k6TSTqkYCX
	 mzY3kIBAHpdhPTdvWGTzOgPyCHl6iP4tDRxy61vs708Vr09+TSgvBnmSf4gwJGy30A
	 B8tH0FPvB9P8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BEFA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737823358.17761.3832425356696160148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8196bbcbada56a197b75e89e50aacfd664150698ee9d5a8047e8de4c37e1bde
Date: Fri, 02 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767378233
