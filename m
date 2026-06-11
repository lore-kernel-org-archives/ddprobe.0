Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4387D31F98D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781214394; cv=none; b=RPkxUbJrNrMkhkm0m03HojrDVL2GO82YHi37QMjAnw+y2FbpPVMLc+gC9xMA4u/vWFQeDhvzkSAk0bovUdz4PVTTQTJZOJLRtD5ZRC8fg5mtFI3Je9PXuBZZA5b1YaboS0OM1HDR2MVSDM6Ud5Z+2tSa7K/kiWYAM9E9rCRB3e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781214394; c=relaxed/simple;
	bh=RCbz/wgK8O+LOoLqPpslJMXOAr/hYnpFOtwwQ8P9jT4=;
	h=To:Subject:From:Message-Id:Date; b=Q8y1/RKyi3Xa7rROTEdtkcuq5tdgGguz1VcmpbeimvOkIBBTalabnri0sZEhTOJG6OkrizHlev9IlvZNMlPDHOnzrWrJOF+9pQ38oWVYWj6HhRc/9nCKQMbOQEwudPTLv4zvCFAZRxJq+AYEqre5q5Hy77sX/dc9uVEpW3OQyPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctsxma2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctsxma2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF3FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781214393;
	bh=RCbz/wgK8O+LOoLqPpslJMXOAr/hYnpFOtwwQ8P9jT4=;
	h=To:Subject:From:Date:From;
	b=ctsxma2wEK+TydIb/QAYz/FITtAyWc04Cpf3pK/ERPSaSl2JYmot8bwTBUMywY1MU
	 v+S1LsnQTphYQiGYEHEGnIPIC6WDsxrcsHkLN4fD8H6XWMzaJOWEhHHnuZ4zXbNxJ4
	 xaPRk0ujNPO4bE3VUSKQkUcH0GJabcz2ltVNG7Y55Gp+c2odVJixLpGYN/lZhFe9ep
	 ONQybcOgHyDR6M49Wne6wq+kVUktBGLRkVoNMsqys/YtExKZtrp8tOnpG2SVWqjIzh
	 L0U+iXUSPjH4G8MyfhwuHKHjcnO/0QjCS262WlXPUaYfyPjAhXRbmQJbgbOT8LJnCn
	 FplDrhnFFTBxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD4CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121439369.27270.9470488212811885966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dddcd66ae132d2fbb379a58c724396a14b89cf7c2287e82f64604864674336
Date: Thu, 11 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781214393
