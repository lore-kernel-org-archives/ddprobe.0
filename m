Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78E367B7B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779256234; cv=none; b=aXqSnW7W1LqOOn7aiQByQJr3gyIlkukCYV5wQx6ptK3nEMX01QShaQwE2U3oqh2zJWhrf9tpfkvsTD4G5d5MWuwgaqEhRnHphcfewtA22ZXJ4UK2KR594zD2M1F8hwpXEq399tqyYslkga2w+iSczor+5oenaLqJU5TQVElbOiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779256234; c=relaxed/simple;
	bh=1OkL2ORDtk99zuSo8BpqAfNoLGfYH2J5ElV5eiVqcNA=;
	h=To:Subject:From:Message-Id:Date; b=DXSD+1PXgRh0Qzki+TIJafshIMldd6e5v39scoSGTN9+dMCk7aJqhDG/jZ0EBMMHjKDrvNz6qzgzfTj08lPN/f0v7sXfpPDYW6Kj+VxFJLvsi74GatFnmI4qNR33FicxiIC+SDkmNDmS3PmTK7jch/zk8pC51Waa1aWUNWzpcY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm1DZXY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm1DZXY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C06C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779256233;
	bh=1OkL2ORDtk99zuSo8BpqAfNoLGfYH2J5ElV5eiVqcNA=;
	h=To:Subject:From:Date:From;
	b=sm1DZXY95ctdmrodCJNAKYQs+cQZnfTdcT0uN3m7pO++kBcu1+mKk7q9uZ2b8S+TJ
	 BG1au+HmPUe8iInGAWeqUZ3UMsRW4CK+Sc/XwPhYb2oo8OWGhzR2AopPxxGUSiL7eQ
	 96em1yydLGo9JI2XY/wtR8oRi8dUsyoKiJRjI1iTkO4nD0+/vws/vhi70vq8htdMis
	 k7xr26cCtJcHZGbfQCmYcVEXipXq+nFRdjGlB6nWr1kyGw4GI1v0v+nyBCKfv2/ZIa
	 ojsOC/sjSr/wmGj8dn6K+0sNn/W4BBT15/gBB4U3Z2XkI7Z0ZmnfqgqfZ/0f4UKrCS
	 ZbXYormm88D1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D6CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925623368.22869.15163896313526377408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0aa48a977d5dacaba540142fd02d58a3ce5472ef1160c3bcb33e28d4add15f
Date: Wed, 20 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779256233
