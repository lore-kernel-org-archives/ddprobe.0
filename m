Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E432938393
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711535297; cv=none; b=ARx8YVtb2aflnVtgHJdbhcAIwtqH6YZRfkozQ7nrVFx7t5xTaWRczU/0aIPGQN/gAQ1d8/X4fJ8htgcCbSDZmoV1Nq+2Bw7klAQcGkBZDEONGzJX7oIFseNwS8GOv1nr+AH0kGD/o42ycHi31h30cDlCW3MBZRoupc0J7WSghFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711535297; c=relaxed/simple;
	bh=Por9OovoR+Ff2tCUHKCJs8hVw8fpS9XFd1WSyXQYwGc=;
	h=To:Subject:From:Message-Id:Date; b=ZJ6UEHE8A2WI/VPIcpDBYzaDsZ6JN2MvJVn9CCFQdvcsuVxm1mXNBDRqlFqEfVxudxxNF0BVshpi8kkgUCBRAJBUvSo0baV1ZUhJuCpCdIu0iAAetUQlsK07/6yf8VwROnjPg1I5g7+y7osXn5tkwx9HansrdTwgAVj0xf1S0ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFiE93kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFiE93kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5A0C43390
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711535296;
	bh=Por9OovoR+Ff2tCUHKCJs8hVw8fpS9XFd1WSyXQYwGc=;
	h=To:Subject:From:Date:From;
	b=qFiE93kCuCTeyDIVmr3knQAb3fCy/U1PP/suT5934YsyhsM+CfTzBOzPRtUZFpPp6
	 zy2mrrBag3e40/XHXR0MrgSC8r8tD71QXZZmbaA+qVswprZ+0ikTTyKd7AcxbMHhE0
	 9MPW9Lc9L0CAYSG6noEXYUwDgkbyuBxybw/oXEvV5ls4sS0hzbsUSw6DhaQQWXKSAU
	 VmWVUXP7Jnni8/aYKaG4BqhzsA4YLTA9RpL5qT7O13L015rMe487T7WD7oC926ADET
	 wo3yjyuOeDQ27ER8oQyjJ3o4uw9aK8LXsQ3Gd3Q91eS65r8ZtOEVFy54dxiPFrFtot
	 78EeVaeKHRdxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660CDC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171153529640.22610.9239103361813774771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63934090859b5a6361d38b73aa96f89502f5017489cb202c1809df6816825821
Date: Wed, 27 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711535296
