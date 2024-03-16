Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3FD1B969
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710604697; cv=none; b=ByTHquiUhRwsz5q8B4P3zL5PazsjXpQcv4CgiPZA13W0OFBr+WguKO6hp/ZYPaMQYUauSDWsErm7TEjRSYXlUTfiafp2mIgnQ9vzQd4AUr1z67os37QGgF4hFFQ7VlauLlAO7N67x3xGfkXqlOygcUTFHZFRJnMMrHffIaVAJEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710604697; c=relaxed/simple;
	bh=F4CFSqoIzfi2+QYLpP7wQF6qNU8FaCQsRWH3lB+SY70=;
	h=To:Subject:From:Message-Id:Date; b=Q5VF3GJqS3BZiJfYnnLYssenjCf8e3dWSDv/NcJREcBhiSo11QfMEb8kBQ/Mebi6ug5s/dF1ODZSb4Tp3ZLGBWSogoc86End1ZmxbhBO/KWWzqAMJde5sQ5Z4/TxcbbWk7nGEMSra4naFAYK9l64M6CshEIOn9Cvq8ChJ7kYHvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wxdm+PLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wxdm+PLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B37FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710604696;
	bh=F4CFSqoIzfi2+QYLpP7wQF6qNU8FaCQsRWH3lB+SY70=;
	h=To:Subject:From:Date:From;
	b=Wxdm+PLX7471QnIWKG1NEikMvKEQXcmW0ecS05Ohxd6tOZY/hOVQpOrZRZ2nLDrgx
	 C7K88H0Jb1zogFgOCfr/L5U7+87mtQkhAa00VOK34CbLuW3A91Kv0q0rcq7eHyXy0v
	 NyLbfd3bAqW5rX2jr0BlrLnYz05WnvQbe9I3SLA+Eq95iqQb2cRcyLkYsZrPEF0JWh
	 XKkb1a7B3toyt28buB3tAhLEcZoK0Sn1LUtDRuYwxRSeEWGSOQpaESdBRx+x4DgtqF
	 MefrREkr8Ro3hsILDtgQYRnjEkoL5+nK8WrP5dG3rJVGCY/c3k+JV/vwf6ZMGLnuEc
	 0yO35fCLUldsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDB5C54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171060469637.21334.8141125870306800655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5127cc8520eb6d43d7f790aee8e0068f21325e843b42b33cba2e8407f04dfa24
Date: Sat, 16 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710604696
