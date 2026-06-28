Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C3C16132A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782606514; cv=none; b=bCcXEswDcKHwGjhZkBLF5kZWN0zsZJ5yxbFYlJC6kcE+EqX1s2aAgd+mdNfhKKP2cuX1EyVSsa6kJM+yN6OC7oPTWu/NSIGZzdUmuW0uom2pnAtcipbhqYvbY5aAszXAnod+dkBMu7AUpYKSIvr4p5eXiwF6qEbzZam7Bz5xsDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782606514; c=relaxed/simple;
	bh=C4aNiJxQgAwhY3kJEB7rXyXBWkrgCFzjVIj+WHse4/k=;
	h=To:Subject:From:Message-Id:Date; b=ctrMxKDVIRFMHmnB8Psgozo6C1xGeJR7PGxQR0EPvd34dYIEdxxXJ/amvW5rKb6C2XPWuojDKfCe3d36kGOEZZ3dZjpzRYS5AomZ+eWJeSTqSMbLI3tvtNBXjxee8IFNbb6zceXzL3id9iITvmlLFBDiNEtRGD5qnHASFBRim5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUq95FsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUq95FsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA44C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782606513;
	bh=C4aNiJxQgAwhY3kJEB7rXyXBWkrgCFzjVIj+WHse4/k=;
	h=To:Subject:From:Date:From;
	b=JUq95FsOrPCEmnKAkfrFpWrUv0V2hXeZ/x/ouMnndeO+3bGaBCL75V22fpy41k2tI
	 Jr5+Y7jfmU47Rzb+9zJXTmi2GyyEy/+FH+QJpDzmIDRBCxawWKNGHVe+iTtD2j3D/7
	 DkUlsUt0O+fEvQRVUO4OsNu/6k9PTJ8Gj7UEj5sNjs+zTowxDC9pf/gOIKVKu6xReY
	 vhwiN0A00R4Lj4sNjth9G5gTw9zdowWnLv5lDnPtZJ+uOllb4NyjOlX0M+s8msXG6H
	 BkvsNnLGYjGmrhqE2JWPc4sfcSTtAIzXpsWV1Y4fjkNC3jS9nT1hCEywkfFyrujZVi
	 jZFsbawsNCUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A50C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260651375.4024.11403207040158305954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784fe3bc75f1af3a2ca0ae257013a35bbbda99871e79ffb8f5b4ed1903ae7845
Date: Sun, 28 Jun 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782606513
