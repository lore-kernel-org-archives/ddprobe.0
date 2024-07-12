Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACC013048F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720826363; cv=none; b=Wc2is/8wnmRmTjYZZTn0qrwoHQx4jUi895kTLOn8XJ4Pu+JpzW9HiYtvGaqCDtWgD32tbMBJu8B5stUHaBnuL2HgH9OU35fZleLVkCbhNVDkFB30oc3JgP80gK544aY5YhDfPyQ5gfNnMjWnkDiKaFc9LY6vug9JjpKUvJ2qz0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720826363; c=relaxed/simple;
	bh=d41419DLeniFTDKrXmlROrFMfT971WKyxTRARZ34+Tg=;
	h=To:Subject:From:Message-Id:Date; b=QJ2PM+tt5i/0/xTzC6uc5pQmD0TkmLs7yI4Xo/vAupUEdtf8/plal6VbNSgYnrnYJbgU8la0lDlxbdrfxcsfYMgMhWPhRV9+MkNDN3yUHwOpmty21qvaxbwhlXyWUupNXljntxjt1X2PaELcAfCuEG9t9YUcLXsNS056re7c8dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWj/ErV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWj/ErV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75D1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720826362;
	bh=d41419DLeniFTDKrXmlROrFMfT971WKyxTRARZ34+Tg=;
	h=To:Subject:From:Date:From;
	b=LWj/ErV8fcSHjl2pOR4qrNt5heni0KkUfZJeAKOnM7k0yEhKKHbH2vlslkIj1JbHf
	 m3HqAlQPA7KykdYjH2/odtWCPNAbcvBd/g2jnrrlCEXOENUWM66t77wyfI+TM2CCbe
	 aiTxmHv//Q19xE0me8c5+ZFUb6YVzuNVjxbJMlwIwjtpQuaEmjEFSg4njbX6zis7vX
	 RKkZ3Y3RdytmDGA7OHFO3Ut4OWCDs1dM1Tl98vrDGBWQEKhnGkryaHYs3Wtn2O8sRO
	 ViXN+JxFvF0a017B6z9NYBuxbVwnzcSuuK098XrCpqIF30HdjpNo/0CSKGOAUxnC9H
	 tZJueSzCrsU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE6BC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082636277.24147.14324064907409743728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8208561d8f54c0b9fb822a04098306e74ed271f5e8745b3d96288102518f47
Date: Fri, 12 Jul 2024 23:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720826362
