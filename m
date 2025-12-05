Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E525EFBE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764977574; cv=none; b=b83WKvH8XnJUOU6NtNbacbBJzacKhBFH6jOAchoZGZz+W/p4rDc8Eeym26sJYEyI5k84YcFBl4OGXxiuCr7gYkgm8KUDk4wEnM4lVomZf53njzPcpke0OmB5Wn5aSzN2aKdQW/CY8OfR2lpiD0awctSXSFfZCxXgWHtBDGc1S50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764977574; c=relaxed/simple;
	bh=+/cop6jnuyHC4GlijE5DFHWEyJWaab3xViPWGTtKuaY=;
	h=To:Subject:From:Message-Id:Date; b=ZsTAXgOGi3Gwg5hx/9pG7MEZ7vvI2fOOiT1FIFfU1hGDD72XctvW4T/38WPjtsMdijWWlablaOGELdbJxYxsiKmTE9vyglKwMgvoumQkRV6hHTGDbjSZOYzYN2yV9TzbgCy1dAScMCWC0GB3U8NcnxMX/fqMxNtBHXk5qqTFh8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBMnyK7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBMnyK7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9729C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764977573;
	bh=+/cop6jnuyHC4GlijE5DFHWEyJWaab3xViPWGTtKuaY=;
	h=To:Subject:From:Date:From;
	b=EBMnyK7tcmFAG1mWiuwBfFYZA/CNgJ5Wu2b3zlKuNDpi5ph8E9wjrWKFyU8yNnoBY
	 nCLSeI329UunpUhVhzfffZdV1ekrbxfFYG1mNQXTkRDoGjtGfbvfCzstpqICCc4l5P
	 UGYbjbk8jhNC1XebcG46Hmtjpxd5APYtXBapkQ0ExQq3Ob85sXCY+8w5H5k9fTvuPj
	 Lef95wX8KkvNE8FKssnDpzBZsloKMVmdfuNr+Gk1VVwvOV4dqD2n+qAzNWEgQ+XRtl
	 ssvj8Yafx39SGo6ekZktM+lrsMH2WwUF/Ru443XjZnq7xX06fLe2IQPlTGjATywHDd
	 q3dxwSQlidmXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966DD33995
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497757361.8767.16066246824105763533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866baf0476a49db5e597d5cdc0425de3b5bbca0c13539e1682ede8c73140d857
Date: Fri, 05 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764977573
