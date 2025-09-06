Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10762315D3C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757120994; cv=none; b=aaMoa20dvK3jqnJXdzbxnzzBd292TOaF3/UpTKok2MiC6376AQj9Zt+m8ePBZRMoPlnF8pp4eOiqRI7Mb1LmjnH+ZiFOoCOnbALvb52jYMEVC5Lo5tLdGbBt+jD2/6LR+HNB5CVVATh4AL98Pj3pG2N9hePUJoNwIv2R+APXNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757120994; c=relaxed/simple;
	bh=qH8/oXboauO9R8gIEC7vLjx32rv/mJHbh8EeJzTOKJQ=;
	h=To:Subject:From:Message-Id:Date; b=KxXXmge5ojuqhh5/EeCsxjfU/5tk+IVBL9lDyi4Yq7gemGIDYNWA3+36JEKMetyT+i3Ik8JMqF4D0cPda8S8//k/SsOBM4y3eMJ9W0GfdzLQ8xinjB5cmzLpc55GHwIQZeEe62MiUkV5tTSHez2tN+P1IXn6ACXmlzv+y5sYPXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3wMZigd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3wMZigd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757120993;
	bh=qH8/oXboauO9R8gIEC7vLjx32rv/mJHbh8EeJzTOKJQ=;
	h=To:Subject:From:Date:From;
	b=M3wMZigdD/LY5YkZzWFDn/rVlPPCBdjDwrK964enU4zrmeKrA+W4R8g090Lu/4L7+
	 e0helrL4H6qZaG9NGjovvTPS323g2B5M6sC7fgQ3TVuksttuaOMetBlASkOfSyBIRZ
	 o4+2N2kc3kCp6bjbkGDfM6KMAlB2ocCmYi8407vnWbwxHTMBTH/HEwtPjemmwxCXa1
	 +CoDQFujfgQ+EpQYrdKsbDOpyDUB78xXXJCXI5A3ZsVgBZGHjgDoYhLAeUMh544suc
	 biHaYQ6KB862cwFuisRB3TL11U7uV57+siW9l2ubyc0+IiqjoUOMnQ0kF21oF5rnvr
	 KCD1gGs6CJhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C4CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712099358.26572.14690248828599372464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb2e03a0d03a6026518f5e54429d6bdf66b9d0e4a7b098c63e560803c140928
Date: Sat, 06 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757120993
