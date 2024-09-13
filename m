Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CA71A08AF
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726194954; cv=none; b=YwGwfYTAonu0gUhE41OMPpN0rR/obnzOPu87tg0yBIq0iULuzlxIJR9JHwzGiY+MKQoBcsY8jrnOhTXQruofjjkoPI+7ybYin9gpAVdbKZ+GjUn2i1ejYgBYir381XNGMaJMqjUZhntFlxUGqYJTWIr6a39PbkkeQxmZZebI2U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726194954; c=relaxed/simple;
	bh=6C39FacI7pWe0dND9JgDagdlihysVmSMCBpvk+EFVMI=;
	h=To:Subject:From:Message-Id:Date; b=pVzMaTWdLbxD0uX3KOkOzReV5412UEKw3QczsK3w8uFJummZf2fZjS+UkCwezdpIXWJr5JL3//Nbqr4XxyOF2+6qBEiHKRbt05/HMy7fJp/ysJynmJbPC7JJu1rRiRr+cMtHEhavBj3MqddLeR6Z1aPytyBIFmdmc5PdQW03cGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6JJXOE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6JJXOE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BD7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726194953;
	bh=6C39FacI7pWe0dND9JgDagdlihysVmSMCBpvk+EFVMI=;
	h=To:Subject:From:Date:From;
	b=V6JJXOE823niDQxATzO7YUFlVLA7pFmuVvo6UvBVl0VjJuFjBPvr1xdEGJWtGl6NZ
	 KpCQg/HRdn8Hq7C+2xAtVR5wQ9MAAfmTTNENR47rm/HibGVFLQacXFCHbJVwoIz8y6
	 G43XAGvuCGxO0Ld/621fygBy0ICnzywSeDwuW+wGWSmI6y0sytvSrgGBPocdOEmXKb
	 2+u296v1sBrlHKanr6kQwqlJEiIbTS4DNDkVkgAMHf9XZFNJ7M1ByaTJtdFFK7aIbf
	 hWgUA9BZNXnxTUxwe0qe9rUC0jsr2g0OT/z6/6daATBNIYpdGdOZpFNXbWlodlaW1Y
	 qsk6DL32xauFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93718EEE27F
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619495359.17981.9633307294928183034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f441456bb82608626b8fb415aec7a338dafe09e1e8bc9e603cdea7202627936c
Date: Fri, 13 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726194953
