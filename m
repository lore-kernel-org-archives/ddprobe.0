Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E882F6920
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787256034; cv=none; b=NR/gWdUttFE/fRnvagYSa6GiUGLVTzGl4cHoj/PguoDjVYCKqCRB9ly6UIzdeQDy0WzIgY6qQK2+tJb9oF+CcQUNYE426Q6vhbXtyfvwxuGC3JCkUUldK5GiVuptBos8dQP6xrUNl441XWorToS9HY3uZQbstG4XXRIukSmeW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787256034; c=relaxed/simple;
	bh=KLZrlc6dttlk1aaKm41XhYenXTrC/FKQT0Rw/fzPbV0=;
	h=To:Subject:From:Message-Id:Date; b=GKL0C7YL8iphtL6Voy4WN4TLH26CyeBnLQngR6i5R7wsKwjpHhR50LVo4cOgkpg2PbRNR4btcxbYwZLfY97JDi4dK0pSbS6Ti5U45hsJDAiH1HVJkb7pWZ0m5FYI240t6LNkEmSRwM3xttXidMuVbQJbJe07zaQZJVflkYK3Cx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaIVfWBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaIVfWBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E74C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787256033;
	bh=KLZrlc6dttlk1aaKm41XhYenXTrC/FKQT0Rw/fzPbV0=;
	h=To:Subject:From:Date:From;
	b=aaIVfWBWQP7IZp/fZB8k0MR/DqmryOjzQbrhubBTVBq0o9/Fcm8HtEXaJKUW5b0T6
	 Nj3tEF4SJSxADs7hVjSVDnKVL9IKByZ1BIwWxs52L9N6iNCyewf28EYsXaymtc5zMh
	 nL3DWWV+v0XR8dxcF8uMP1IXcxCXGGkOjIRKAhZQdezXRDEh0RmDvJy7/7TkqVCbt1
	 +Jtu81fZVNxyC7UVl19skIKv3aB3saNFUKcUQpiF8F+vRmxCH/niSLsg2sPK27nP/+
	 Yy9sgI7B6UsQUQTJe83q2g0gwc+T6mn2DlEHtY1icxnTr249hg5NvHBP5ratR7qv69
	 Vm0YULaD7owQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B885CC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725603374.15939.15560025647717714737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dede534b532102a22fe62ff49c10cd5d54476328e75872332e71fd46568d70
Date: Thu, 20 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787256033
