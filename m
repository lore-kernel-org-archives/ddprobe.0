Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9743E9F75
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769033634; cv=none; b=BhX4LKw2X3kZmpfcSF5WgZbr1Agaz9PX2YHNw6Vcs296zgNXXrXGtLlp0IWSuMGXLZ8J4WK6Qn/MSRvrNEgliJ1nA4aFWn/HDn0FV2uYphZVGud93zpXINkX21vIqBo/RonhukRuzrLg8ZsVqn6I6uSE1TDC2wpln3K4iLfM/pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769033634; c=relaxed/simple;
	bh=u7CTT4W+NMoWyq/IuuUlh3zVvh4VTE1nykWFUVMw81I=;
	h=To:Subject:From:Message-Id:Date; b=Z5MxT5kIMgI86+0lh7YG2HTaT9eXB4vRODek3f8Vuf7fn60N/eevneO0jFC9VbMSixxRg0b9zTe8Glx3IHtybHZqJOT/U9iS1wmQ+s4FlpZkLkgeQjmF2t4+1H2Yf4ryZ1rq3wSHG5CGyHcVgW7hSP8pIX5JT+ZHxNS3pz4kjxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDdDHuI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDdDHuI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4EDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769033633;
	bh=u7CTT4W+NMoWyq/IuuUlh3zVvh4VTE1nykWFUVMw81I=;
	h=To:Subject:From:Date:From;
	b=ZDdDHuI79eVQqJC546jY7FIHUoyIL+x/BgKlZ4zmVamDiZWUZxNB5acr8h3VNxYua
	 9bJjHgdocfr2ae0EBLXSvi5u+Bz2Te+ghVqLO6qLGUE1fZyWIvttebQluV4ZesiCB7
	 /Kn3tctz/wwuMNRwc9OWmpoM65EvG8NwFSmC48ydPBzYT1PgUe5eg6+FDYaWprfmH4
	 gCGfhDNK+BQ999i401yEScB5ltWfIyhWCQfjo5IqtaGsz15fFJuk8WjCKHJGnTNVQ4
	 u/qbhDmoEMokvaGZgtDwW4b1wU9r7Va00Tk/OzR0cMQvwpXmsZN9YLutBCtyVvMYSv
	 hw219scRTa4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A7C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903363358.15758.9371799299618808561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928a6180f91b4a72c20bb9b6ad53309acd659b7a15ca511ed5e7bf8712877e73
Date: Wed, 21 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769033633
