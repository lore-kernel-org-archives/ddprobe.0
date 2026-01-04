Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF92701B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767516834; cv=none; b=rv5NDhZU38W+rW9iOrwxsLDW/QtBjTc8DzwGQG3u5jwlnWXBi8Z/iDOQgNbGD9DutFr/B5gf8iu7ePNeAkGsno6oygc0FfT8/TFZ9EAclPoV9xpzmEscC88dh8BMnk5oyw6CnBYEifI2zqNWCx5s2YP+cJuPp1tl99Fgs4yjE9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767516834; c=relaxed/simple;
	bh=8JHUeEtjgLXqtHbV4PHg8nrMbtkp+sFwLnt+GDniC8Y=;
	h=To:Subject:From:Message-Id:Date; b=ko0/OlUl9MU/E4BrxBRs+Jq+Zg/HGfdtwN7ai70gmEK+pzXc5KZBXuNNF1sQIMXQhEnHWq/2gpNonEha1rmy+pW2ZigQTQYsjtnC8A/kEdFdbeF6h4eWDFNVnfgDF/T+yW5+daM8Zpdx5NMmWoLiZThJQpRmA7RlhqrvVoWKIzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfeYTLjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfeYTLjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767516833;
	bh=8JHUeEtjgLXqtHbV4PHg8nrMbtkp+sFwLnt+GDniC8Y=;
	h=To:Subject:From:Date:From;
	b=lfeYTLjtiX8Hv253KL6xlG/Zqzd76QtcVCA5CGCTjuxY65fsEPu3OQJ2cU+QUxjuT
	 rmYRg0ZJNk9dB/awaPfKuZUzqiBt/x9Jf7v0BD4euyvu/cZWpyacuQStrENgHsRnCN
	 9KtnLXPPFJ13rmUxpf9pIkh2dhMewrUP5ZVHF0JDwWECflXXXdYgyPE+FLdptN0uKe
	 NycWVnsXULzG7cY0iZCTYrPm5D/jlCtSGCrufsZwuXB2uKDDut80vf1sQOjbhaxNUl
	 iPUwE68SU3W8M+fjpYZi0FA+rvGCeS2sxFMJ8Nu1gWmeyW6SFTuu2Zu5yEzJMWNDPm
	 rXJqPIAbkfvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D3C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751683357.31753.9823074863610724357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5608e8bc12d717a8875787db461e671be4c94c52f0530f45f5e7a6e31de4eec2
Date: Sun, 04 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767516833
