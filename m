Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCDA33A9DD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767719634; cv=none; b=dlYFPQRCyozhHxLTA53hobMkPxU4/TMlQzj9m33ztVtRH82Yj2L7e9yq8FA7Yhcgt1dYNUHRDI3NxTtqtQSrisV19FSVV81/2tzIqJXsxXtAab++KgNbMmNF1bsB/8i74oc9xdIXeEPPpNBUh59/YWG4Y6ieEKMzKOGbECeTzxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767719634; c=relaxed/simple;
	bh=jLxWdTCiNYA+VBh97mIki0DCFYHsu9CvnxDj9c2A7fg=;
	h=To:Subject:From:Message-Id:Date; b=GErTyMYPXmAAxnKzguwXJbmsbYhgCu7TOok1jVE7r+pdMzsRUsSjGOVUJBsAc+q2zu5s/sXTk+7Sgr2nAq85rd3ADlRvw0mGJ0onOJd+Fo8mob22+ZU5XaRRO2pvOYRifJ70ZCjtvBU4RvxAdkx2vRa7QgUtPmn+UnGjBRMe1l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKbud44w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKbud44w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD7C19424
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767719633;
	bh=jLxWdTCiNYA+VBh97mIki0DCFYHsu9CvnxDj9c2A7fg=;
	h=To:Subject:From:Date:From;
	b=TKbud44w4oi6mssoZ5Mj8/QUWnVIyY2V7+xj+76b0M60KnqHIxkOjlmiA/RVSuhdj
	 M42xuZt9OcUtv+gyWAfAH+7NomymK/cuMh2k33Gd4Ro5cPR7krjczVYBf4wLPOSED9
	 k2gMhdkrKam/HWdfcj6k8GYv6FWejgK5JMSa0/CD64GxLyncbMXU52koXF26KaPebN
	 G5aZrRZOZh6ABxIkcuuLpHo45wmnR/fOJdoyJdbVU7t10AXmh8B4HYPSY+JzKVAbkX
	 2QFof+JVGH4g/Sh4zy6396J8CB/ihJdnb9mahPhK7+z+ZQkt1QPaU/ou4vvR35pAf5
	 FENH6dR2Z3Slg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF70CEFCE2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771963357.24816.14456016351519087748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72bbcf0b145922f2d494ffefbeb596ff196c48574d3c8856d9bdfefc34d7942
Date: Tue, 06 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767719633
