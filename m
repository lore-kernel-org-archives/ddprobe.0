Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3C2273D7A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750066194; cv=none; b=kZD5lRkZVASZ7BZ+Yy/TmwHj0wfDnf95EvYW2hDuhycadrSj39uMsrwAYdH8JvyvCLiuc1QWxqD6FnES9VmCC5j/ch1FVSndoau6ZMZCKAgJmd0m1txtSE+sfyCNmsilfyV8XtFzPgTgv+p0EoJV//oJfnEn21+1HBP6P1jOdaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750066194; c=relaxed/simple;
	bh=IaoTMnuapV9iw15lk4Gn9D0vCNwcPMEc+CjeXr95V8E=;
	h=To:Subject:From:Message-Id:Date; b=MTRVvPqKOCjO/dyY1CFyrnY42E5Se3mOYMR3PfQAXSsnBtF+HAyUly9vGrJ5oz813TjWWzqQYycvx5VIb3D2OrERfUa3E+AKhMyBAv0gH3uBkr2oiyUfUtH9k3G3+v2XKd16a4/Szk/kxo8OaWzEvgfamEnqIyE/lP+EUjLAgMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq1NAEg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq1NAEg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64BC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750066193;
	bh=IaoTMnuapV9iw15lk4Gn9D0vCNwcPMEc+CjeXr95V8E=;
	h=To:Subject:From:Date:From;
	b=pq1NAEg9uow4mR8Q3lJc53Jm2XVp8Y58ZXn3ALlY7rbxztjzjBg/+PXEBhLBzOUx4
	 U8Lp0hBudzA0Pqium3aazMw13tJNbZcGaAlfJ7aHy/M9z1H/97k5WKzI8fcs6VMrVt
	 qmGnjVdpZyQAW7V2VOzip9DyoUuCNP0VQXhbQVDdMsgLcBN4Gp0YZdnnimObCxUX/F
	 p+Q/qVv533Aivkxb8jUnUeN9/U5ip9+5h8pCJyZBZn2XKFWtURdbXE52Z1ypzpSWwa
	 1ut00PJBRWnBkT2kF1PyoBPyxqYFko5/hz1iiANyLhd8MuZDVC77BgJuUbmYnorQWz
	 TIIVJmOd7KLjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6EC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006619357.13147.3165225952892625704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4261f625f8d9f22bc1199dc152c824a3cd083167c2015caaeec7e0d6855874
Date: Mon, 16 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750066193
