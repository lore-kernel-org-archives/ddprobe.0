Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711E4414
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745648994; cv=none; b=KGm/3W67HpZI2c1/z1cjiRRKIC56HucOmM3EOB85k1uJ3F631BCoyNYLFYjK8+1hKfBlP2xTO5rS8UwqYkXQE9cUxz+u6NjB3sbZXXcuOqt+TP1C/Ix6QVhkB1+zf9t6yPIflA4Z768lxJc+dwAbC5zRBNLaORdbD+Pk9PGQq+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745648994; c=relaxed/simple;
	bh=BdxjgL0ru2GyQ9otCEOzUmmUgAXNXLNloZviv1EfAGo=;
	h=To:Subject:From:Message-Id:Date; b=odPWvJ9+U5+mX0MNY2wbTFb6jH0hroTr1vQWpX5PuGrMAUqcXzcQgEp/rKuKK2b38IO3e0i1fNXafNLECqqpgT9l4ic70pVaItqw4TlSWV7NZXF1ACnvPck6qrjgsHsQb426wM6uovadueXW2r2+iZvRcHjepGhvmqgEhRmW9x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaDSGnxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaDSGnxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD91C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745648993;
	bh=BdxjgL0ru2GyQ9otCEOzUmmUgAXNXLNloZviv1EfAGo=;
	h=To:Subject:From:Date:From;
	b=uaDSGnxieTLl0O0p5xjsu8XbSSCMHqKGrl2em9a1I3zDHZo/zP20arzW+g/m/b4+M
	 jG/d9TdWeQF3gg52NtafOl8apsP73vNmd8W5LY+UgftHh0i5imWQ59dhFx4+AVztQE
	 ZkyNvl7dcUl6VLs1kaZ+x4SoClzKjIeg6Jb2sDsQpJkHFSuYNblybFJUkG2mOMTS6e
	 6MuuCGdVglL1XQFklKwK8diBIUSEY+SwiCPEGMWDOw8u15yvp8gY0TvwGYJq29SeJi
	 0t2jqAtPtglqvrOQ5E6Slwwe1D6gxTUMVhhseu2dzrHmhsBncJgZ4Gg2ZAhxxRQDP6
	 YGiYC9J4lFvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB35C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564899357.24899.1287450730779797918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed562994e408966852cceb839a937705a175e81763bc18b0fd85541a823fa279
Date: Sat, 26 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745648993
