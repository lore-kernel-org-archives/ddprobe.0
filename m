Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074A11805E
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758508794; cv=none; b=YIxwhSvLxemUiaA5Iu8LXy0vdqNA1YMsF5GbQvpEmly5UD4gJUC1PzuZud9sHTyCT8o9DuC7SaCBk/Hl/R6eTCvK4SfP3EJK1jqBOJmkjMQxHLBDnyeZMcxpA2EDCXoIyAxD2p9N4rhDBcLXNCBi4XeKXzBPD38YtgxUX4XMwS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758508794; c=relaxed/simple;
	bh=6r/YCLUH+VqrBCILWP2l+w53MUvIc8t23N0O0mIgO+U=;
	h=To:Subject:From:Message-Id:Date; b=ZAz251ilmcoW7KWXqSdLJfIiR5QUAaV1hBiCvKmFzK8T2n1jg46DNwfheRHcKbulyjRuPQZ+6J/UhX2lmLNqVTkEZxyYytdqSdTjPZFkrnk+vYDgDGK6sVGAE14XetR1H7gAa6k097FDkgGUoQFO3NsMxIhYqbn92V7E3UxGtxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THMjiFnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THMjiFnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C9DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758508793;
	bh=6r/YCLUH+VqrBCILWP2l+w53MUvIc8t23N0O0mIgO+U=;
	h=To:Subject:From:Date:From;
	b=THMjiFnXbtjPp8PaARcv2NJLsuda+KqPpzP65XuD9gl4zBMWMAyplWUNkIsCF3lKE
	 JY2nm1yElys9fRcJdIqIvcjkEedW9CZd6Mt25e7Jz54QVO5mxA6hixqMYmAwiYlxXn
	 HqwBhOHOlexyzKcYxdF9YZjdZhr24YMyZ5YQDe2VbE39XgI2lZG7dlBbCFNRUEYYqq
	 0W1BlrdWUvXT3ZidzSLoTqzoeRhBMRo0Ckb48Z3tsxRavkyAmPnEgy0RHXumRoDv6a
	 o5blJORZttaz/VEi73X7JQlTsMi4OQTDzXmcDeo9qLZ7OoQfjCd4Sxa4G7JquMqXfZ
	 Ufxq6g167xBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9778BCAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850879360.12435.16562088622354009404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b22b87afe62fca7ca55073d6f8e9bb701bd22fad4f8510a0a1013591ec9d51
Date: Mon, 22 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758508793
