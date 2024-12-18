Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1E19E98D
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521754; cv=none; b=n4up4EykrfLy837nVqla+gIgsj98h1mSX9Q/aBxs+XlBOna5TdX8RcG0/uUV1mjm+ArCZg5eaxPF3oHPpF+oT+NNzqdE5rVoPnvP88+k5GMUv6rbCGIX/FNDa7xA4hHxH3ewMS2v7UqC+OWIKfha2Lt0kSWrrDbgT9pds5LC3OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521754; c=relaxed/simple;
	bh=i2OkDmpBpt5olZhqsK6C3SysNxad9uTLUL3yKFUmaXQ=;
	h=To:Subject:From:Message-Id:Date; b=fdQPLkjenHXdgKmOl4gM6c/cDXgrW658bjSr4tl2x8qhWcckuh2bmS1svilZKBKKcqtBrOS+nwoNJrnnNllRMTLPmY+0CFIdvcfu9pYUVvgf4b42bydYleHSlsvTW2M8pnqVQyThT9LMowTOLNDAxHUk9kZzjvCkpdVKdLSEKPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qumue9Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qumue9Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2522C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734521753;
	bh=i2OkDmpBpt5olZhqsK6C3SysNxad9uTLUL3yKFUmaXQ=;
	h=To:Subject:From:Date:From;
	b=Qumue9UeCjAiP5O87PgCARLgH6M8paKzXCxemoiwnQVGcb0VkBAjrUpAtmKgwiC/a
	 7JwxFEe0wOXhfarIJx4AC5IJblbPaa0YXbrgSRTurtU6UZwHMD4A+AD5H2ZsT9ivWj
	 uWPkfkkmy5qbuV66/OQPrIRckA4nQN67UxslFwIOgs8CSyhSngPiGB5bDOh34yTgmO
	 e+H/dPUnN5brXJnnNNZ7xr9oI94SGGB/keYlQdpWS5soOyHlVxiwe+2K5nF68eg7Wg
	 h0N7vhU6+UYg8tl/Ipa0XMfvqIgEKJQ9TtgwLN7rUtnL3R3A4D0FYWLWPUgRlpyZye
	 L53ACv4CSdYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAB1E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452175363.29766.12793171778155962802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46db24841b5637baf50b47672fead22b1d8be47498b7bf6c5884ce37dbeb685
Date: Wed, 18 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734521753
