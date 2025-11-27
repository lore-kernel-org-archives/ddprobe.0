Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77702AEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764204773; cv=none; b=Wrxm3dLeMg/N1TvbUd2GUrXz/46GA0gzcyloOJHtpjr4OwEzS2zHo1BKGGUOdNaF2IaDaYtQ4jzvguGUflzKEpYX77GBy7sDlv6MrDbPo2qtZIhKWxt7tdr0e8NQdBgOwhLsYyely/5BuPw6ug50uamxeulx1eWoWEtWC3jwbck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764204773; c=relaxed/simple;
	bh=pdGLjVu27/62umfn/qiwhq5SF0X0AHFUitdeOU0jCT4=;
	h=To:Subject:From:Message-Id:Date; b=bU8Htz9VeHE1G0QZ4U9gxUfouTqljQZhqs+MxVDPluB/vLdDKs6ff1BzpJqt6cyqZ9j4ASKOC1Md94cJmGT/o7WUkS49hRkw0C9F5IsTsEPvEYD1cmNpUMzZw2jiwImYEHmaEsyk4me5uiumLy5Om+ftkX+RYsnQgeuxZDO65eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8+rE468; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8+rE468"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA39C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764204773;
	bh=pdGLjVu27/62umfn/qiwhq5SF0X0AHFUitdeOU0jCT4=;
	h=To:Subject:From:Date:From;
	b=D8+rE468iBOaWt3g9oIZGOXWbGrECJiw2oi0TfYCpHFQtXxSMN7uHYFwdfDDUWOg1
	 JyhKZT7DfllmWdVI9tT5N89aPvD95Iut7+NAk4BW28eL6vjvhLnYS33ExHYQ1pKbZD
	 AVzz4RnzPf64MuuOFGRUBIKA0kxjWIJyUkbK3tTwwKr5zlQoKDYg1p9NNBD6Pook3x
	 KU7/Wm9rck80A9S3R3qjQZvkR27P86xrwHFLkuBZHmAcMoiC14V5eZ53pRTV02zv+H
	 ejKsIW1mn0Rl8DUabvMzk1RVERCMAkgkyfRFqDj4/DhFwGfJAMv9wAEL4L+CMmC4Aq
	 tnq1bDSM3AS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B88D116E1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420477359.27708.6215110649473709136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b122beed8f86732908bb77815ba3f1e5e2a00b6fc9c33c72588da3141ecc562e
Date: Thu, 27 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764204773
