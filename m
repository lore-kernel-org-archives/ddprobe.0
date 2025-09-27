Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DE223324
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758997794; cv=none; b=W95K15ZIB95oYWnllNEr6+jQmjZPj80kVmuq9CuAQZ2NwN01rKaplzRqX1/J/xWKWSSK5ppdeHAXWPm/mupwmv7BEnaVRJ+jhXwwtbDm1iF7dh31mmbIUDb09/Cx4HlUGdMST9+YX6I9kAtifogy3hy8orUZiQoa75ybYU8DQgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758997794; c=relaxed/simple;
	bh=QDoRINqY2jMkrUZ/dhk9TenQ1c4MOeA+1rjYHvnyAeI=;
	h=To:Subject:From:Message-Id:Date; b=DhQuV+JXbxQSk52ZKdOzaLnvcJ0CuBrsmJK/z+0DbNWct5RFZKqxYI7oV+0oHse7WAGvnvdJPWZ7C65OP2pEF6chtRTPOe0GdnvHBbwz9x+RcMEVDGGIY++JzQK0nP7tpSJxn5HzU7k0PClpwvqVyloBdfnoaBru1l6+Z9pQsCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQbBVhbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQbBVhbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758997793;
	bh=QDoRINqY2jMkrUZ/dhk9TenQ1c4MOeA+1rjYHvnyAeI=;
	h=To:Subject:From:Date:From;
	b=WQbBVhbhgZIjl24A6zDMNjV34bQOBK6kVhaoANNViswPG561tE957WGVVKT+Rw78B
	 i7/WWynxr2t5LUPZF6ZxrJ+A5HVxLb7+U0TCtI3JLI+H/Yplo6cV+HhMYmMcsUThWB
	 C5PWgdlkKNWLH9s9Rd0U9gDCAa0V7/rykkUI1AXLxCIjRnogm6OK0JaxlZJcwsrnRy
	 H5IxHAiPorXJHp/XHRiwA7bvI3QhdQ59DxNebzC227V1IidQHMdg1kmAqoMNNIn26e
	 gxJ+lpSY8aCaREoOkSrpdY1hE+yQS42n5TeN+9ybHkU+jQcdgMElBnHbvB7/OCZKnS
	 VSUqm14jFoEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95997CAC5BC
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899779358.29355.13083217515309205988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618ec4e0686272855752f56be54f65beabbb4962786b38875c95a0550d09f071
Date: Sat, 27 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758997793
