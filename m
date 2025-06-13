Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7512F4333
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749790194; cv=none; b=ZyEtn84rSTxcR5LDrrEiVyykz9bKt7PiSfGa5I7a3xQ/Pz3WBLKvr5xWLhn7YvkZzqgED2lFLJTZgtvipOAG2gsCmMsVT7z5qbLC8A8Kh8ipmi8YjkNcGIlExXbt66Fj9BdDptkga74cF0uEF4FTArOZHb6AjdP2AmXj0pvnFK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749790194; c=relaxed/simple;
	bh=U/42+cY5/gX8WUCce+SOXqbMHyPZhU9/TmPn76fr9v0=;
	h=To:Subject:From:Message-Id:Date; b=RXVmx8yFAGJBINCH3R09TL1Oo7awA7vvZ9b73lpSkCnHmJEUpdPFiQEg1BzZNu6LSkKHYw5EHQ2jyOxsOZeciELCeO0tXfRzDkzh+Xr1RvW9eQgSARLlHCqyklsQ5jvAfrLpdLWjtS9/xhumjNikyPgDUKUeHZPh+j2eSS+P+TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krszK6Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krszK6Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749790193;
	bh=U/42+cY5/gX8WUCce+SOXqbMHyPZhU9/TmPn76fr9v0=;
	h=To:Subject:From:Date:From;
	b=krszK6XgEuXwkpYttx3rPPnRJ28eq1K2TvCa0BHouRH3VOuwurGjZEGiaQolgv9Fc
	 OSf+YhuCxvXvmK1qkNZ5MXMbp2VCzUY+K8RQCCGxoBZc/MtGAEK2/LBwAViBr1vI0w
	 pcE7xcGdfmpfPLqdJ/QA1yaJD/Z5P7MvaFfWWJ+yMw2QJQRNao1/vnzIFRJDyEOCEG
	 bRwgn+mnUEviPIu9ZPwHL+85YzTFse5bk/Bk4Yh5KZdSl4AhPo5HMYJFhsNwbaJvKH
	 7jknTn47wgNIrBv7vFxI0twD3Waksqz65yIPh/o+ZIUXzUuNQwiM7j57kRKxdhjIoc
	 UAyL9PCAsPLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C9C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979019358.32469.14761013484768552026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16d38f98d631a15c2908926ab669d19b9e9b3d6ea9fd20e47d678f10399f7b9
Date: Fri, 13 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749790193
