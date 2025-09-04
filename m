Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194B72F7457
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756989594; cv=none; b=sIIonFNkDXMSyI1gcQJMsQ0WWqak1xSt3OSWbXRbZYkcFDT3ym0ttAKHKY/KMSk9wp1NoFXxsQC0WE/7x/K+FGzx60JQRy7FUdtnMvRj73bTeAOn1qbSAIb0Kj6Uti9BWLbZhDRE1XTUt/tMFlQA9f8Df/P28wQk0yK9lN/ACZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756989594; c=relaxed/simple;
	bh=DrWlMXm7caXeAsF03x0zg9b13oOgwB+MIhmOuOmL61Y=;
	h=To:Subject:From:Message-Id:Date; b=cUnB4IxMGT2t3cyc3ZQsBIri9myzw9o3Ikzv59NuIHJ6pBs17uzAw14ycz9PiN/b9lQgrrwx12uWo3igEy6pFLbjgO79DQe21004C1fZNRmfZxFNCgLIbrkw2D3Lp275KIvyQs25Uo1mKB4xtL9sIO09P9pF2TRLXpSL5+taIdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNpDEjR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNpDEjR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E90FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756989593;
	bh=DrWlMXm7caXeAsF03x0zg9b13oOgwB+MIhmOuOmL61Y=;
	h=To:Subject:From:Date:From;
	b=UNpDEjR/SHQIlbeLgq9Yuokb6+vmtfxR2LLcqekQo8FOV/NUf4C7Ul2WdIFS17Fwi
	 eSi+2qVjdG1PN4/NEu8FksNmn6XhUzSCbHT+vfJ3sa9C775KmAx0UXx49/9V2uVjh/
	 wmf9T2oaYpJm+QjI8Cm3pJq6NVeKE73YPRBj/XnHv8VXf0VPgyEM36foVLqBfHxn3b
	 xEC+x02aiF/Ic/hqeEYXhJ1JqMuZX+52XbYJHXFpbRdQYmqJNCUWGHqTKOrq7/P60v
	 DeEka5pXpfplOqZW0NTcLLgrUSn9m7y0WiCPcf6lDQJqHzsXk4+eYH/qPb+Ub+40q0
	 YCWbx8l+HiieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDAECA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698959357.29087.5454122829493998845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29535d215b712995aa9c80ccb3e9f9d7346886727a40f7fe36aeef81200fda61
Date: Thu, 04 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756989593
