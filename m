Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092492C08AD
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756416594; cv=none; b=UP37jAxdIO6VcPJIhvSc8CFLG2GvqYFMGqAbhzR+zKbGjDy8mpXYfJ5cxhY+mHcbrS6JA7FBgrW3G6JpKtfmVSzadZdzo9hJ4Ul3PC0XMQHEV5IGwH53xJ4W66SnShPNJF+M4Q15qejpYZG6FwNa+Mclvczu5k2p3rKCWxjHNG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756416594; c=relaxed/simple;
	bh=qc+nH3obLF8QqAZ5NkJKHqMgA5xZ5EJuhQIcZtxNfwc=;
	h=To:Subject:From:Message-Id:Date; b=q18GL23BrEUgqPk8VDRH0KGjPNEIsnjqqX50z2anvAysFIXH4ePpAdn1KhiLOJ/tkOqtViW6rG3ro8M5wHV0xtPVpMpwodoLC5+au0RswH0nxM0OIyRwUrd+3ht4ZsWZZYEKdQtC9psU01dJLL05OOBQYOmYMCwxALs8i8VspKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmUa2CWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmUa2CWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B67C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756416593;
	bh=qc+nH3obLF8QqAZ5NkJKHqMgA5xZ5EJuhQIcZtxNfwc=;
	h=To:Subject:From:Date:From;
	b=nmUa2CWdI18A5URG7dfdf4x5BxO1vYGw57r4rYQD89SjMpCYRkfDMq1+q8fPXUmC2
	 dXJoxitlADESdgiI+YJzOFU4SWUBwNLi9eDv8gNlnD1zwkqqLC1+HBHU0yMK36D56k
	 MMeP0r2mvmrQc2nJwbfQ/fblQbllJsYJgs86IgkWtOF9Npoy4hmjkReE2cgkfyVcAv
	 m79w0oyO74i7gW5rs7uKQyEqELiy34f8nVRIpSTJ/9h8kea+fiFsmLupiG/gfwrj8w
	 hf0mr2U235yr7wwWIPKVBvzLppSKPLTJrbfFoIUmn92o00Be6sej5nuan8iC9oP9yX
	 VehY+GYz/U5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A5CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641659358.23775.4606515500715578990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967d1c4452212514e1bf999b84f658281eaef42ed7c29a2a7c9ff62182fb133b
Date: Thu, 28 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756416593
