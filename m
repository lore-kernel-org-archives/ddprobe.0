Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753192C21F4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787210434; cv=none; b=qMqmTHB2+j0MNTwGwZTTouD+60FskqQ3BqH55QxqRu2wx3Mi5U3NLbxtR6+g+6aymd9zXCn7zCQe65ny42hMSw544YiN8CAxh5ndMiXKkQQH972zCRlWqSRhRE8GCBADRNzqFtc9e+e38BWoXtWGhb5Hf+t90Oqlsi2wscU9Zng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787210434; c=relaxed/simple;
	bh=/33ovpK/8QnpuXP0I30/Sds37KO2pW9Hb48eWcy1i80=;
	h=To:Subject:From:Message-Id:Date; b=bDC0wVr9YzvlErYhjsOGG59Du+1dDykd72bn/kdDsEGBtaUiLx8hj+dnsodqhDSjVXB7w8DXhXqlrIoVMV8VcOZdKqruUE7EBaxK/K3FHbywRIXR+94csXJVmTnw+TAulm23qV49PKxGOjDs7vgS9AToH4GIDe9cWHjrtN9j9ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj7yWjSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj7yWjSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8A5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787210433;
	bh=/33ovpK/8QnpuXP0I30/Sds37KO2pW9Hb48eWcy1i80=;
	h=To:Subject:From:Date:From;
	b=Bj7yWjSz2eI7UheIWgthUX97UNqQyLBa2DDM6URRj/j41d9bMvdo1K/GKUMfLtLZf
	 DK9IdCBSZUNydoxaQ+DnmF7Yik9iP4SFf7Fys4jJH9xmbzz1GfLmaFp5WW1vU4eCaG
	 w9fRrUbzxlQJ5jsAZg0B/2cPLrhAU65v0BChtehfJ5WdX9VA/kpMeLuv5W8YVFN16O
	 /06tkPys0sdSNDXLjSZ6wMD5lWMSpKyGXuSR6GMcRYVoIObtoY8ch+/QPdoLB46Hxc
	 bi00p+z08YXioOeMwZye851mUe7AcJhPAR0YQeGNHnD6cWaYBrjyVUtZhXZtaa7rIT
	 JYXqtGFC2dPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A4FC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721043370.12453.5074315977097044543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a6280957d06c81decea96f90935be689bf0959c00af0e44bafce9aa5bede5c
Date: Thu, 20 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787210433
