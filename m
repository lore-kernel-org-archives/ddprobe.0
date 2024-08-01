Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C73B13D899
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722488154; cv=none; b=YS8kZimVYVUV8KCDhyO/dC0IR9K5bQuEV9ffuQL8lQhOM1/HhFtFHMqFnnIrus9uN33rmAIZC+3ll1UjIZ1MVSoX68CPCguLoTxxAUtlBR4ArAaAG7kzK8ysBdsF4IH1Df5TARl+TRpn68YZg0ufbEd4l0tVpsqn/3lpBGMRC+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722488154; c=relaxed/simple;
	bh=tYW7xJ692JqxoCl+kZcE5m3Kidr+pw5bbSzeX9YsFLk=;
	h=To:Subject:From:Message-Id:Date; b=HNgaCHrmxWt05qp1Xe40v58Q1AEKAUl8qcSX3fGK/2QE0u1o9GJCuITiJRYno/5nOU+AmsnBY/dUZ/zHNQqzJaJ1JyBJMJKco7lqh6H9p6+MEQAuNynr8YMxhgcW7pFNSO6xcXxAKuiAfk+3lqh3XEXd4R+8a+Usul2iE9oJ3VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k250wt1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k250wt1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9CC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722488153;
	bh=tYW7xJ692JqxoCl+kZcE5m3Kidr+pw5bbSzeX9YsFLk=;
	h=To:Subject:From:Date:From;
	b=k250wt1MwKD9PdXNsAzW+zF4yYwPmyt5HCgF/cdr9GSm05qIpppxZL4l5XuK7g/qw
	 0FpIu6bOYVzY1TFa/+tSxGeJJVkvEj7/5faTTk6hHWzDyAxx7X01Wy0S+p5/iWoHbk
	 NVWivn76hgk2xtjpMVRrGhVZ12cyZDgjSbusk8kIGF9eLVd/UArkrMfCsC/dGS8KPe
	 qxmOSHWBHFpgRDnmLwgWHcteAgC46XE+5B5+WWF6KvfClBZCWHx8Ni3ZvlZu+z0LnU
	 30I7O8m7jjd+3IPqaENwCDS57zTKaWDDjLUEwLxy6R6r7n9b8r4Qonc8dtD2qeQSnE
	 IQbWPBlVTR8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B9AC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172248815360.32281.5305448037998057311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0772405b6826d092082cad7caecd0058ffe3e1d95b3a1e21f398087f02a951
Date: Thu, 01 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722488153
