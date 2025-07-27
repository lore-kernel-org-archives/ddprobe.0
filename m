Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8D4199931
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753655394; cv=none; b=potapqQNIilotoz33vUFRDOh6Bj+lFvD236nmCwVdWnyQuuG4WuT/IMOvuNe8PiOkOC2wrM3vCj1kNJF0nRB+RrQmA3LcO4UWK1nnkuT7RCMRich1+XU8BbGm0hAYiwuk+EQ/jxjY4FiQjnnU14Sck9vG55IqBcyVQ7C33BYZl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753655394; c=relaxed/simple;
	bh=J2Pi3znXpMlYqvCf3noam3tbzBswdqGl4+7XRHcVFzE=;
	h=To:Subject:From:Message-Id:Date; b=sQzr19nJdYTeBPN2L55+PjB6LLJJx7cHk2NyvF9obH3kqI2WPxpnqLmPr3BRR4/usWEipeUuiafTKU5Y94ptwszoU3du72WvFpCB+l9lk7ebZnDqMSCoSeMbTmrazDRal0HYciYTfrscM9nNDCHm+xHhSoDTIAYexGSfmCtehfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErJ4XPMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErJ4XPMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753655393;
	bh=J2Pi3znXpMlYqvCf3noam3tbzBswdqGl4+7XRHcVFzE=;
	h=To:Subject:From:Date:From;
	b=ErJ4XPMYpgeZcl4PFChupsdjZ3kmjXols1jjbh/0kAKth88cwTxvoikJ2qC7gaDO0
	 SU+xV8YDs8F61CJMge2VWFEPNsuC3SXK8U1L+uM4Ar9061D78/P8CDcLTxN8fH84OY
	 9al9/wA2XB0ggg9YA76HBwd1HOVrpgYQDnBzi40zWRo5o609molWY0E43IgcT9A8EZ
	 L0sE8QB2BXmbJ7rr/TUug5w8zQMF8UDJxyCnriRGNzXTi/B+2lFmyZBHoaFDlwzvys
	 acog1VGc2OL8t63QxNQavZkBosbMi9MWQKDhwzHnQ9n1kgJZIYqkVqyFJM+QrDFEVx
	 6BbJtYxd9zb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BCC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365539358.20875.15379109830286022314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6fe4327c181b48c2644bda419440ba170613e0336118b1942f3f50c549c1c4
Date: Sun, 27 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753655393
