Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1466A2BEFE1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751965194; cv=none; b=nRj6Ea+YdgnbwCOQ1KyTPJrjSVenGZSn0i2xe8a8vPk1EMFpUGUUDrbF1X6bYAcmTwjMrtRi03gmznrWfD33b0jVRVoCj/uAX5wm3MZKVxpSt0/n+cEyxQMs9H9Ny/Or2HSSV4SGZLpWV9ucO8ENOSxUALOO6ahoKI9KdnUCCyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751965194; c=relaxed/simple;
	bh=QmfIvdT4rvagsK/FSKm+X5BE3Kh+fopsBkm5xzG9CWg=;
	h=To:Subject:From:Message-Id:Date; b=eHCXJNo8b4835Pl0uRa/1FsKbpbscPJ9KopWGhAFlW0czS43+kQpKV5GokJktBeEXl65zuXitmPJovm1pNcfP0E+hza2aAOdNreHX/ki2UUok4vUafj1Bk/L9ro35DTqP1ZT/cnPab/L2vsdXjpeUpreNnJX5L85dwjToWUXUic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdb8dkQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdb8dkQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C6AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751965193;
	bh=QmfIvdT4rvagsK/FSKm+X5BE3Kh+fopsBkm5xzG9CWg=;
	h=To:Subject:From:Date:From;
	b=fdb8dkQDoLS6Wu4cIXSYa2oJns/fcCyl6kBoFC93v9dQ6n4EZPyhJjRiFDWwIFQRV
	 ZfqVISgLXuW3tr8JKTUG/44PMVMFWbtaMM8wlS+ToSVAn99xmB5Pf5k5bI9be1tBVk
	 ixN5LguEWAde6Z4GmwFlOPh+zMR8ljndmRoQWi1wgFcQ5jD5fWLnyat51Y+xf3/VRg
	 /X0gkYwcylfkru0hfC9ZHNfa5UyXoganx0uIFYSH9jIU1B7KQJAqfnsUX/YC2JWspx
	 nN+FDloqiJ/om/fVVi9+H6iebsWap/DWVKMgX9dANtm6LlLGLlHCk0LxSG8DuSIlth
	 LKADNzCZbloJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91577C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196519358.27241.13187488305962455717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f4e795e3e869d41ab296591cbe621748984be2f3144b8b280781b7b6a286c0
Date: Tue, 08 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751965193
