Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA291D5ADE
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745343594; cv=none; b=Sf8ZNw+tpLshDXR7YjfLxr8C6+DREx0uGSOjCwahNM55ULSYBdfWYT98MiZ6/EUkZRtVX0/G940mVj8l5PEU+Bojz05uZDL6PrG3dbU4Ek7ls1y9GRm7X4sDn3MKKsO5uL6oM2AFMav1JLLXAx1zApulIgonPsykhi+LX/OB1sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745343594; c=relaxed/simple;
	bh=H7LmIBNde8ttabW7vXyjQgTwZ9p0EWiLr5VrPh3vf9A=;
	h=To:Subject:From:Message-Id:Date; b=p7YxZKpidju7IYr2UlyneFatyCqeCPb8mk85ie1w8l3hoLmqprS7iVOog2rM4WUBHQEFlU+WBlQoD+kSfTgp2NTTMI8bmeyByz3y9A3n9/cu6bUpiISqo97etWoZIJVKDCX1Eost5mg1+5gpUbB/83AjJW6H3HhBQ+qSdYVw2Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlhrL+KJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlhrL+KJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA73DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745343593;
	bh=H7LmIBNde8ttabW7vXyjQgTwZ9p0EWiLr5VrPh3vf9A=;
	h=To:Subject:From:Date:From;
	b=RlhrL+KJICB2rOUpddmytsZm9Oc1G8VsdNG2QJJEglOUWy1lpPynCc9/0iIa35zAs
	 d39IZntOt9eM/er9TnV1ZeOgNUsvi2WWEz1ylhm0L5w0wgczyiQRCYzGHPajhRzl6F
	 Rs5vyoXjzgvMIG2bYUnQ/MiVGzvOapFdG66tQdUM45ECK/ZcKGQ42oIE4IvV9jJKB9
	 nNZrfTTxxfyOCdURMdx5fHpmj41zNe7kyzEvs+tv10ftbfmJtzOfYJZ/k8smOV/cI6
	 LyKzcOOOVvMirrGoREhvU7Kxxt2C3tA06cCWSmB2p+q6K0NZBIOC6CNPKXE3kZQNBV
	 +1NZxYGG7JZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7BBC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534359361.17574.1041253600346394732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2024b2d3e3b92aea726135a581d14400e40cc8e66cbfe9ad6245a3a95856c232
Date: Tue, 22 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745343593
