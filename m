Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F6AA945
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771032294; cv=none; b=mQsWrtc9ZtEKZ+tj6kRHJTDEC2LBlaFAg91wVjovBtVo7Spi757+iyj9xbrvvkKf/LZUV5upLJqs5QanijWdsyxFTtqS41HvZ2/r5J3l16lxt+vl+E6kcc66qz/aiJJHptZaGmOsFHuDKL5Ctme4H6uUFjFbGh5vk4uj6OQAvTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771032294; c=relaxed/simple;
	bh=d5KKoLG7TfuV3FB4lJEd1sDQLf+XETjBRq9yLKFvGUg=;
	h=To:Subject:From:Message-Id:Date; b=BSfJDbfye8rvCOuVIZuu9t39mwnF1EZBqhRQLYg3U5Y4XHT9Xl9YbHkEn8bmbXTj52qgY0tg6LfkT7Ma2g7SUIT82GSRVtMR+HWa3LEETSbmtVOFXmp1eKLq8ElV4vhzC8PxjCb1ML+nrFItVTxHCQ+si3yrFK2UU4Zy4nSFFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwv0AmIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwv0AmIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE910C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771032293;
	bh=d5KKoLG7TfuV3FB4lJEd1sDQLf+XETjBRq9yLKFvGUg=;
	h=To:Subject:From:Date:From;
	b=pwv0AmIg9dOBf83wJ4YSzcpbhzib4W3Qw7smYJvPFzxsEn3bdOOHxx3yA9BIDmm9C
	 tKSUjBw707w4qBN8zbByOFspOQKUmSk2sufVhKXO1VbQTJsqSOs8jGLhnUyZG/208U
	 JVxtGrfpp+yx7NGrN9EB+RAYvsDy7gtr4GhPxHEv6cOayhu0vOHlOngfD1bpdG51r3
	 10C2JM7iKfNM4Ycz4ax88LHxD8lMUJOzAVnpZiboTaRh/ujvrB2J0T2XtS/cQKpZfe
	 x9QFSy0Y91mLvrYNdEP7JBTtX91jBK+JjaPQ/XzmutaBLZfECVVsI6at2VieuIDhxs
	 0nMqI/3pfuwrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57D4EF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103229359.10418.8242775371065610129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972e5ba45391f8b64bcae7278a5abc794cc98b7edb3c706f67c7ce6b66dee045
Date: Sat, 14 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771032293
