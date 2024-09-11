Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B48A8460
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726019154; cv=none; b=C+mRknol2NHOZocEGgIYgyxrh8sFy2xar9K57w48pApmxyeEBBxj8Ctq/uWpdnXiVsqZwwK9eyIUl17f9D6BjkazmPl1sXqFJvTdZhwOQ6Ji219MV9fyS5Mh8ILQKZP++YEap3skBXf9zMU43URIrI5KBEcy+D6oAWybhcnx7Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726019154; c=relaxed/simple;
	bh=ccjnu6mdGmigZYoXCSXZPejrliSE5e9WdEo5/054NDA=;
	h=To:Subject:From:Message-Id:Date; b=ptcQ8e8FSHRWZhJPUwS46KV5BIUgVJLQ8E1Txs5xSCu1QVCSh22IMDVq0PD0JMSTJLOd/bWhQzVXM6AYYL4skw3SURS70x5xQfgLqFibKOwPKPv9uWQjbmfGdPc8W79Nmxo5p/gIny0vZKcstYRp1ldomt+NQc4sDQMLCgXxFe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRywoK9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRywoK9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17EAC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726019153;
	bh=ccjnu6mdGmigZYoXCSXZPejrliSE5e9WdEo5/054NDA=;
	h=To:Subject:From:Date:From;
	b=VRywoK9skAIq1wPGsJwg6fU6DNziaIeNRJvRHwjMBOFS1O8vNdIjhNHUm+AYKH5HD
	 Z+nL+Wys9lNHCFGEOlxQ+8MdYp3XIRBVbiMel+vHmhCj3rgxHFH+qOzr+E24KhDpX6
	 eodf/s8aaBPXayT/5vk6QtJkDTVLJmKZ5UXFMacSZHWwPiO/B3oZW3gUYZGJ7u11y0
	 Rxe5D81JpQZ8OyCIE5H3RrVZWbFUwAyql/mWtaHRa8j0EgATXoebu1tOC8OOB/WCUK
	 xiERLgAb70hVYvNV4Xq8NQIhyT3Ve9Khd2gz1921jWcOoE6wsBAyq8UFfHXHrVlNVB
	 T9YWtoTRxL/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F42EE01FB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601915359.26918.18285845663809670706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f446e99c1518647d0d7114619aa93355d13608b052ac56e658d36e6a87ced9f
Date: Wed, 11 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726019153
