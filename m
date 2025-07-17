Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD69225791
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784193; cv=none; b=SkR8b/K/03qims8wTUlQW+xnbaoBsCOJV6qL/V5a6kf8wCZQemLsu8zJ//W5R26xCJV/lU1EJ3JkhLGCriBYiLb37UwoGELeHhoUuYNt5W1I8JHbi03NKDzi2QUVFjK6RZCo0x4nz0gyKxdUVdBcCSngQBMXDuk4LbdQhRRQ190=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784193; c=relaxed/simple;
	bh=XVHb4nm32QRe7RsrdZsrsBOJIkQAm6DSqQvL+Yf0zGQ=;
	h=To:Subject:From:Message-Id:Date; b=ikfszQC6xCGt0oI27tJ62Xu42cJ+pmyiSOHn9lEaqk+EBvX8gaiAAtQddJAAQmSVQMHu1OiJK9hOMzUdeGwvq311Dbw4tk8GJa4CxRU6oUxhrITfmHupYTWiuq+HmdqrrrM9ZeuAKNOiVTf8nRVc013y6zdv+iYArUdUo9rMoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd2tG4P9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd2tG4P9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1232C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752784193;
	bh=XVHb4nm32QRe7RsrdZsrsBOJIkQAm6DSqQvL+Yf0zGQ=;
	h=To:Subject:From:Date:From;
	b=bd2tG4P9KppLjmmwNXfpolHH/65ndHcGwmkJMYVJGlitTgciTtBCHX4usAzDuu3nE
	 l37zLgb8VVhdFRbFM3PVscxq5TpJoplOYHbWiWk2vko5UWYcCQAHOjd/UkLHnDbazA
	 qvi/WvpFkllpRhsfvwZsknj0WujhUvB+fU4yubqv4WRquq0+Mmp719LTgUyBhMqqhd
	 tpL3EW7aa4ZEZBqyvBDDLaC+W+lEZFPlvXELFrm1xQk1QAj7VbIuCetos2teOcN4Ga
	 x/1Y0o29UBmM7Oe9otk7eSP32SobX7X/dwypKbbe6Ld0fFsrXOzyHDzUaj1cc+T7fr
	 dfz6JSM8ti0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122AC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278419358.20065.1911508092671024826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5c85e12210a6ee2fc5810881188801e5cf42ba1622aa33591a5dffed5382b1
Date: Thu, 17 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752784193
