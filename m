Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345913232
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729577154; cv=none; b=HEokWjKUAIGQJUNswK8KIsjYA1IB5toOpYzdFxilin8boZrgHAlOgEuDJ0k9OrmFxX570kn6rr0ezksq4fF4KsWtYvBFkXqySc85JFEPoW7zOp8OU01INgSfd54VPx2Y5qLHUKbh2/5YvdTNEYkarn9vavMvZoT9MexKWGe8At4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729577154; c=relaxed/simple;
	bh=laTTE1rc0AqT6ghZzlI+yDpovoswJGE6v2QkwpQblxY=;
	h=To:Subject:From:Message-Id:Date; b=gAqRzblbrqGgFjVLFWufLMrLw9DA8zDqfYdH89gNtyzadpL69PHLYuTVfGSWqDlOi7FlG4DIljAmgtEr4YaNOhSV1kyzBprsTXDByZfGeVDWt++LB25J2Z9d9kK2h5w/Ft8sp1svFi+cKGrDS8IKTNjYk22fHiBex8uso9YjjGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4mzzvyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4mzzvyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34E6C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729577153;
	bh=laTTE1rc0AqT6ghZzlI+yDpovoswJGE6v2QkwpQblxY=;
	h=To:Subject:From:Date:From;
	b=J4mzzvyraX5x2M0nzPQwWz6LtyjN4X/YDHRMPmt1H0BrpJIIkVLfuWEHMgGvGmaMA
	 UYSwRqHwBNoVOOqQtOGXiF4bJ8aszdOe0+7tOu6qE/C/ObRu3Ah/5oy6JGsUzggMKI
	 91XbjHiP5hhcl61vn4/d8+UezT8uOT8M7svazuvRj8kP2HDESJLk6o0JZXHE50eACb
	 Ny5G90bhvsi41F7FA/HWGVMZAfjsCnhQm43m/bGrk9LQUi+jJijSPMBrK1Na/2OMO7
	 ML3JDB0dEPSum4WVEbooTob5f8fecWHXlk2g3AxkuZCpIuB7xJ1X/+ItK5JeZLeAQL
	 /hghqWTYysTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC3D1CDA0
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172957715362.14065.9105727520326259745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dda23d56db1a813bd289769081a35ea969b11926b158181fecac5eeb4ab080
Date: Tue, 22 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729577153
