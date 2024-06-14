Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747092F2D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718327303; cv=none; b=C1UgtmwG6HvhYPmLLSEsGhWkR6GyWvWT1Rsy28emMZBKthbJJU0IohLAHtFHKclXHUEwn4FflobvpvV4nG6FdVA2M4+f4ReticO7jiBdiUAinrjG+Yq4HXM6l05mk6tKQc4WYInNqWGkL3e81YyErRJrsopC/DEPTOF64jvX6Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718327303; c=relaxed/simple;
	bh=/BzqPMm4FIFwO0I1ndNW/TbnzHRB55ttddIKBHflqhM=;
	h=To:Subject:From:Message-Id:Date; b=Bre0r6olYogkWAIv4aNg4oftOSP3KY49a6F4SJtoslgDDF9eue4406quAxgAQlY35CLYYRVEH6qNVhvJuPLs3k1KsRriQJQwH4hfQTcRRcOQlkMtNXpsExzind5QuQXYHEP5zJLGJKVnb0d6CZqO1YOGpIDMbgRrFcpkNTZjNUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPbz6jRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPbz6jRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEE9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718327302;
	bh=/BzqPMm4FIFwO0I1ndNW/TbnzHRB55ttddIKBHflqhM=;
	h=To:Subject:From:Date:From;
	b=JPbz6jRWVKQdnkPb3yd0je0fyQFySdOq6H82qpTK74Fy6natV/34H4NMr/p7WCzUx
	 pmx5gB7Wn9y+ocEMDegpmE6uX4t1lJqkcZmJ9I28917barv+4I3KwHADVI9brDmPk8
	 5oC+JPV0VkxHgwXFHfGlTitFSMb9eswgNRPn6yddny2lmkmS68x126ZcSy63v8VfPW
	 iQhU/wGUwx5DIjyiqRh4EqTXAUomsQjKxNi5aElOgFRmBk0FoLseGK3aT7iHWSFtSy
	 nlqGwidc6wrOxETieEehDN5eimWgI4RxbYspx3xATQVat4HuxhMXA05Bph+ColCK4F
	 N+TwPWZZC0tIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADC3C27C75
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832730282.3119.16325076071429986619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf1b94883daf586ef52abe1ab3d195d7fb6bc38cb109497c5e0f0cf8381685b
Date: Fri, 14 Jun 2024 01:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718327302
