Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8B2288F7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767112434; cv=none; b=EfgzE7q8ZK1OE2kUHvhNCNGM2AZgllQJ+9bI3Nk60FNGEBg88qWEZ2pPpvx0DroDtBkZ3ijQ8ihk1fTBKzqLZrg5P3cQWQxMmFzSDdpWOQaKNx7tQ/C44tpZ1RfkbW+9Z3FhZmUe6K00VbQFaJfMXG4ETPps21Gl2ua2yEQPMsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767112434; c=relaxed/simple;
	bh=yZBp4bSP1Q6E1KuIrJjjcOncXDLQOi0kJm3eZOInBGE=;
	h=To:Subject:From:Message-Id:Date; b=h+fY8a8XEvyvWU7blgeFjktVFme5VF7phGRsLjBLs0a+27cyLar0KETNa1lxRAPxJhh69jpjGN40XTyp9zIN8Dn2flVd+t29boavQ4u6Uc8XDRmmX5CERGdIAaQy79frGx8jXMPcyKCq8xca3JpazeyZLTER5mWm0ic2s7JJONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnXLHy8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnXLHy8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D67FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767112433;
	bh=yZBp4bSP1Q6E1KuIrJjjcOncXDLQOi0kJm3eZOInBGE=;
	h=To:Subject:From:Date:From;
	b=cnXLHy8iLhkYK/hiw7oMya5M7JCAsbTN+auMX4vu2OeGnlchOwaewVtzwJT3bdWeC
	 XQYYSS4KIXzLXNKxo9VB1ywkn/MExJOJHr7SHcf0FwXDG1asypN1SqBubOrATaG8X+
	 1zbbtLHprM7HcskkXsjzmdgieKVFsHdClQKP9Zxvy75MWGlw2OuVsaU2n3LUW6yBP+
	 5MvPG7WpWUZX6RJCtFhvOrbGDtDkCjSfvx6B7i3SYqydjdMz8gOZ3kVuZII1AVzKwV
	 bA7kmU0ILQPjq9/JHrqJuArJLZmlE3bARuZzBotST8nxBpuYixShhbw3FcvRBTXjq1
	 qcVZKmYQ6f2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B5EE4988
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711243358.8419.11201372490959882016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a810102013d639d503a20069ecb5521bb3d0ccc661c9cfc88e9ac0d80d6bdcff
Date: Tue, 30 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767112433
