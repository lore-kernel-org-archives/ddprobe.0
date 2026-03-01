Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C091A9FB0
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772366094; cv=none; b=oexKb551rvNdQKuGtEXcUn8NsqtXNp18XdJQ3h096aZXjKXRi6CXv+Yb2c5MZgRt/VRREfJyjp4jgmfpLyTMjisJiDS3nXYhmIm2k7B/y1RadwOQXbxT9256SZC06JDSnUVcyf46BOByc2gd26aUUVF8uvnCBcT3LJUTY3NfPpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772366094; c=relaxed/simple;
	bh=4N4Uz7dqckzMJ9HtVQ+UKYXXApAQ357wiNAKOu5mqg8=;
	h=To:Subject:From:Message-Id:Date; b=M7rh8X5GgmzF2HtJ2eQCFp1tMksDAyZvqhFcb8NGCtLEiL+Ga3S4rRXifsaxZf94kEhXj3/DuVEtydhIca1aKe91Fxl7Y78jF4XBhfKy81F7w22o6G9B3lGucACjSQrTmrjb+9TLgKj3YKrkqCTuUSctAE1SQ+OJijy+HUjBB7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRkKmkbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRkKmkbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1931C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772366093;
	bh=4N4Uz7dqckzMJ9HtVQ+UKYXXApAQ357wiNAKOu5mqg8=;
	h=To:Subject:From:Date:From;
	b=BRkKmkbMUrzc9ijR20MwfLvQWePOe132NlY1MsxrM72TzzayvZBzIE3KgCUV2519g
	 TG7RAdvPq7D8bTSuRUWJ51a2R6MoqQVUmcD0PFp/e8WVbhPMCg/E8F0y4thpZj8yqm
	 IxKEKZ2+HAW4P/lVB57aOzhqvtQAjcWJS6j/Z8CV73jsaa9pk7oLTkKAd9GkRRAZgo
	 ipOq66JysnqA6woKxf56fefdwR5JDsuqYMpTxIWoGK66H5RT37ro4ReuQzrykr+dU+
	 2v5vateqDaFlK1rEdLzsWPqoDLXbpAv8PDgBaUVziiBDctJkHOmm1Jkwg+Wfc4qAA4
	 fowEmOXpNJ/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC733FD005C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236609366.2929.12470820132517112222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeed69b05f3e98460e96c56f0bf7bc313307cca4f414631d2af5d605cb968a59
Date: Sun, 01 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772366093
