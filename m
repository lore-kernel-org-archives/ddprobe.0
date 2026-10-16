Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C849371D01
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792153234; cv=none; b=uvZ6ifwzMctTTDCzaxe4A1jRts9flHh3t6gif+OzDSGihJXiwwDiInpMql81xEogGLSL//faLVNxwj3UsPSlhUyyXXXhwzqcJKqhQT7ivBN9nWN66/5dbl3shtz9xCY8CakkKx/9bMsrmg7pIq5h7BRWZybRsJmiu+av5UDGk40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792153234; c=relaxed/simple;
	bh=IITeoyvMm0mSSTThkegcOGgrUsZcMv7sqau1YwD5gxE=;
	h=To:Subject:From:Message-Id:Date; b=pJuUW1oOalkjWuHkU24gcufS+AxylFJFhnw0ZN/DnmaYqrq0OxfgLC/L7fl4JdL6WUZEfDNuVVigpkC180kKXjKBqhHrqxnHdjYdxvP4ZrADKKue+1Uc/D7Ke+BPUJ4NusBL59oD5Bp7rccxfmFoiEQpZBT5mvn10H9gCcqqReg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNk2B4o6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNk2B4o6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0496C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792153233;
	bh=IITeoyvMm0mSSTThkegcOGgrUsZcMv7sqau1YwD5gxE=;
	h=To:Subject:From:Date:From;
	b=QNk2B4o6TFClgbZmS1d9L4gKPetBUFLCI0zrjyiMUaPzDhCYytzliOr4OLzfGbJKG
	 va/SN+/YA2ddY/iMgsWiaxmuk7LJFHFYt6Q59lsnVcbuHK7Nv+exGNF1v9ILPWEk/6
	 muo0cJdTcbLJniHRVv369Pje8maN0k0ZsC/czNFmO7nkgD5ndIADLsFPe7+YTUUP9K
	 iWhc6k2EV47kaGlJPKE7mq1R9MxsTVtiY0Y9mP0U39AYgLx86V4gxTMP0ICdIpFI5z
	 dWlNH234dPgpacR8foYy8vaulazQKu2f0gLVLbdGhrad/nYwADfnr2JlLEgpCkuI6a
	 ajYKmubwQtIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF45CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215323369.12347.1534879154951857238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c2961d59e7a52b962cbd0f364949c1db0594484fbf2c95a1571ab2bbecda0c
Date: Fri, 16 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792153233
