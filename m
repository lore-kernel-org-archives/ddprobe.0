Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB072846F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738786553; cv=none; b=AlZ/POOlLGoWepxt1088+rmypwM99+zjoTVDx3eCZAX+CbeCQh+bKFfYPUv8rwlzvqGznRnhja2sFbsvaeunqcaSZoL2UuHqqMZsNqn4g+u1ayw/CY4Jofas77KDiAkjOnWlKMDhTrzjDetbZZBss9wM5shlwp067GE6IIoxNos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738786553; c=relaxed/simple;
	bh=64IkUyZRj5Bqxuq6hCeuS0X4Tvegjh2zX/wLeHhuO/o=;
	h=To:Subject:From:Message-Id:Date; b=PPTrtk5I1K98zj9FU9iZr4MsT4SYTyH2yvF7O7uItWbEcYEr8LpnzOz+rEsGCj0yRbAUN8CNNctMmR9YfOHkvTsW43rT/5AsQudZcSaR5fn4lAkeeuJQvlaNuLgdwEpy6+igAf7pcbZ15wgvtn2Gegx/t+8A41ozKhmOkQqcHWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzzbJSKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzzbJSKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17BDC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738786553;
	bh=64IkUyZRj5Bqxuq6hCeuS0X4Tvegjh2zX/wLeHhuO/o=;
	h=To:Subject:From:Date:From;
	b=OzzbJSKMdDQ+6bfEngk5YuQnnvuYCjSHOKK3L8OyH8wzCY1Ix6rHKbH+j0nwIKxD8
	 7FALFyu7ONwpWiRU6+xm/TMi6QpRVgsg9N3Wnb/mvMZufK8HZS0nlzZBzDnDetJuNZ
	 G3syrF8tK0Gxsyrk2HXobVq2//BO8yYSij1jLdiKRXWFg7YiLawj0VH5VculcfuOO3
	 XdilqjJ0KYwpO6q1txKQy9Y6+rYWrBU9MhzT2CsMFew9H58GL2xxymJ9jHbYE81kAJ
	 N1FaCppoua5BUeE0nLksmhvdWNrJ0MljDu303Sr+BpJjEygKZXjfRGa5kt7EmIgZpf
	 ZVMcVMOlF7UQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09D2C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878655364.11449.17211144432606019718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db6a90acc74deee97ae14daca06ec3d85a730cc9d0fadd4f7c9494ee447be56
Date: Wed, 05 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738786553
