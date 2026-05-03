Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B79B3630B9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777827454; cv=none; b=VZ9+x6bGS1feJgz0k3k/jX7NnbVjV36Udl2/oAFRIpdIOqs6Jp85Vnl049qJawl2Kg3sYP2UyjNfaFhqhG4PhAH2RcBDMwCAGrg9uHQIGZsHXi2gwF2mHODv/Ohp61UXAUbqy17DEBIXRScEmqU239vJH7uVa65nNIJJn/gv5uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777827454; c=relaxed/simple;
	bh=h2FPta7WOrrfRuwTvYsmYq1G11fXavy7suUMgCn87J8=;
	h=To:Subject:From:Message-Id:Date; b=EM8yhIvCUHwWawfEW4YKgpg0qG9HEVjdaU9WBgj/E7Yd0gKUFI+bmsyDBNJNFDBqppommvdSDSGkLnnD05mQhge0uykQughSa6xdvtBWQc5JCbovo3AY+x/72Y7Ii7/nhI36E5daEXvFawFLI4HM7V4E0hjPRztnPknbD7C3pJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmRbg4Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmRbg4Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CABC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827453;
	bh=h2FPta7WOrrfRuwTvYsmYq1G11fXavy7suUMgCn87J8=;
	h=To:Subject:From:Date:From;
	b=JmRbg4UwWpzS9KvFDUDX4AY4mlce04kekcQVU+JR9XFtppjtbD0GcOB4TKEL7JNze
	 DdJYvbHNMBRUJMQnwDvhNu3IbyKa8b3gxIPXgc3UILEsNQcoHJYS0wjE45JHfIMi8Q
	 MnaEL5qh3DAq5Li+JwYnwl2hHNYIrqywQ1reg8agLfBXiN8NMeSCD8HbCD9LZqwCX5
	 9j3+62Afj/X6MxcwoeOvicbOYlqbVN9icsfluu7cd84uWghf9eQPgl9jcI/qD4kjQg
	 Z/PrqN/tGlpJBcFv5Fg8412EWptnLN2NLmRIWo1bFqLTsTBIgoHuRSZIZ4045l8O51
	 c8SQQZdQq3yew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9044FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782745368.385.15117008684198250016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee4f553145d1e239e20cdb28e8dcf2fc32b516e84979849ae93d7470e4d512f
Date: Sun, 03 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777827453
