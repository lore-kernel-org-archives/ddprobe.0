Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C6C1CA8A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709936297; cv=none; b=dNA7tM8r6lp0D9SGeNuOAAlPY5/2pxg+DrkrB6y/pXIAZyX2lZX4FFSn8cBX+pPavJgkuCoXkZuDD7T7d6qllcvKHOPfyq4JPsd7K37Z8Md+J+isK7gMtUWYR9Z2WlLvzohvdoSFWzpG2McotJBkSz3FIh71oXHECBxSMcxaE4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709936297; c=relaxed/simple;
	bh=I5zmHVuBwsP9eDcoqi9BSgBNp4Mr1JkN/TB/Hk8GjEM=;
	h=To:Subject:From:Message-Id:Date; b=ojJ/tBfqwtYNL4kC88Ip++yu6k1Sr2BjkfMilo/SAvtJj0aGlvgVYR6H46FymA6sXm9Odpxix+L+WD1ukPZjQXTYW189M+4zNYD07CGk9qeHYAx9pWE89wD+HqVRsOSuuV/ukIH3ufS5G4+UWlePQxbL/O7td6MuufE5IpIwV6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dll4Q/Y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dll4Q/Y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE7AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709936296;
	bh=I5zmHVuBwsP9eDcoqi9BSgBNp4Mr1JkN/TB/Hk8GjEM=;
	h=To:Subject:From:Date:From;
	b=Dll4Q/Y66zedHmWlzb+oojHp/COe7Fi4vn3/TUaYfny39075Z5Rc8bwMgS7gvgUou
	 xkcNkOsmcBRVdTfSVHFFGiBmu7VI5oIq7DwwiuesBtAoEYTX6Uy6/98io9OlZ4NLAD
	 9lj8LdZfqF8Te0VltJjim8bVvbjCfPbpA7vdRe3pS2J6wib1fbG0Ce+JKasUws4oR9
	 nJZw2WlxVOjmNVgsgg5p70c5MCpnlO+nM3rX5sm8ErtKcZdW/FqsW7rqsbFmB+cPrV
	 s+BMLFTGXwH+NtwBXInUDffQ+7QOEmwEB65ZIkx0Pfn+nMLg4+OY1RtWBHRtMbOrCn
	 3zhl7qCK8lHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FDAC54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170993629638.29879.9642522705539772294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b56f6e1e5c0d6e44a9d23eaaf105b42d3d4b26f35043a0cd3cae6e0d70cc9ed
Date: Fri, 08 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709936296
