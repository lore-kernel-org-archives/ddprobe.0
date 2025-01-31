Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A61F470A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738359354; cv=none; b=OtOL79NG4hFC5vO5s56ldqflX+lb+NoUc1QKqsVjn1+MVwjDxNvN72CaTKyZRHkFocWTNm+h0bsEvTHP5MG88NIudPKMWIIW9IjMEmO3erO+ad4bSouKK+7Cq8QqAivliwB32jppHZD1ITLQjUAnIhIwAC1Hy6QPnY/FCPAaHmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738359354; c=relaxed/simple;
	bh=MCXU5/MY/r+zv4o0SUr4wkyaC+cpz22AayoabJqk4uk=;
	h=To:Subject:From:Message-Id:Date; b=mBkwRaLQGpRV7zIK3YujCUzf2Ag7GbzYNIU31VrN7Ky53LalJX3rqTknmnxMLwgkdKDsD4Bhi2GxrO+NapCMcYiRhnZbjSUGIraI1CTLr2P4eOnhtxK9mWA0dLg1XkF4mw03RGfwIXnnfp2UG5XjmiTVWHRaAxoU0oUjX22uWSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcPj68hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcPj68hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0ECC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738359353;
	bh=MCXU5/MY/r+zv4o0SUr4wkyaC+cpz22AayoabJqk4uk=;
	h=To:Subject:From:Date:From;
	b=lcPj68hbNaxp8DKF67ej9L5XJTa/3NtRevZw//aA7LTVZ0M7mg8hs4UCzVV4AXs6R
	 Zmar7vyQprcu3Brmg7YFXczgrSAKltb/aHAfWKm5RefSmdG7kpqkbEeOQBeiTNwQjI
	 qWrn0WNbGo3/ng0yrzT8iDtlPFgeBkQH4oX4sALI7Q+B17Rj60NOMHWfXu7scnp1CL
	 DN/d8YxokLgsYkijBNaro884vAh1NnrQ2KnA5lIIDUblypT7xXMhAXcdpWJZiifai1
	 mKRzAQRPp0mboxzKlHcNnLflifie3ADaS0dbdWKsIJzORUfmROVeJL15/mH39xDOq4
	 AwDM2vkWLGn0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE6C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835935358.31399.12224384480230979742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe02e6769e574ba36ce0811fe0f150b0236b29fb523421560d4616f5f4437a68
Date: Fri, 31 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738359353
