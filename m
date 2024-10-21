Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4614A90
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729527354; cv=none; b=YKuSp54DM/TfKAfAO6OJTvsjAUgpyVNJprE6egPZVTXoWO/f5rVQ+gMQnYhMzz8W5C5ieBHnqLfDLaeThxjcA0jdOuZiudNEXBDkDe66AWP3kqDF142UzsAahl5LaLdu8bWwbxc4dNadnLjE/pCs2AfT4iFT49FoJGqdz1f5TFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729527354; c=relaxed/simple;
	bh=fBlYdjEu3w1X/l5xo06gARyyMVDLBTbyUvJVmDcMs9Q=;
	h=To:Subject:From:Message-Id:Date; b=ejfOtzwhxNdn67Xq0RnY7vIImAyrp+0/EF3ya2zTEuPwqX3QxwX4h9Ozk51/YioSOBcWGBSSjeTxCm+b2/kEzcLiPP7vflSLwlSY3eaTOBnp7XNLZ1FHocAlxgsxLs7OiZMRe8xYdTDEYTno9/pbk3Pix7HMg6+zwiJd0l9ag7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQ2G8cvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQ2G8cvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E8C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729527353;
	bh=fBlYdjEu3w1X/l5xo06gARyyMVDLBTbyUvJVmDcMs9Q=;
	h=To:Subject:From:Date:From;
	b=gQ2G8cvmtjvbDr4virIQoiPqWwkyr7903H1LjCka3YGI8cjPV+jrZID2rul0uBjaj
	 a3UY2HMovh3UkjhN0CEK6z5h7Y0u6rJaJ8Mb07GLPZLUUKXaEYS0Ds1UHENAiBgr1c
	 QLsjuz9kiYGsswTFEAXzpqYav9Lt5xCITcb7D41YuUzxf7uxWfHzEVlKz9Ua8NEXHx
	 uZatskDjByLBKaBofplmBPPK0sm4wRCsMg0CYJ7UYsd061bh6t9ZEKgvNaP4w7WiMU
	 ZMEMzWcwY0eXHdrrLeoWxJmApFPRnmEmQzJaS53nzC53LkhAbcb5LeHZkYNS+1QCo6
	 5mg6h64GPsSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9957AD15DB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952735361.16151.16052261845935516956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d607cebc103babba8afff3baeac332591f94a58fdcc7cdf65abc9ebd8e368a5
Date: Mon, 21 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729527353
