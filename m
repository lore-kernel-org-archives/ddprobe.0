Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E961C6889
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743058196; cv=none; b=u7ZJ6RdzQVeWaRT7uivEbIzJ1Hv6YmDF4f9Ecwnjmwxr+PhFbCPT80DoBYAVeAKaqlMyzibPOBSidWd92Dc0anUndUYRG7R+F/vVDZMSA8/q/uXNN12GWYG2BdW1ZymsZJ2OCLPPSLkWOwnmtykfSabYZvdRuN4q6UAaGdrys4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743058196; c=relaxed/simple;
	bh=KIJUcujm6gHkA/Z/GZqoNzMxytcN0KbYlenIZPLGTJs=;
	h=To:Subject:From:Message-Id:Date; b=TOnoTzr2QG3d5mdSgxfzK2+aVrWHKgPy+l0mwiF/XaalhKqmjlutBh7hsuCeVAE8IG821wt8LwROxO+Rd4GrkEUulHf4nTZk5Br9ZVnvifSoQGEfWSFFvqR7kKNjzMusiJerHWzeboMk3HRehtGH3SjVk5L2z3NdLT5dNHOsO8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps9aGh3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps9aGh3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3118C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743058193;
	bh=KIJUcujm6gHkA/Z/GZqoNzMxytcN0KbYlenIZPLGTJs=;
	h=To:Subject:From:Date:From;
	b=ps9aGh3y8i24tiNNfhTn1YmPX9z4alnPcu2jFTwzU2K01XwzroStTNjSIzYNbGJh+
	 6rhNO5zcvPd7JU/EWwVj+o9RoajLxPGgT03d1Xc2ZxrNMHR9STCkXtQaRQDDOyJMWa
	 4nPQJAwxLK5bW2wxAGy6yNMvnz8dfh3WZ81V06ZoQrsU65Qeb18wnwIAbVWjXx+FwZ
	 Qx++hgDm/PtzIsYYK6yvR5LvWh+4sSxKLv8MeGqx1PZqIXuG+sYI0w0rCZyxWPmPRY
	 nQvrbzUs7zlmdH3k+X4u3M/JlO1qmSCInZ8idpyMDi/uI2nAy5veIBUNhqIcWzJKRX
	 Vq4h7dQ7HpZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8E0C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305819362.25993.6690175150361013902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99905cd18927488e6490a3e1b1c2222cb92c970ebaa5c96fb7f36a842245588c
Date: Thu, 27 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743058193
