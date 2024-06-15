Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56A1870
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718414303; cv=none; b=Q3OuxEu16vt3e+nvvV7iQiHeyXPu0tt2H6v+sie/SYiCxNLP009zsi01mMH7UNDR0cLUQNiclY8qLvTCMYvas9NtWf8fF3nIJXqrIC/1TfVuqTfjNm5rjVstt80A/7hWwdHPMtAks7cFpipY1+wgt3LTizpxYSucEtUNnsl77TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718414303; c=relaxed/simple;
	bh=FVceRFnxQUcKkHf/tG/hfqLUW3qqG+MyTbrnm/H9AkE=;
	h=To:Subject:From:Message-Id:Date; b=qlZe65tD19nwXoeGVA398WEH1qflTm4jTxsJq5GhMTUiePxuD4lW5h8BnqHNgBEiohwZvLfqNk6zKy0ULqa+LNmIxWhTD9fe1lrJn9aXINeYSGq5z5QwtEfxfm3BoR+VN5nclBSmCLyc7fGiWQYTpI5BLpr6dYT8zlo34FfHCc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCFPjEOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCFPjEOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DA1C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718414303;
	bh=FVceRFnxQUcKkHf/tG/hfqLUW3qqG+MyTbrnm/H9AkE=;
	h=To:Subject:From:Date:From;
	b=PCFPjEOQQw97ZWdIXlV3jFCSTTvyc07VtL88N3whKyXGnO9qxTNk9hR+T1lbtIBHI
	 jHqjx6bWHEXAbOEnU+0Wy0rAGhB8m2ia9MNixRzH+y0xTZXdEQRNeqcDz3wAtFl5Oi
	 pVM1OWMTwDDhNypbEVsSrNYMCm9Y++4mNasGtwImyLKeT5rBGVOV090bBWPYs0vQpg
	 5qFi0ZACqx4xRa8/ITloHBLq/OywiF8DrTykIvZj00s/LvfJGaf/pXjU1kwbeGoFnv
	 8dBr5XZyRJVQooVbFooIfgkR5yNNFsZRxJkuHALbpiu52LDLUr56zgoxq6sg/9nceH
	 ZpdYNUcic9M6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E90C27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 01:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841430283.30655.9201777101446993792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ab5e9e33fb22322130930b3a0d012ffa378fbdf17e76417e042e6485292f27
Date: Sat, 15 Jun 2024 01:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718414302
