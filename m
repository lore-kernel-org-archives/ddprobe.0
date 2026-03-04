Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26606EEB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772594094; cv=none; b=X5VHmB4WY/b+yXYRGFydK18r4QZLtUTvxdZZE0Q6q7DzXQmMyl+Kkjif22qYrDyRD1yJpV65/TF+BH+fwAiZbceJmVzqFypon+mISTBRIDSDFN4Vv28UDCztl3PME8TxytDWkWxXiywf0ya6kC2nlOnmOxp1JoKsjG18VDT6RmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772594094; c=relaxed/simple;
	bh=u9p1Ie9yn49Bxo0DRS4ichVhuPEHO5Be7tmzXSbBsdE=;
	h=To:Subject:From:Message-Id:Date; b=cQWOWE6nUlxhbTPke7Stdk1DKI/pOubDGfQhRioiOrL60sc0ZAKFl3rTdwu5nZC2eKIZcNGeWcQ+u7V0KgSqGvEj5jUdGsH5slpFgFRhA5gvF8D+bwOlwH7FBWxaKD+shY6SLqCh3/ypNkSiT76tY58bb1hKpeBAxmG7BSrDmDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5ze70TF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5ze70TF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45E7C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772594093;
	bh=u9p1Ie9yn49Bxo0DRS4ichVhuPEHO5Be7tmzXSbBsdE=;
	h=To:Subject:From:Date:From;
	b=T5ze70TFZQnnqg/eclJAPxdCXtldWWjejN8s0JTv5itmS8mnA62xK+cwY43PZUdIM
	 x2leVGcoQcJPAh1CXH3zNoETfgN3LbO/Rz7gcL4r5xw/qryl6Ce3062YkjILu5O3hV
	 kDJiWkUWVDy4uqVqiQ/3jTWoGLQ1BHr1bc2oXrzopoBfYzu+h2ZHxDBiIupXmKOCk4
	 5TbV67dBsNsikwKH6JyrLR4VZnOEtx34uRDeYZS+kYrRpVWbsba3/0jCGjXGhVPPcb
	 TWkOHBgYLG2kaBj0W9N9PzTafEvFI5bNF+uGu41DMnOrzgnvXl3qhFTZU4R408aQrU
	 rwYpck2orZTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BE6EDEC02
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259409361.9608.5808249967027077545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97baeb05930b5d0f8e8fad1f338cc5d6b268ca5e24a0789b8a9650087f630428
Date: Wed, 04 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772594093
