Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27208340A6F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778587234; cv=none; b=eoDgXEEj2OLMNjGwY373jS1ZY82AP9Wez2vtGXurf+6FD2N4DRnlMWQkfKxG3wCUhIxDjx5hgAdZpqHQKGOES9cQn+bU/+kTnR/qF3mBlBAJGcDvg+7Jvq9G2rvIPW7cyrr6g0ealS1p/2xC5BaG8JXcwHnmsDa5OWEXyrP1v0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778587234; c=relaxed/simple;
	bh=1/6nux2QWncW0rsaMsWCKyv4qF8Wf8ucYGonWIYEV38=;
	h=To:Subject:From:Message-Id:Date; b=VVcYKGggypXvTC23x/CVfcoveOX1+K50BKJYV1xoD8Skx/9Uy8+1zUfF5badT4orHMhg67bDVh9VWuR3/GZivuWytzDdGxlVK8DiXhqddppfM6xR+NlEC4uCz3OG7IaBLw7yoQjS5mcpJAn93m3IOrPubSDkTfNIYL/ml53G1U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+HgcXY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+HgcXY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93D9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778587233;
	bh=1/6nux2QWncW0rsaMsWCKyv4qF8Wf8ucYGonWIYEV38=;
	h=To:Subject:From:Date:From;
	b=a+HgcXY3+MVH8KvUsnj3tZlmxxhmS7RTgH8yleaY2L/z9reYocwyoXTXprD/H8A8L
	 7fWFn7+qh4gzg40zBPu7CWXegLQf5ok7NHBlT3NCEVbYKI8EWM0TwNlIw9mMYHAXCL
	 dloz4tA9abCxxgiSia/SzGff2XAEgCiMwF8OxACFR+aitiwwonuxQ1LT7e7D22FsOl
	 KKVR058rmmSYa8h3u/ifKpiNZYWgHwq08Pa6K24Cy8xup515k8M2lCYWkAMgISpRhZ
	 nOCUnL5SOt20ufG1c+vUY83oVQQrzdD979WEcTCQDc7XNX7uIBgYOu2+zaV0+9ziWX
	 t/dMSqgz1yKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA2CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858723368.18264.6642008005145700689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7219290e824d48ccfc10b3fd409ad5b83e1635b55fd16afd569d1fcae8999536
Date: Tue, 12 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778587233
