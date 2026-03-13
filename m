Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015871D86FF
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773422094; cv=none; b=ruRLl0iKytZRi2oQOe36TCPWc6J5w/FsrJmDuujYjyWLrKy7S4W0shgHKScU8RQzwA8txMrmQgqReAf+lvACRfjVeP6UggLnny0/lhZM2rnnGSYbDqey6MclEeIWgMeuCEuO4Yfmam9LRU0Xq+qurfgQPrCRpxPhNJL9GAQb4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773422094; c=relaxed/simple;
	bh=fUGm2JZxrFJatvJbVkDrn3bhH0YM7spYbozM0akIweU=;
	h=To:Subject:From:Message-Id:Date; b=EySns1646e6MpwVkJ9NK7kNFJCrLWd5y0/HS6icWlS5hK09W7zIF1itmefJNaRZscjW4isMWoo6uvFvcpIIWxUicPa9JGu87LjMfGzB8lrXw4J+JlzNPEcGWyGQXuD+Biri+vnSetFSJ+nuM75/2RJTwdFFOQDWv5KO0W1ZAav4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmxyG7ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmxyG7ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE3C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773422093;
	bh=fUGm2JZxrFJatvJbVkDrn3bhH0YM7spYbozM0akIweU=;
	h=To:Subject:From:Date:From;
	b=gmxyG7kuoMfBfLREVX8kUgkk4HrWKXdwuXqrt5Z0Q66B+pctZcnMSm9PpySlPA4ie
	 GUKNRAIDY/gFKB7cSLfVNbKGPRfY6WW0dOBcLe7vr3O8uF07Y8woieAaVaHkHXiv/B
	 lpZ5vvLTSP1DIiqTeA55EHgD+9DA3dEAVbXhcqrem7XlPq8Dtr1uceu1IZHrjWFbv/
	 2RGRh7RRIEX8vUfSXkkvCe7guF0MGfRIE5olAfJXzWx9pbspytMNQPcFU/RnRvN6cH
	 CHlsk0yx1RY5ZBsnKthW0JSv3TE+theaO9yS/vFaowmBc6dUl8DUwZNvESKms8hNdi
	 6T0qh3o2xBQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056F107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342209358.8021.5187253421052219995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04002768fabb06afb98930b677ec32e52aec1ce2691606665fb9026917a4fcb
Date: Fri, 13 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773422093
