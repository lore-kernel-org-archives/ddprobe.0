Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA0D2941C
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738977954; cv=none; b=ScyErVxVyYy93TmrN46s+JY18mh3N6HR/d0c2r19g8jeXNwfC7WZtGS9hu2Yo9AEcUaUEvAJTF/uCGdAhdU459mftXeaGjOQtyauaFezLYb7TLCZTRuQdkYwofKJsC13UxWcEM4kBflvuYVphFK1KM3IoXibDvBycmSqmxHBzdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738977954; c=relaxed/simple;
	bh=pT6jmUdnb0VSuKbhZuk825AhA8rLMqtXg123ogDFHhg=;
	h=To:Subject:From:Message-Id:Date; b=gz+w0CCZwGsCdS6au0qj32bpDFh7u19/WbHaGDch8OtqocgLGbYZcHdSSJ+Y7MU60xJnW+vE6y9IRjN2d3APCuKK5ql1+4iWUIVWwY7DPAjcPjpiqjxIE3blkeTQwb6xYpHGhZn+lXEuPn0qY2tXqnnFn4Fh2zFFozEpw3LGv6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lygtuonx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lygtuonx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B951DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738977953;
	bh=pT6jmUdnb0VSuKbhZuk825AhA8rLMqtXg123ogDFHhg=;
	h=To:Subject:From:Date:From;
	b=lygtuonx8WrMB0aPv0zPeH+dq01jSNlyUCdD8IcR3+sG+PaRUxKQXjG1/IkSaeqtj
	 JiqrxIsJb9vFnb1wv1w0tjo9oTerUPfXxKoY1NyxCUKbm1G30DGUCpwbV9SMf2tC0Q
	 M3CWRLjAwEah/8l6K5r7nY0VkM0C8iQYXaZg/EcecmbnyC/qtYjwbFPuKnkxVi1rft
	 hnLbdxRFR3yDdO9Dt8KFo1O9877lZP9fIP4j8nR4MSDPxBdv1Pt5zKFCxb5UZggqQh
	 5AIMqHfjMfAh+oBXJbaK1Mp3VQtNMVKQDyKu1ADrNUlztjDsGV7lo8+mzaf3DJrocV
	 9zYEODvmDDIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DDDC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897795364.32463.15112173277310977207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e46d9c60053027ae2818c131f7d98b91a87ac8a60d6d97a2eeb30e601e1bec0
Date: Sat, 08 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738977953
