Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4264417F4F6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752596994; cv=none; b=kaUxVp8GjEXTcvTYdKAP84E+nPjH2XM1q0mHA1rcy5Xiawhh6YpZG2SAQKer2bvAgQhXrqvo0ZvjhPvWQd57le7Ezd5qupT4BXCJqQzIK4al+kqxhSxXfOJoVAMsQ416I5Fqk48moBKrS1T5Ssfaf5xo7bM4tUuUpy1CqbjQ+OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752596994; c=relaxed/simple;
	bh=umblX6wmrgKv5n7BF/xgdmlV1awjWzjjoHQQixxDasY=;
	h=To:Subject:From:Message-Id:Date; b=ZETv2JB3at+thwPfPDQEQ4zvd97Tjvj2tezQ7XX2Z3W894BuCqhgAxEAK0vxbZNHB7DTY+9pKtRnCy4UXOqWunStBjEt6WcFDaCUH4c3tkkZ0HDtX+15gyemNA+8xvKIJqvF0WMwiCuBKkmSfxTTPPr25ZOM0sAIF0HVKtqMLko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKw2Fxw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKw2Fxw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A512DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752596993;
	bh=umblX6wmrgKv5n7BF/xgdmlV1awjWzjjoHQQixxDasY=;
	h=To:Subject:From:Date:From;
	b=IKw2Fxw/6R3k09yS2rJTnowxEtE3G+ncHH9M2uzMhEwAypfNWH9f9Ua7AkXTIYc3f
	 IKXQrlMcpWLTXXk7mlkGZBKzrFeD87uuBcUkpME7DA8r2q0SH0mZ8PuPCAlQVXKchy
	 TH9jnyHAuyrgW4R7y2/j0iMGFojggg6GmROjD9orB9eVWf85YnVgclziAzugsFie3Z
	 bcgWXWPkRZoRiOspHIdxAhEgtiIWNbLuasXc7XM9ZL2yWgygkzmMmQP9/ydi4RdE/t
	 0QuNSkUxvUSd0Kq6ur2oczYBlMLM0p6TJaK6JV06g0EQKBZiNvoUvNYBnrboDDziWQ
	 /3wPjmrsyTQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91012C83F2D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259699358.25250.15866237513729707743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3ebeb54ccb85ecda68018679ce257f671545d1bcaefcf8283f5dd79cd6d255
Date: Tue, 15 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752596993
