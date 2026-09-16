Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCBB2D7817
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789566035; cv=none; b=SI1A11kiJzKJXgx/n4q5O1k08Yyt9KCuV0cypSj5wg5QDi2gWrklufL9vcDzHmnhbvMTmvHvQ8dUa9UDxjpC4/KfAFMCl/Y/5mOU2WngQmDGM3tLu3AeUfjLSJEsdsBmSRe0AneQOd8bSqvtU/WMjwKrq9A5KbzbQVax7nl0+Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789566035; c=relaxed/simple;
	bh=xmToQ4gsk0PILYqlqJzCuorUmnSV7Nv06dkXLEMD2M8=;
	h=To:Subject:From:Message-Id:Date; b=KghpI8fe70O28hEPQfq1V6jf3x4hH3X2vVWPAZ6px7DGm4BXn2NWapHVmep174DqPB6b/BJ1aBvYCa4UDHgWdRrOYF67t9gIHlFvNkUlIms+ECVngbQVTmpmvpSjTOBb5XTy1ndtfEUF8ffneWMTHt+L/eLx2U3Psi6nEvbfMy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mShedxQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mShedxQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD402C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789566033;
	bh=xmToQ4gsk0PILYqlqJzCuorUmnSV7Nv06dkXLEMD2M8=;
	h=To:Subject:From:Date:From;
	b=mShedxQkeOWcGSnXcMQ9IUENVf/qjnUlYXhbHST96byi3GlSZeAfAc4p2h5L9AnLU
	 nBYwYS801eT3DCRby2EZNOLakfdYMWfZoPkwPC/+Ib3iH+G6OlzMuNT2R8gCMXh982
	 NFTa1b1JJ1H/dzGJP1A3XAws6fThHISLeb0AQkeEF/S70cqrJ0kZOHeCdkY/8TYlRx
	 M2EbVCKeCkuIPt4apclc+hNmVCqStmsELrw6dvG/C3nlW2BzMJiRnlB63KDXg20EVd
	 L5Fiag914dGBhF/8dhYABee/sNcGdo2djtFq6z+eDyIq+Ck1nUjVpOT1ZuGnQk/x99
	 m6Pt3kZy0nHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB366C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956603369.8069.2176269997583117589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49b2bbd879717a641fc33a586dd6b4cff2eb50468f86521295ae8764201c898
Date: Wed, 16 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789566033
