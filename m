Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F87F46BA6
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713858023; cv=none; b=O+IfqEFjCU/NCFoFIV/vnSv4A5c4iXiQ5C1Kf4qfpTzq/BBsBLTNncfV6F2FwjVrtVza629Ob7A1J649tFwGODu9W1cZz0WJi49u7c98Sps2UTAZMUvpmfIgYQKGRbKb4ihSgLETlkmxTX3z6DZ+fh6So0Le4zNEY9I32obbeWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713858023; c=relaxed/simple;
	bh=L/X/2WDm6TA1onP+CGpvULsMUCixnBiz//QoYbVGY5g=;
	h=To:Subject:From:Message-Id:Date; b=ZSLs9UV6FRGZ4fRSsTnRlpr+Y3A2nmsh/SZndfzC0c3AE/VTtt6BbQsUrLIm+AQIKWQpPiZQlX5hc3cx+w2/gWN7mS+Wqz9E2yvhz6XO7uvDEoifggbObgpsZbkGFFAROgPgQ1Bn6q7T0dSVtsCtgxwOb7hux0SFWyMCoDSNjdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbxz9Fst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbxz9Fst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB05C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713858022;
	bh=L/X/2WDm6TA1onP+CGpvULsMUCixnBiz//QoYbVGY5g=;
	h=To:Subject:From:Date:From;
	b=lbxz9FstRd5ZoZIXNpJ4Sd16u/m+oqW9l6dtM4UnaeDGytXT2F0e0nw9Y6cQzz/x6
	 MduG2yEM7EStOqdIo/w5QxS5U8zSSGYRddB1CBOGRSn6zF022bJtmcKEeKk9e8Gk9W
	 o6enE+XblFIX/ql8CT9pOhfvSbAeHaOW7+W6D7LGwLyE6C0qyMinSW3OWY0aIPX4mJ
	 IYbixd1WjzWyKv76zsPrbYU2CeZSDJUunpQ8wqYB7+TLpwVPH8bqwQDJ/6dHlGBmDC
	 ERM3Pfm7CH6E36AmNBBF/uqZebxhpKSSGdvnF+N77ert4bBeNWQ4x3ipSNJN26qFrP
	 M/iyn08nai9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D6CC10F15
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385802281.18061.4102590955690833600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a2bbffc455013cde13c5512b77aef55687eb7e627b244b04c97f36dbbe48e3
Date: Tue, 23 Apr 2024 07:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713858022
