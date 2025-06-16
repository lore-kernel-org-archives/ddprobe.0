Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152E1CA5E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750042194; cv=none; b=ETyb/EJXOte/zaYq0fi/8AHcDxJwIQemnCFQYkbGNU+mSv43cqcPOXkSTu9KmAgRUcOpuKqC+OxTSWll2cP+Do+2vBABRgARSqHXQOVaPwd0hMD57P8L37xvSiiyC8stwW7bpQKDOTnSavCby2QqUUdu5MKCAm+aA2VbMzW6AcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750042194; c=relaxed/simple;
	bh=zxcMiQKUsRvt7Vay66ojkX1fhRLSbt1WPuTUmHh12+Q=;
	h=To:Subject:From:Message-Id:Date; b=XUIHHwEGr6wFvJbXWPTv2MynWi3OJnD3Q3WKEUmrR77K+IBFc842BNy+QP0Iy5i53dAwCL4e6g0mhWVyIeF44X417DiAXserDQQklwnOUJUy5JGbUM4BbEK9p5tfLGz7kMdvQtLSuWyrTCrRAjxVuPUeVYTmdtMoZsBK27ngqyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+jEtQcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+jEtQcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750042193;
	bh=zxcMiQKUsRvt7Vay66ojkX1fhRLSbt1WPuTUmHh12+Q=;
	h=To:Subject:From:Date:From;
	b=u+jEtQcqgNUF/3zHXffWurEgViN/RJkF0ZNxrl6VRg4V1Q8CdH2CtX9RHplGEWvBE
	 p+CRss9PeacpfTcLRGm84wAjezmunJlqR7uv+47+dEvjVq27jO296Icx8f2A0JeIWJ
	 HDTrzGunB/uy6sw+8JQhr5vMCfW8GlUjcMo4Xea0UaKBWNCVUz6u2UWezucMRsK81H
	 ENke7MvWkIMwa2SvzToTbvIqAt9XmlrHG3uWA874wp/YygBrKnV/yrh5lxYHTGxI98
	 rx0/ong+7I2fl5mxTrzA4xiMHfCqFe7WkTfJvaEvzZC6mIClDCpK5PH1HsV0jWxM1G
	 rE9Gl4Ke1HNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280DC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004219359.23597.12009541509833880414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cb3deb88a4330d6327f5df437545449b539349d51689bb9a6306e36ba78aeb
Date: Mon, 16 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750042193
