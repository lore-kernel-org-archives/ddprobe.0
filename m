Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271FE192D8A
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757750994; cv=none; b=iF4UyZqr24vYpBmOmOZzTVa6yleeI3tDS8cfv668jeza0anbyjCoug1xjKeAPNSkWfS8ZrlbYQa0ElOAxwUZKi7cn9ifbugTpLXJgybgxfKTaW8d/qgNS2DoOQJeFOX/rZOm7KTe9N9BQl8ECJ/QoUK4yZKCEdstD6VmyArrXNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757750994; c=relaxed/simple;
	bh=gAY0PioVW8S1uaauNdeEm+D+kiW/oHsgNDynFh2ZYvQ=;
	h=To:Subject:From:Message-Id:Date; b=BeqsmXuFm0e2++aeOwDUKx+P27afZeuNtSRUTwKELpm+8b2G+8HHyweC+iRHssJoARtp3yI7DUNjU5whvs5ZvJVyaHQPci0bGny71pbkPGCqld3A0qrCL02XyfRLXbKj/muPfUzL8iQNNvrJPNE/ITg8hjvwaLMwYCTL7P/0BU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikr8e3HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikr8e3HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6660C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757750993;
	bh=gAY0PioVW8S1uaauNdeEm+D+kiW/oHsgNDynFh2ZYvQ=;
	h=To:Subject:From:Date:From;
	b=Ikr8e3HJoXhFWrdPS4fg7lgPUJZBSJ0G4XbKZB9nkswZjXy1Ty3yOpTXxq6oQlMiV
	 1IXsKTW8XwVtMEf0jrZxwX1adXmF6PyfD6LfhFUyov/PF/x+BlftVrASgZRoEqadyp
	 cLLdU3JjoShIcR20PUJHVre7EaW+XUaoxSl5FIwN8CiWINqB2u/qagMb7Nfqcv8CDc
	 HUQWfbPGmXf/tVirlud6lx5utZkAUtPq0qxVvnCGU/YZzZSiPkviAKbCL2RHcJvU7I
	 Y07ZeYSMAqx3ymiUiUgmQL0pN9jE0WKYks3KTidTiB5bSvig9rkBeuxPc1QUw4cr/z
	 Lo8PRrTAxfg+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC6CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775099358.31903.3797341503604017238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14b9e1e4d11959bdb41fd7ad0098a6b7e8d1ee966718b77da416d0d3a6cde07
Date: Sat, 13 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757750993
