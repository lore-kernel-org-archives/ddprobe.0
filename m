Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3E3D553
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705951697; cv=none; b=XNpEvcY3MRBn/+MXEZyy9dLo/Ow/kAPwPGLsqSW7MZTJHoqUxWBdb0tHcbR6BT2p7fql8zEUFqzMbiuGYKf4aK16vHM+ftBctHI3TMTS2GcLQcJaDyMMgISzXeIXqd8l2g2SfLR4GevD+xEoSVWJYHP+GWRVUAbgy/EfNkmJu/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705951697; c=relaxed/simple;
	bh=c2FDSSAvTi6cQ23tasbkvgMbu81yb00hX4HMyIViP4w=;
	h=To:Subject:From:Message-Id:Date; b=cSPyiB2tn1MWk5OMKgrDEKdIdL5ggKDb3L+j8zK89KXEwBGojTR80eeJhoDsNywkR5cqVHlzDJIaNloUeXvIqS9Qr4cu00BagHGL1aONODWXnBEZs8FvTBSreoUBD1o/ANVwt9Na3OdKGv8dlKE6wHkhuLIdt6b1feGWIAt4lnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edAEMdN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edAEMdN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A9DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705951696;
	bh=c2FDSSAvTi6cQ23tasbkvgMbu81yb00hX4HMyIViP4w=;
	h=To:Subject:From:Date:From;
	b=edAEMdN/1UG4cCISRlnGoC1hWRXGP3s6GKBWkFGu7IGUhoHGJq/X9YQJ5md59sUij
	 cb8YPAIEbiGUa//H6hn1T8MG1BZU4JrnhCkC2DkNIHgGkEhpkQ/sZbl/Us4xwjgSlg
	 rBs3oqZ5xtJZlbVonMImA0yQ2UrOtJpTHr0952BT51ddZTZJ3i99s6c1EBIUJXBXe1
	 xMhreh9T1xYOXH6yAR8sFWLHbhpWJOqEhL+O1xCRIvkjj6niPap+ROdwSOrkw5CBcj
	 xikN65piCH8ORBJdJPm6w9Y834hvZM7nR4tLeRjHIRxOJ/TlIFEaLY1Vg1TAe77D2c
	 avDnfyH+yU2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F718C47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170595169637.10828.9691976394878374114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09169787c592ae8738fd33923d258b6d703dae72f4f8d92e8f825b9fc0b38ed2
Date: Mon, 22 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705951696
