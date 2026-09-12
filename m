Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0933515C2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789193434; cv=none; b=Bp2vgWaPCsptlbQnSpqYcxcZtZMvQdCNivTr7lRBc21BRNwKBa0S/56lmg305y3DFZZHWk6ayPa6AI1jvce9sAbCDMaMIjx5OrPU4LaAI9p5jgB7xM3urz3OUgUtlCpAbNwwt62cuNSUx41n2Y9OOmQ7jQdGN3VVtoyH9chbC2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789193434; c=relaxed/simple;
	bh=8KjigtkgiB3dMxTzJNVZV+W3mj7Zc34A9YUI+7ISYpc=;
	h=To:Subject:From:Message-Id:Date; b=SU47aTOEy71WwbYSjOpxseFi3BhU5zc0El/v1diwqSN2xvF9G7rQ7tNHGp6eD826pemmLdNLSwkm6wegpm27kVqLXaQuetHtz/XQPnfwYKB1/oRWFhj178tByLkgXI7cLJJNgs7cwelTFiFY5FZGjauPKLJsunGvE9V3MjZgKfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e95oGArt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e95oGArt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DA3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789193433;
	bh=8KjigtkgiB3dMxTzJNVZV+W3mj7Zc34A9YUI+7ISYpc=;
	h=To:Subject:From:Date:From;
	b=e95oGArt3zkaJ3IM0vxkYthT+Sl2uHZiOINBdmmwfmWW8KskG/eNqB8VbdIh7wNt0
	 Ni4N0CmZC2HWeKJiTly91HZbET9MC6gH7TNmpKlOoxdDnEtsO400L/xzkIdDr8ai1w
	 aOmUvjoVqt9ocSSobxZR5MVhbZCVtpQUMEl3SeRigiHVKxMrmSZ4luli1wk3hxQlXn
	 5NJvjoBXCrPBMzYnz54Z8xFBkSaykP3D3m4fSlVWfEtUR+38qtB8BSo1OrKWfZ1oU3
	 yHFEkJLB+EMKGYEXO106aIO5l7H4tNNuyWWGhzja9sPyJiObpkah5sgj2Wasgt/0wd
	 5BGJgS7m4JocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9460C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919343368.6318.874533616895584385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9d2d91cebdc4c44b027664149b4e436a10810a258e2db379ed4bb3b16374f8
Date: Sat, 12 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789193433
