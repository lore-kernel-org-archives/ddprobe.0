Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8AA2AEFE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741606735; cv=none; b=dhBc85z1NAZBQZVcdRNrcpODepKkGt2ZQdsy6oxvbfqA4pAGMKXWOPTvlx9bTLip1KknTp2hLbPpfCBMx6uIET1ypmKOhz2Jm5FP9eOWC28V3jcYWvXohm1dzKupMlpEGrBz6BINR9AiIXcJ9My0/gbckcwFKOcYN06JZiigBOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741606735; c=relaxed/simple;
	bh=QMrejSbOSBthQFHKy58BZstPMX3isg4WqZ8a9Hajao4=;
	h=To:Subject:From:Message-Id:Date; b=WVgfA/tGavTC343cJ4NyAddfQR9sMt1iznD3rvAk0P9wAZdQaL/Z44TJLIiiD0cKNkYWIyKHrO7YXzLXLlgq3g/axQC6mmORl6FkOrqW65BYnEciyQrtj2MXQ1m/gwq9IN7C5kbN0FYmOHQDw5reU4oFQOde6Onc3+iws9LnoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6xCh+26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6xCh+26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7DC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741606733;
	bh=QMrejSbOSBthQFHKy58BZstPMX3isg4WqZ8a9Hajao4=;
	h=To:Subject:From:Date:From;
	b=S6xCh+26gTiFCtjimbxrvprm7OfN944eyprZL2zZpQQd9YwLS18juUPaJ802h4RsR
	 62LO0sA+86i5kv4nMVjHXin8qEeYc/SrUrmcQq99wzVqTNnbxWln58LGVz25oQ8jf9
	 LQfjXjIDYKuAeM6VuiwymMFiBFjkWzhznZwO+EVd3k7bb97h9z+9FaqAvrhHIqT8ci
	 jpBa0HCKIzzahnJQWvNqD+rEGwAKW4i+eAhpInGyhqMKY7iEJG5dxDOWfQ8jtBqQB0
	 fQUdNcT4HprVhbICEGC+CB0X1pXEbDVRShCv+UxbBNK+SgdcgzlUd+MZEps1FVv8Ld
	 /T/Cl6MFNPbrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9345FC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160673359.19390.880192169654508730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c496fab6d1992dc5801a16023900c0644bd9d7a925052b4ad1f78c3a4fc1671e
Date: Mon, 10 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741606733
