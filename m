Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350032641CC
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745242194; cv=none; b=haZpj5mqq0ANusxXEIcyk7l1vdRTyX0pWXw7Ix0zVqKZZvZ7HyxZfHS4QEU+tvjDWYwuBF8rup0kd9fOewhVcwD8sqSBxtL04LpxZHOSJG0qZOE8nsC4vxs91vWxnmmb7wSUeI6ZbioJYPhSfpbtZirSrqNBAPWRRKK9XfbyncI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745242194; c=relaxed/simple;
	bh=lEJf2Kr9gEN/FloSo8L9je279ImiBZxbF70DbIx4WZ8=;
	h=To:Subject:From:Message-Id:Date; b=OuLAO+6R2JfyJ+5B9dWaeQT0pQErLRQ7bxM+So5DpR1t9vV8eZHTBdAUh3SeXAZXSgwAd0xEtYWSHhBerJ6g0zF1C5hbUofwc7MZOt341KMSjwr4sojsM2gjFc3tU9lk3ZEyHfRZuNNJQY1TwEj74DSXgxVTBEIsm4D9VkiYnu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtGZfwhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtGZfwhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C56C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745242193;
	bh=lEJf2Kr9gEN/FloSo8L9je279ImiBZxbF70DbIx4WZ8=;
	h=To:Subject:From:Date:From;
	b=RtGZfwhbM5EyWsE8CsoSYkXk8SiENkZnQv5P1Q3W/8h0VXjIJJcn27Rr0X1Jey+0m
	 C0aIPR9VLX6lZlhtIPPCamLn/J/7aYC4LVYRHDiPp4LZiv95INwGovGn4qSxwT/OYP
	 j10wY+Zg4q0oGNWJnp2EDIzPmPr4sjwQADSP3F2+ZlY3Np3PNZTteqMohuF6hWZSBd
	 CmCbyKyp7KyQ9D3lgg4uEq+Qb7apeW2AhfwfasHno8sMFSEtl3ahXfNaHVzcQtZtFi
	 CnxiA3vLwae7QKcFE6rayZdbLd/uPTmEEHm8v7y7EslxG5O9HdItY12IqkIKs8tHLM
	 8MbOTEVh7h38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1EC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524219358.24743.16143121331880358427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fa9c1fd170434ab6945e493e03b06fd90126c0fd772b67960894cce69478c7
Date: Mon, 21 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745242193
