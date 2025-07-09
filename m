Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066D121FF48
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752050995; cv=none; b=PUskIRj+TMGLUUfuz1T+VNgzekP1kpVcjF3w4o31PU0UuXpXgSk3ForLbztjQRvJNhjbOUzfLSzdVu8LPvp0NDY2cfOv9PLTYE0ip0A4lNJyQaoVViji33xBKmmEssFdp8oUYg6ph6RUh22Ov1U/Eqohse/vSZ6WvAcOwW8u2+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752050995; c=relaxed/simple;
	bh=JhWo1PHKRojs8q8cjjr9U/NrfNw6OtgXhAr+CqtoFF0=;
	h=To:Subject:From:Message-Id:Date; b=ERxI0tINXsFR47HtfhQnrzx+vTffk6ggQTKK60nKU3NwuMd4myjn+EwPlVG83yD5GL796Z6QGAfuQBcS0wrF7W2oy9KJcXc5YA7JTZbRBCC5WDQz8FjAN31riBGbxmhzw8YFZYZk2VWLwlpQc8Ra8L2h27bTW00TVeBiEDdyiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ar6iLYMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ar6iLYMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D053C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752050993;
	bh=JhWo1PHKRojs8q8cjjr9U/NrfNw6OtgXhAr+CqtoFF0=;
	h=To:Subject:From:Date:From;
	b=ar6iLYMGZ7hUUDkeesoLp/bthMuUeQiow9Rv/Gj+3z/in90nNuOCwGgM+awKOrecl
	 OewXnwAixjK5yttqfsLUbb9VJdCU1cS3A3/PhG2x/DnGxA/x4Qe87ZG6WuFRjZmHSk
	 3XEt3INu0zTuBQlwHDdIzOoKA+YHzl7rWy4Zbj3gDF8WAORZnMwTcfV8ZJrmVw97ym
	 MGOG9G1OLuIZEZKX/fL8xh9CsLlkUfIw3DXcYVaLRcmM/TK+DpmZ02d3ITlRTPQ6OY
	 ZFtDhaj7KqQ2HkoLjyyejV7Pl4WKOv71YbU4LdUFsdCnIa3nwKGFcH/qMS/LiInBga
	 ZrvR1+p3ABdPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E349C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205099357.16035.5095177633964596355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b7bb245a52f17ccb07dabc69388b2a0078d33db9b846be9189917a6bd113d7
Date: Wed, 09 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752050993
