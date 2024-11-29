Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233FF1361
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732839954; cv=none; b=c2nBifylP7V92B/5fsq3loebHmlqFmm6g/Y/isRw3JVJ/OZcp5JBGjE200EwAMxIjFkCY7VuS0ERtntKIww4JUgYfNfUq8UQsAQNt+6zoZlBzYUej/bWgYiC2Q0pjp0he28IiFUbZn8fASgOr+pvv+njFUpkBDAIA45tO3EMAU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732839954; c=relaxed/simple;
	bh=C5MnTcc0lcqQZVGMFjRIyjqTGBce/Ky15oJP1JbzhIc=;
	h=To:Subject:From:Message-Id:Date; b=Ra01UnSMFi8K7h+MSiPmlB3TexoyhxEzQpUM77jVuNNPN3q+v1cQxVOL3EKWZCxW4TFNp6lfedOItPvS1n6NbN8VlFjhi7rqgBY+gnqnj+a54/EWkvQioXlRg7fXieHoJc8YY0MQ31YTrlxVM0Bf0d2a8Cy9iw1cBHwS6g6nVOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/V0P+vB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/V0P+vB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEDC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732839953;
	bh=C5MnTcc0lcqQZVGMFjRIyjqTGBce/Ky15oJP1JbzhIc=;
	h=To:Subject:From:Date:From;
	b=d/V0P+vBSmUZF1jmttHLHZGTcmDGPTDW4ZbW3wPT64/PkcVPusaAUXqQWqYFPNCW1
	 WFsQMGpVu3gecUabCV629OnTdtZKE79OifxDsmfxs7AbzL15uhGwnoVD0vBRZWp2bM
	 Xx5wdcfuaIUXF/Gye0PZRBndV7SpK4+5sa0nluIAyG0FjVRgqVD39IMuepCXDobJ+5
	 z/VNayvt9tOz71NjXpiKL2dOg6i0NSUuWpqhCJ1VVCySAHP67Uzfs1gJJbt0mT6Ken
	 TXmBYIKHjh9qotzHd1RfdGP9KV/eDLrDUYiyxNcUrtslX+oehegGOnTlpR56GZatC1
	 fOijT6P5NQupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D28D70DFA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283995358.14191.11983032626324883453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43445201b26ff7889dd0a7b37e7616b3a967527aa716a69c6f1bd1d9f28ba1de
Date: Fri, 29 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732839953
