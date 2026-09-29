Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84186569F34
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790710834; cv=none; b=eQ/lgG2Z7kUUI+fEAmbuXV2DArh1AHHV/fJa4yfmKliBD6bupEmD5RqAIqyrLL4o0K84dV6ZIw6DIKTDHu43glFP0wVdqbo4QGLfEhEuSRh81mxbkfsaECXAQ3w85YXxDKEVw1nHun7QSleeqZgU87VRrFhG4aSBhDJWqaAsHA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790710834; c=relaxed/simple;
	bh=M2zgFpsOzWpNCDRmjHFGrqqCYUra+EIsXyvOducRk9Y=;
	h=To:Subject:From:Message-Id:Date; b=jS6F+kLt7ryqnV2tmOMU6Q6gESk7QrdXfcNCDmHndQICDlWR8HEFyepzGW6KAI+n19G/9nJc35pg3VzJzN26FGKwHpdv43PzWaJM1L974ctDkw5r9d7KBTI7vJhqbIk0kCLkoJlarX5zYrotEY8KhP0jvZtORexk3aBjHN9GU8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQmAjZHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQmAjZHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E96C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790710833;
	bh=M2zgFpsOzWpNCDRmjHFGrqqCYUra+EIsXyvOducRk9Y=;
	h=To:Subject:From:Date:From;
	b=nQmAjZHQj8ozvZZ4HQZ6yzVsN6uuOrcGdfSMBsuaXuy1CjdVLGTqgLPU7ldlctd87
	 d4hwdOJAVXw1b80/o6B1hXBMZHBr8k91J8nfF5sKo70t2RQJIbYV8T30tz3GBzFKcK
	 i59sRe0Co5CquyWxkzE6MzqMwyyjJYQ1Hgj4Clr+IVR0/iwbaFZFznXArzmxOQ6z5U
	 9J30w+vFoluYLQwsfMVtHiLbuVPMH05+qjYMex64Xn6FN/iXF7QkjpR4Ik9BjOmzDj
	 tv4axqZT+A2ij+w+GcIQ2It5/IowiWunyN6jzm9xF4GscDOCfTvNq5+aAR4m3w+HG5
	 ccNbe/I0TsYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9009CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071083368.15162.11816391362092066777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6866af7ec416343ebbb758fed519c540c0526cc3d02af9f17109e5add95f6ea
Date: Tue, 29 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790710833
