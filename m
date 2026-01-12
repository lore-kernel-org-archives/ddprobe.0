Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D33CA5A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768179834; cv=none; b=W6V7igQkIP0OWpQRomo1cvIiMFzZpyslYhAAXECbQ/9M+XRdgKnuuZQy9RKKPqg8HrZ2bKpELj+stqRKEvn/EVwk2lUGZtnbQm+OKInv76Jc63KyEX7feX5btk+t79fLpEtw1GabC49oBTq+mTZxh97kSjrxo+65q+pnsr+zuGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768179834; c=relaxed/simple;
	bh=KBHFdEErL3v7vc4SYJPcibREf5FbQ+lIAUE8YtG/eHo=;
	h=To:Subject:From:Message-Id:Date; b=tlG6MUdGe1oGX16tloEiwg89V6KT9a77KZNOQijJjM9kOt/CcH8XFIi91IdI0LKQ4fsN71Omw1cU/rMZdAaXmm6GSB8Z2Y37208vvOZd8605H7LyPn1ONHSh0olMshQHYLjbPUInSeHOb2QnWWIX8JOB0+EqJqHorgEjvCe6N/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/gzANsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/gzANsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24FBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768179833;
	bh=KBHFdEErL3v7vc4SYJPcibREf5FbQ+lIAUE8YtG/eHo=;
	h=To:Subject:From:Date:From;
	b=l/gzANsUjv7P8EsKefDy0+25zsq+41x1UTUHxLG6XxJPIBBX7VRgp18HOPVOmR+GB
	 f6EmeHXcOw6PZ1mvyKyYiM9JdYHuL6G8H0L4v+Ur8CCAA9KGcHje/0FFLy8scPdAm0
	 w4Bhg0uy16V/KdoyOQUajC7UNdXHpczb2N2gZ2GR6LLvJQSTtktbrz34MwEdyNH259
	 Gcee7Bowliti4TksAjHV7+w+npAtiih8RlSZtnC5YbtufFd7yugsu9iB22XFL0Ey82
	 2BU0dxQZR+Q3nvncWv7e2w9TQUpgCoVMPYuFKIHiY/GWDKqMZiHZ8KZmzYe4VE8s9P
	 UIuRmjadKQm8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F0D25031
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817983359.26507.4846492927700531556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc5c969d346f2900545ca1b060d8ebe0f45ff069e86040b760995f0c731b5d9
Date: Mon, 12 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768179833
