Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1375714F121
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752405594; cv=none; b=F+hMUgASqu6Y+o9eoftzJPNiaoS7Ps2FXQdKQTLV4E9Qpz93FAp931pa6h5kEJd4ndm1fjcgKiWpOCCjw+W5XbOBcBs9tKl7kFLIGJjd1cyxzvqlMy2kk3oiOgdxJxsG9HGJRfBYC/LqNzS5qjuSAjm/EWfZIwM15tlVU7OwGkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752405594; c=relaxed/simple;
	bh=Ugb7ZjxVgZ4rmKwAMoqBkN+QDejU+l+8is4puI+Ifg4=;
	h=To:Subject:From:Message-Id:Date; b=WJPnivPdgg/CxHKn4Y1qlVnBgJ4GPzkZbKA10vnE37LoPMZmywJcj9gfl1zGppPEucfotfc4GjGPxYjsgMiLpvXGuTq6PRf4N78QpgP92ibPcovXI8eeYwKOJE6wW1ggcS0OBFXT1uRG6TPodkb6ANoAxH9rhx3WV9HumVlqAeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKe7UBG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKe7UBG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF8DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752405593;
	bh=Ugb7ZjxVgZ4rmKwAMoqBkN+QDejU+l+8is4puI+Ifg4=;
	h=To:Subject:From:Date:From;
	b=aKe7UBG+OlqODzgfrzNKSZs5I4C9XJvawjNNd7UhY59KwhsXPibjs1dOjittKhSMt
	 eF0cOuP8vioFdLQ81GPbdOYCVulRHngULUVHL2AfeXmgUrdk6POGcnxqnLsXcok7ot
	 x6XWDWQCtV9PFWy2Dvlzk4VU1iNZFjjS6egbrRThqeMlCPo2+S7BINTI3aqvCa5JJs
	 Etm0dEGUTXyJ3ca/3Kv1BIn0mcFepGHj6QjJzRBeONkSLSL5Vy/4OVzJFQAs/GX0P7
	 6v5343echp+xQKHhlPNNq96DTaY6ojxpC1SJtCqbUncqO6OuRxdxN1JEpnow4iX84s
	 Yytbnz+22kGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE67C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240559357.27597.15959934388817744387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0790292f208af46f5673dc91d1de7825cf687f3547e0459e23a845212b6b8d
Date: Sun, 13 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752405593
