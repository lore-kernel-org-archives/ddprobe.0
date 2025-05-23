Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539A9293B68
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748008194; cv=none; b=VZ1opQ+MkBlHH+GjrIuGP6GHwyqnlWgZ8Hvats08GI49Kb1D83dMFZeeXPYrRcDTax6+twP7CEmSrToQ1Wo6u+oW66eyndArvTBAa3wPEEfQgMJuAifN1LaBPBTtPF4JHw2RB2ZXSIaz5SHTA8rPZoKZqJhHn8cZB0AbZ3mRFS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748008194; c=relaxed/simple;
	bh=Xxu/CNZudfNQqiB5hSRpFsQ1b88igmgqZTHFzGyOMRQ=;
	h=To:Subject:From:Message-Id:Date; b=t2kDGkPjGMWW9bfzy6THwDU59oc2QTlKWEavw3BOZOxTXGDyWoof76jCEd1lSdeMdLR5l/viupc/sChoEMTWN+yiB3aDjj3eWhWqFmXzvw2OpiBoJG73ym0aL9gSi062zaAW3E9tLu4h1lMuvdsalFdUaBOR8PymZjwbY0dyqnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDvMNXGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDvMNXGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FABC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748008193;
	bh=Xxu/CNZudfNQqiB5hSRpFsQ1b88igmgqZTHFzGyOMRQ=;
	h=To:Subject:From:Date:From;
	b=PDvMNXGt631ya33mD+xSxhg5oFJttwtB1vc7GBhU8xUi/ovTveGyicRCeEiUODrml
	 1fq1fykeG+Q2J4Sy4QlpmZRUIbmtZj9wdvEDHuyLqO+QS5tVKdQdfxEzQJq7bYNzeN
	 9Eh2kQjNrh2F/PnerYsso7nXvYLP5gFeuDP7PrK8rbdsDbkRnAl6oyuZKRBOy6ZWTu
	 4Cq73KmbGNxab/mqFV+UXaYMyHKnqW77AoRYWW2PdRdarXYAPhUbIYiYKXmV8dxXD3
	 UNCrEOADYQLjAS58G47dIFfxJM9qz0zMJUnlZMhtS8J8YND0Bt0S41kxClPBFMYJpj
	 hede2/PbcoxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C5C54F2E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800819368.30778.18227701348464299244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f598fc8b6608ef939dd4c83dc4aec55c37655a79b311808b153aceb3a7965b33
Date: Fri, 23 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748008193
