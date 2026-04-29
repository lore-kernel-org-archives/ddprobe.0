Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E422539B482
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777471654; cv=none; b=nx5KDDFXWZ2LcV4W/5c3aranPj7usfoYXwZ2p1X+fxePDnT93ldel4wk8qwIEwATOK+J1SXCK88br3zPivHabDw+qBkSLXcsmSYTbWsCF7pHM9zuGC4f+fFJJW2fy4hiwCWb20DkIJfFwNSmHAtBZy+/hQ/Ui/snUwZ7oX18TFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777471654; c=relaxed/simple;
	bh=CChSRBA93bQqcjr4SStO7tG9miU3b0qemWdLgyUllNM=;
	h=To:Subject:From:Message-Id:Date; b=N/T+MucHDwz49Dg7C2EdsIztDhwPnHxgsb0/yx+PQhNhOXksGFWvFzY2hjmLLlTZqIbZ+Mf0uQMjuYescoDR8RHVw6ok9BVy5ezJfbe6j9My5y2OWdTZaW5/mQMLJ38RJ4qYepSB+eRKlnRt97alfAEutW6LhKpl86M5HY+cNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+eFtAEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+eFtAEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93C9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777471653;
	bh=CChSRBA93bQqcjr4SStO7tG9miU3b0qemWdLgyUllNM=;
	h=To:Subject:From:Date:From;
	b=j+eFtAEZpIlTmWg544tpsJzKxBQ5MXaHl0B0iM/t0WXyw5wZ3iuJa29k9r7k2FLoi
	 aUfemT1eABwiD649zm4KhmemZuTjIzX7L4EyYN+OjaVK2pzKl5LWu85o8BlKPN8uLp
	 FM/KlQLAWI1FmeR40J82okYa7XVHHVOjVxiMQfE+LSaovU1ZJwLfmtCbKlz+whGe6o
	 zH940X6zsFxM5RU4fqhXw7rmhiAnUBoEjk4VJCxWXj4LiQC3SfD+7nRC/+GK3JSrI7
	 ySdp0bQajTXPhmiO+QQHvjxXFLBDiLtYg340AIjOATcJlFFFiGEbvHEj1QX9u9KoqA
	 l2SMnOORl2ckg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF9FF8873
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747165368.14090.14176921962882322680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206459b984ded8d7792f9a44185bee62b3162d2ab0e790ed3419783a8fd1df94
Date: Wed, 29 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777471653
