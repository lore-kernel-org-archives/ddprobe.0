Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AC032ED4E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781063734; cv=none; b=Rq3NE9sCawXW7D4SDg5dQFE8obq9t5sXCp0ZJluYN/lsSEXMcLWr7m+aBv1fTrKHINVp1kPi3i+JIwAZ35mnneDHztnsyYKIju8TIfD++LWeS7LXA5Z5WuuICUHvX3WdocsjlHlfhCJIZ5oP5EyeC9Ga5ky72eVyQBwPzHk04TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781063734; c=relaxed/simple;
	bh=zyakSDinjITVJLAIOdVKsnAZCPOmbfkXi11gqwNGcSg=;
	h=To:Subject:From:Message-Id:Date; b=WrU7fdBN0nIgbzq/4OAXGFsumG/ZnSiIt0ecW5aJpvT7EQeVZQlc1azPg8NyXx5ZGuRpzDwTa6DraG4SgZeQKUuiESOvX0ePmkYZ7tgctVPAVqpsNtP4p9IRHWxeUCOu04Ayykcc4hJL86KOTVAP0CBfGvSpUkZeRvzqNYYfS+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WU4hB8Yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WU4hB8Yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B5AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781063733;
	bh=zyakSDinjITVJLAIOdVKsnAZCPOmbfkXi11gqwNGcSg=;
	h=To:Subject:From:Date:From;
	b=WU4hB8Ycsx5dkIXFQICT59nh52+OSlrY8C0tGIQYu0qmFnfCl2kvW9jyCqCRdm86x
	 Nry0HWVV5Ek81ebZt8pIkT2Bkxrl/hfRTOCrDscaRCNvTdUaD0liFih8Cdf6/pa7t+
	 0KeNM+okzg5sFrbnoaffrfz87tTDx+fboKyW4e1pFbF6eaNqgzMH+Tk7Ge2ShY1EwP
	 qqEVo6gxZ9iME6rQSe/7uuwnH4+MW6sV2/KfGu3BmcSGQCTW/hYV2JRXFqO/5aiwVI
	 +8bhlIc/qA0Xvo1cnVkgOjlxLQiFw5DMbMTr5/X3cwnorsBdC0QOOG1qY9GGhM+ySb
	 5jatruzGlQvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB12CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106373370.13672.14684772720531843157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a592fdbb2cc8f29dab6de6af8b985dfcb682f27da5053b82e4075865448312
Date: Wed, 10 Jun 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781063733
