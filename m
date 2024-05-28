Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E64817E8E6
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716921263; cv=none; b=jquHqczNkfQ14orgGxl1RUimwTlWV30XRDc6qUVSALUjRsVmRvT9hiXiTl1AAzalg5WkhNZYVqbipc02EI281M03nvhc96TmUkWlLlHahqNLxQ2tH1rzXIDqvNhwy8LDvX1e9nx5whCDsA3rvnKP/tKEtPyd0cG4J0V7lca1kf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716921263; c=relaxed/simple;
	bh=VngRd8owLrwHJzqcPgjzilZcAyqDfcOj3H5S1YJGZxY=;
	h=To:Subject:From:Message-Id:Date; b=ocubdKcGP2hUkJV6YpNgIpL6ENTD7bmUkg9d4e1Jz9qVUkMziEwTYWNg9WQi/l17NS0C3nAVxFOr0zg7xuNCzEpwD0Qx3yZuXNNylm/u/lFP3xmvv1yPm4fRWadmm/9Ro9Al4PYY/0YtylA9iyNM4Tj5S7Y+j1DOmvVh4uM708M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oog363pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oog363pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92ADC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716921262;
	bh=VngRd8owLrwHJzqcPgjzilZcAyqDfcOj3H5S1YJGZxY=;
	h=To:Subject:From:Date:From;
	b=oog363pZ4UgeC5zz8aE+1tLe6nvQvxpKygmtFhvYSxvjPM1DHd4Xx5eLLdlYeFBXk
	 6XH492IBkbprrHqbKHRIa7EGQdd47sHSZDndoK9mkvA9XzVMLIoWamjQPf8Fe32JNS
	 RpoO4rniQjOHlEAVhU39kHHqAkuWhIcF2ds+/xKMInMWqACWZpJf0YP7Nmu9c0OFTx
	 YwgSSwEcbRR85ePmgwd4H886+VagxKEF/2tuRIACnrN2qwBgU5pA1Wis2DddwSGnTd
	 v0HFug/Z9c48ThtBewjs/OhFgLkK2OWgfkGTVuQ5ZEi6OoMsZunY/idIWSMW2X+Agw
	 F1KGD/Um+y8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DBFC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692126278.25991.6622433938473972578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f76a73d16af9f364127997f780729bd7c681a557c0e04903e1cf6a15796a60
Date: Tue, 28 May 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716921262
