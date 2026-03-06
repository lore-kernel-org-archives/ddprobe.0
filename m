Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1726C1D5141
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772773494; cv=none; b=DyNryw2QJqXxSJOvtsZj1YhRTEi/PPZ1ZmRgJ6U657cXx5AUDwmYP5Pwj+z+6KHbgmh2VCl5VC+ARZIJF/8yX2yqO5rz+Rs5wtMHOp6/Xt9JPI5KoorNF7p13wjvoF36YpfjHBuK7ixCEnAYncyKAYcJ1q8oyQ9AZP8IJ4AyYB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772773494; c=relaxed/simple;
	bh=+2rHwYhEtwbUBHvjU5kHeZUzia0fj7zGQHdM7GrP4kY=;
	h=To:Subject:From:Message-Id:Date; b=Um1zd/57X2FZmLqSrwjM2gD4YRQrW5pjJ80zxIQYWd+Onzx1X6H9jke3KJG/gfqsi6hYY7TdexDqpdU1nE33m4mfvQX7dq5MV2R2KpfvtMikMCAy6AZyy+Arj2JeKDQwDrIQitdg+SDwfiI3/Ipd/4Bdz12qGM5u3Ufsg9HUIQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpwSNg9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpwSNg9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02AFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772773493;
	bh=+2rHwYhEtwbUBHvjU5kHeZUzia0fj7zGQHdM7GrP4kY=;
	h=To:Subject:From:Date:From;
	b=kpwSNg9pGhGKhWjDe0mILTE7KqIUDu9p3n9WB6XnFU8cGWIKRkHpzHqgjQWT5Awfj
	 NF3zSzMmhn6Mg5AWRKcrXxeHzKpaeE8Qz07+o81d6oiThpNUpRlDBRU7acU6SOQSkW
	 tyledKINO+WsGJpoZNtE9vu3IhNIDVsfCB8pj9nLE0fnn2K36aK8mMZ92XZE+nIhkV
	 N9BezUhwrAnuxQhFqNLLybD5jLxg96GmUUDMY5SSmJLYiIoSXlaVDfVNL399j768iV
	 a6366tE53l4zqot9e7j2Tq/kPFdXLbz3RcBuDiNPgqYII2nVZDZeG7rsy2J/YhQ1qs
	 mW2ROnO7HMagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE28F513F7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277349357.30054.6973055396704373099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30874387f13e846614a7544365414a966f6b7275889d76541b4f96ff242e47cf
Date: Fri, 06 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772773493
