Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C633DEADC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780999474; cv=none; b=kVyk8LsRckSWIOdZfAk0LCeJ6RAXrGzHtREBdTsh6kqjuI0znJhYJMzRMUN4dPq2YoOKaUYljCeTO8De9ES6RrdJzPJIHH/X+eU3wzb7lP/7EL5T0TioKBuxzpJy5AaCN+BlUXgAqbwPJqx6CDuoWAiucrRm3c1kUY4z3hoj6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780999474; c=relaxed/simple;
	bh=V4MH6u6OO4IOyMxq/QICNm5BqwY7B4POz/5acbFyLF8=;
	h=To:Subject:From:Message-Id:Date; b=nS73p4DvjXb0Yaj50l233Z7LX63vQ1BXbSaxPdc31RDM+VPuc91tf57r0TwOmSX/eTr/gG+rhXKMQa3B2cNGHiAeS4nxqIWomeFiLcLpo6Kg/eNrGJBptoJt82T/twGWAmqZMzmWGK1w9jgXTp+I8S2zdmoHQBaHbHR9PXGy1as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho/c8ORx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho/c8ORx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE34FC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780999473;
	bh=V4MH6u6OO4IOyMxq/QICNm5BqwY7B4POz/5acbFyLF8=;
	h=To:Subject:From:Date:From;
	b=Ho/c8ORxGWpa3mWo4tiGlqxVqx8YyY5+KWEWcbjGZ97ucDnvToWC72ocUM+zo9YpO
	 IHWdvxEuB5kOWSDL5lyFhVX30uHOEiU1U+OUJUHu5rQLiR3ddf6PyYEdxice0m9MDW
	 L4p8mQsGOq26u4LGiFk+eQYNA8tgvDASBWvRJdkvIRkl+juF7L5ks/ivLCQoP2DPIM
	 yVmq8pRF6x37p/xLyEohkV5auovZA2g8Kk15NhMemhOSfvFlMI5JzHZPboi7KT0q8k
	 HUsSWi47F0edB0csMyZ+7PPNHATeuUIi6lFUzhJKdxo65OQYLMfAhnfV9yB++KlkR1
	 ilck1XYQmYQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2628CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099947371.5584.6489588848328085834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1e7c88c4afbda4d3e708b6d3a18383d3b5066bc49af07cc76bc9591ee9dc2f
Date: Tue, 09 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780999473
