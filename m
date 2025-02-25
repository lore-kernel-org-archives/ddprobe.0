Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D83209
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740520134; cv=none; b=gQBNbC5IWRBMOY57aBsxDbSjEXUfdnmSjngo9uInylYWFLVnbP5k+EyIpco8y1PYkfwPFdSPRVVIxp6xM/FhHkE0eGA4kAWj17Mh2VxGJljHXVCbbRykaJwnlBV7UJSaauFzXWumivfxYSFGFGrfSnyCaQhTDyPGAec10jLZr3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740520134; c=relaxed/simple;
	bh=9xra/IIEoJYAkLJO61/IQDbxYHF/tfUml8hE799ynwE=;
	h=To:Subject:From:Message-Id:Date; b=rkFle8DIm+1OjV6wqmTjT+BQfZ34/lNzFWp/gWP4gEIIGVnUHGADN73iM5hSvUogJg6uGHEJTcYI+h1+h3TyWq8zJ32ZLx1AMqPx+7aGxe0gFLv8SIsWG2XnlWo5IhRJ3SxhFUScyxDSEodMK0/AUBGAprniK4S3V6Gcq4k9vns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+BJDAnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+BJDAnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51FDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740520133;
	bh=9xra/IIEoJYAkLJO61/IQDbxYHF/tfUml8hE799ynwE=;
	h=To:Subject:From:Date:From;
	b=I+BJDAnh3erRCzJAm5Xdgp8Qu19lhAzAcXPWogDoLGVUK1xrXsjG/57ydKV74Xrz1
	 eAQpoXWJTzcDzpI+zimZMvX9FFy8Mik9YL7vP6BxIJHPZogKRzu2zdB5wrAbhM7Z9/
	 eWL/vfJQ+sP7B99AVUmEU4NdqQc4oOh2TKRlzKPe03C30RRe/ErO9sSRh7971FEbEw
	 asbQNTfHrvF2exkpL5eb9llzU6TPGP6KA2dhe9/MnouuzZVGbd4w0HURp8CJSpTquK
	 1NravXGfCwIuhNFEi7y5xC7jT07szXVYxKA2TPtrLdQHUiKBqiMHpPw/XcX18tBStX
	 Iz/PShNc8wFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD87C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174052013360.8169.10594189785304814865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b93ce711ea5b738e904b237f506cb32cc4e61aa47a9f2a89e218c0deff3c718
Date: Tue, 25 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740520133
