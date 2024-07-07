Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DDB1C2A8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720358183; cv=none; b=lT6u//pHtwK+O8MeU+bXov+Sqjs7vN4iUS1ldYhCBaQcA6gnTaS5qy2qJkJELpfuPqpgghz054CpjKFPWlBjIGFI7vg1tspv4TW/lMqM0bJwIqi2vZ13oix0ttNyOVb7EWChzmTMxqGroea0/8yna0oqwHbo5IUZex4ljitSZZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720358183; c=relaxed/simple;
	bh=9V7jRIvM/VYZKZk7IEqdlMB0kJ2AnGJzlOV9o8zCuv0=;
	h=To:Subject:From:Message-Id:Date; b=oziRHAUIjzg2Kr01cXuBqSUL19LA6sSS7HMJZSLvUinow4shp2bdSFhh5R9ivSgqXIWtMj77n3rcuF4AFHgm5pn4JmRjf2aktWj3Ll1vauW1BVxHAZ9AofFqfuQBDIkGWrVXKQgN4aiFCAq7rOMcoVBLUTYKYDDsnIW23h2EFN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElugKS9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElugKS9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AA5C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720358182;
	bh=9V7jRIvM/VYZKZk7IEqdlMB0kJ2AnGJzlOV9o8zCuv0=;
	h=To:Subject:From:Date:From;
	b=ElugKS9ip09u2ABF/C0yniG08dqndo+HAcyRIusy8ZrfWjB6ZCmkMxxYrobIo5PEP
	 JI6ts33TuIzQD1CMg5bjQWTElqGmoAjuDsKrLD9EX7JyYoKFLGM9xiyhhk+ae29ZmC
	 VKUepjWuRQkV6VpszKev55rbFZ2iXcRkmukWG9zsE8eE69cLRIWWA29HOREOQyvcEw
	 /djEg1pIm+3aoaYRI0JsBjinDg8ty25bghbB3s4JmIzOBDn11TGJJETlVh4MTOZeHE
	 6v9Qdfmv+Lb6MxdTvIofayJ/92k1nRFkKCsOp0Ql9qvkXxbrk+Va6E2u3eMB/QDM7O
	 9S9S2BgaM/QLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0669C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035818275.27464.13449050354613686791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa5f30df4061cd22c6aa71afea952895366ed6ddd697fe4619ee70a07712bef
Date: Sun, 07 Jul 2024 13:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720358182
