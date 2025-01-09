Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210752594BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419554; cv=none; b=IJjlzUzW5UKAkVDtkfjQ/5/Ah5bke4KRJp6VsEq2pdhkraRLjPZsjxgfz/dZ7cgmB8CbOQDFtosASaf50+y6dRKpcwgSl95SDHTvAPRmDlg7VyaEfMmkpayvBjtRkIY7ZmYoZLXClyMfYqMx/TP4lc8R2+eSRT/4hzgRXqONTXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419554; c=relaxed/simple;
	bh=ot/M6fn20XRD894UlcmOTOEmHNTseH88BD5oXjkHQcU=;
	h=To:Subject:From:Message-Id:Date; b=EJ0kvekq4DjMCs4hq+/CwA/cW0WK4W5f28ePStOwUcf73c2WRQh0I6D9yDWwY+d+Mt6X5XKfBNtKUOet3F7QlWA/2AO1M7ZunukiB3E7TO6mm2CM/8zijrGdAp0Nv6Bv+Ogeft2T/k8qfaI112S3QsIhxxGpz0aFTFMYwW7yfjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui9olHhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui9olHhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D08C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736419553;
	bh=ot/M6fn20XRD894UlcmOTOEmHNTseH88BD5oXjkHQcU=;
	h=To:Subject:From:Date:From;
	b=ui9olHhce/YL89B4opQfKUGmJvKIjX7KAFkjbXflccq+m94qctAFYsKNfP3hFkcCA
	 pYhG9+hMPXm+e5eYJ564jJfHsullFfAu6+uAj9HBr/gxvpBfuQRHmc/3Bxax+RXbGw
	 T9VxwOdrLkPICJDUsS7r2f7UiOtsRaK44G1zV8zBdER5nb0CmL5eBMRVeInA2pzgSt
	 z1FqP7oo2AdV9AQKyBXmOFUsSh1Y3Hfw/40DY2ADzXzdwyLG4mwXMl5BnVoaumf6wX
	 1cR2qVRWnAVO4LqHOPebyD48apwemOpyVjJnfoD/YkiX/UaBWDw3U+Ui1QxIJMj9HH
	 REFtKIX07VsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A66E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641955359.26496.17431251158286524277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea986f432912f6ca6fda79413fa34db66271df5600e4cbf6c2ed665214b2eae
Date: Thu, 09 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736419553
