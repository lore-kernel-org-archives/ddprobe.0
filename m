Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D870A15575C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743721793; cv=none; b=LSSNqBkPowgLgZuXNgv/0CEpHA5dNcdIOPJJt5fK+4SfBlmPv7SaRwq5mvxal+ydbxZADkZy0HOUAkeLEH/L7cnI+aMEOngLCG1wJypBPCd27HDrcgEg/Cz5NaCWGpkEJ/2lfSXGUOni8clHhK2BZOKXbPs0iQoEiciWonkmwIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743721793; c=relaxed/simple;
	bh=p7RtF9GQGQ9mbIvGsr32ZtR9ij8ozlF7h5DskhQ/Tds=;
	h=To:Subject:From:Message-Id:Date; b=Ei6vo1p0n3Av/FdrDzE3iMsbBnEJK1lJN2BytzKLw0ZrKZYwYyTVJQB2MULAvWIhwummA4OUsWX6DhkJAtExXeYZpfBQab+EDaEJ+12TYHxAj5Q6qS03YegkwcOJrI9YCPhOoN+Bl6uHax4m2c3JQrOQ1j/UW9hfffQDy8rLW0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqwXoQkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqwXoQkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743721793;
	bh=p7RtF9GQGQ9mbIvGsr32ZtR9ij8ozlF7h5DskhQ/Tds=;
	h=To:Subject:From:Date:From;
	b=aqwXoQkIeavNgnRBGEq5Mc1y6nZd2DkgKOuhtodvekHGFajua3FVf5VG9rsNk8Cf0
	 UC8EijSgFw3GYmSbeP+21WoDIg5Y5DP6f92PFajH+PDwWNGX5p901+w41IuSVnMoLi
	 3WAyesGCGONnlCJmc4UP7a7+evr2IAbjJSJtzEzY2WczRXze/iERPMLGqp4WamAwnP
	 a5clNUdh04M2pPGHePZU3tkLjZclgqPovmdK7FzjP9bx3SI3W/iCgHel/F6sjct47J
	 X3CqLdV3NRC1iU4NekdTW66yUi/XRBCFrndgnF9gA2euo+aRHh7Y67w/Cjz9v08GxA
	 EWVtdE7B7/b/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962DFC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372179360.30389.2871878222032203699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afcd8c06615c48607d7ef62aeac068eeea73c04fe6fc1985292706f77fa2e69
Date: Thu, 03 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743721793
