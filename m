Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD35182D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751339994; cv=none; b=sppBdH4djxbGBEaGR/GyGjXmlT5j2A3yVcu+PZgo0+VXStMhmUb0aYAyuzXfEkXXuWWvAG+9U+A3nUWSjupywzxPQhHKhTYpiWtdNEcG9KzmVZPIqndQ696NUinZiNDy5u2swucY16tgA0I/SCZj98mI7Sb+foBhL8QVtBsK9I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751339994; c=relaxed/simple;
	bh=5Hy3YKCY+mvJXIPp/KZtAYZiOQd1rkKgV1qq98e3m3U=;
	h=To:Subject:From:Message-Id:Date; b=XxRBE2A1nDFnUIlFjK7bst8iZykPuGQcxYOYVwzegGZV/BnCkVAgyip5pGXYu5U1SG71BydKO+NuZjwK9R0fdrKtrBJHpwuJSiG1zc23jmx0h3HXt+nqtobzNgm/nRH+afOc2MMDb2ECho0mwswdgPBTKc5TOzOqnOeGePgBXe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbdGw5wK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbdGw5wK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751339993;
	bh=5Hy3YKCY+mvJXIPp/KZtAYZiOQd1rkKgV1qq98e3m3U=;
	h=To:Subject:From:Date:From;
	b=hbdGw5wKQFRNTsfduVbFZ6L2mF1/aW/qjPVZf+P6it/Cr8zcFhzLH7/y+zo1Wu9CU
	 xzvaR7Evtx0MUolq3AzKuuQT/1FLj7a2LwyS/i6HSYvePn0ZVOmHhzWwq7F4xeQT2m
	 12OKp8qgR27+aT+Z2EChT1s+3U42EfQ2/7e9oVuxMNnIw/gUcxsRZnFTRePukFkDjB
	 5MceaFILGBlAoCfMDucOciUV8KJpgCYNKenqGWKYmyHt1/MebpZ6ZiLAkN4g8nJiD3
	 CRKbcteLylsPK547C7nyERpMfAE+gcanMo9Ueb4By/0h5QzswQ8iZFePo8wzgkTTOt
	 h2+y9ZiBLuj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E909C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133999357.11650.4704380346424585376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c372cc9df496d480962aebf2349fc87cf85ec2eb8d688a66e983104900ae57
Date: Tue, 01 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751339993
