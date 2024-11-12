Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B34E2139D8
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731408954; cv=none; b=koKYSoaN3oDJEyOs2m1RVKOqnZpMDlrwzlfSAbYcGaBjUyVaIpIA0e42+09HdnXkMlz9chPb59U7gUUnJB3Zl/X9IMIFht7hznWyjnHikXbrHlxSnKpl0Nd5LkBwyyQ8huDHKqAUfLmMvunw1VXw+wUvRUP/FIIK0goOztv4W8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731408954; c=relaxed/simple;
	bh=lANHJoqgforuj0b+bm0fBRoOUwIxuBMhNGmC/6e9iqE=;
	h=To:Subject:From:Message-Id:Date; b=gESebi2ZSeR8Po1x3fkoBjJlQbIhenksQbnZJrAlGId+9nBVgIbgiWMIOqz0T8k8fQVI54QT6cPDxJtJy/4fP6NlpAlQYjD0axDl/ofsEdDk4OyhTARRQXAjQthkUhhnO2FnrUINIIPOLe7zhFcWVAuC+L9N/wU2oXYZv2vmjno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruma+7G+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruma+7G+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A1C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731408953;
	bh=lANHJoqgforuj0b+bm0fBRoOUwIxuBMhNGmC/6e9iqE=;
	h=To:Subject:From:Date:From;
	b=ruma+7G+mJu6O6H95TVRcu9NA42JpG83iDutA75qGKBF0dYxhmiUQd7WbgKkqQK/R
	 9Tr780mZiebLqOJBcsNmEKxDnbP8AnjOYd7wNrGfDrY/byLwg7IcEjTXOwlS85yTJX
	 HU/52L1k+F1zrpeXy4dFzmBiFTBZ3GZvEvsuatJzCy6vbu42SouPE0SNuw70ri+/HQ
	 D53FFY//+7pEiE2GI4Qf6fztna7MH4+X9lf1iqBLLai5U/K11rslwl/R0r9iobbT9k
	 7bGsMJDX4gjTRxJK73ec393pzOqCfpMEgfcT0xl7VGRDQatE9BDkJyfaJ22QaVyowV
	 52oHJ5HzwKQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F60D32D8E
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173140895361.32143.14783595598242556333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124db1837e9c9d13149b7540a41da78da6e71bbc2fd9b9402997bd23c47b1482
Date: Tue, 12 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731408953
