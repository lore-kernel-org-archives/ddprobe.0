Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0E1B2180
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737571554; cv=none; b=fWGTOpstUjvyORGkYb94VFcf0tKheRtY1hegN4ss7wQd6sG8twrhFsA3eXVzQKRkeP2JOQU37Sk7KKtKeYm91VGLGIwXoriX7RxjnB4eTFMAnK3Q22a+de0PHdMn1WgWvmuXhKZTMZjX9JJliuO+/vGNNAIC5pbo2a16Dx0olQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737571554; c=relaxed/simple;
	bh=zGbONZQ2+o/0IwJgxmchSPS8fMFlOPNUnn4B/J2uxSg=;
	h=To:Subject:From:Message-Id:Date; b=CKetKfxfC382d9RUhd4ACErZSnSWUOCqymjPXtLpJat+sFrYgbeOE9MESNPBlUWUsQZtFwnNwaftM0vIXcSqqosmNa2ba7asY+1wyqRBBEeQeSO/wNQtTDlS6gwS0dLeIwJd01T6H3MgcJCcBD3f2a2SP0vEG+lyV3Gb1+kbhGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js7+Z5Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js7+Z5Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE6C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737571553;
	bh=zGbONZQ2+o/0IwJgxmchSPS8fMFlOPNUnn4B/J2uxSg=;
	h=To:Subject:From:Date:From;
	b=js7+Z5DjhrEqdoVWhnAyirh0wvKplw40ySAi0pwRq4SLHSDrAGEEDqtON4lkNLRKH
	 CPoxsjKvM2/YLisb8brSTUnlPKBD3Q5kzlHlSfH5RITV/7tP1H/nYi2a/Dx2P8gVpx
	 hZRgtF/ZRDMKphb5Nd7EaTaW71A9qoAJ6/okhyjSBQuOw3AEq6F2BcimE5e1JgVsHh
	 vQ3WHrY/IwgC6GCtFZtaptfdKhw0Sh0x2EsMaFvfn1C4Tmq+eRbO3q7iem4D9zRd0L
	 SzKj8rf3lEkkKFVLdqQ6kBibKN3vujigusIe1K2C9n02FCudcfg7ymoDnHZUBnOi01
	 Y+B07Xcprvl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94492C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757155359.19183.14921685088651224423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df684e4d6b6c0ecd180c1ac9246362183adf651b192e7d67ede14da52fa2c032
Date: Wed, 22 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737571553
