Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2D42EA73B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761779394; cv=none; b=LW2PQB9pR6qdBck08jyVwsWdPZuMDkJib7bPGnzh6UUMuyqgWHIY43zkJbYonF/WKnXLttHZW9pudS8FnOj7e8O4urml7eofMJS/raMx0Gt42L43u12vfNe8O5B9KRlRNLonxLYDbps55mRtwNNhWGdRwJZeElxk7D6x6AJ4bdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761779394; c=relaxed/simple;
	bh=cyMpjAURBzZYrCskvWhXkX9dRMFXLlazsJBEmF0W1XU=;
	h=To:Subject:From:Message-Id:Date; b=jkf8IToY436kmoApHCF3EhMm2i+e1sFQO1+yxAnNsy0Bg/QF21czMP6QiUk7O+iEgLIf1aNcYPaYQUbYyagNe9MATdmSVU/nuVBnP1ZFHcd9+EbzzOUUaHRQk3DLvkFQyzUg4L5nzghnsQwFh67NnGa9CLZX229cjUJk+UrGUqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9QZ7HK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9QZ7HK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AAEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761779393;
	bh=cyMpjAURBzZYrCskvWhXkX9dRMFXLlazsJBEmF0W1XU=;
	h=To:Subject:From:Date:From;
	b=P9QZ7HK0FHmoXD1xUD8hlgIYzBvuw8EuYqQb6hmEo7fg/SF2OgcBPaNYi9kkAciVi
	 lOeBShkpJNYzLCVBzvvCW2br2gmJNzR+6ZsN7DaJss/XvlOrgNYPka7PGmfzqSkyYu
	 KSIwpOOG7uGRsP3QsoIM/92HWWvoYaELDa63JP8ELTHOcbaOVANJHLLr8VjZTKq/kT
	 BXRma3M5TefQAr71va5x1x6fPqVog07HN5TWM127Q9jgI6Ite5xy6fEm+BPR7YveK9
	 nOIx4tWxjmD5I5MuVkOyGgSiuLvEG1sJM16ZoNaopbEdQ72lq4lv5EtupnU/IWzoJJ
	 cbdsm92mJjaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E3CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177939358.3073.17371405615250987816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7d1efde0904ae5e88deda3737fb77c694b3d26bc83cd1f46c17d8cd1144c4b
Date: Wed, 29 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761779393
