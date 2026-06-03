Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7B94D90D8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780526074; cv=none; b=ZwOT6r51mXRwBWKVIaJiCPwABwnym//eAPOcqGbF/8f0/0L/SYjbpcQP0xNgA6BL48dOHY9WVlvpfoLs80q8ZWpSKynw3ilX8eTE8Do1seKWHPm2KfnTz5VDIdVJeh7VFGM7QHNp8RjJG0Kvi4DWlYb7H8JMr32EVOow9rSsa0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780526074; c=relaxed/simple;
	bh=79gzYyBHCn5pxJR3p4RAVKzLWYAnjqOAyh8QJnhnVKU=;
	h=To:Subject:From:Message-Id:Date; b=fwjsS6XWIBdti0tnxJnOauwnTcu7DfW5NJ+JDkw4Z7GzMlk5xaftRNAeZtr7wcCOJPu80wSbMC6SOpnGdYKRIns2iVKuiH9HC/gAI6IDYiKVAb4aMudwOlnG8gBxYeFp24arsmkDhGNTl6XtiXJzkwEhCEQYf2tBoKMdURyf3v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrtE/FNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrtE/FNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7707C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780526073;
	bh=79gzYyBHCn5pxJR3p4RAVKzLWYAnjqOAyh8QJnhnVKU=;
	h=To:Subject:From:Date:From;
	b=BrtE/FNmg9kjKzZY5I5izC/DFlyaWAaeO98VdKHDbGi+dpI7mSHSQ8bN4+U8vxyrR
	 MjyMus0miIm97k4nJyw2nJYflWSvkGzI7Nf6hdmQhrXEJHYvzZwpcWdZz6ksdg3sQH
	 W4vmRGoUUQz0nBUQ0vpKXM58p2/CmxHJCo0mTPSDbaQwL6AZsi54i7AUVgal2RUGmB
	 zzktTrF3AGj8AzkA51DbwwZrxR5ba7yJ/9mqcJjRqsNy/nSr6Wtx3rzmVCjPjSzRQB
	 7BMHVcQfQHizUXFsYgNyb0hYaESVlMuO9EFAmo6QUQyaVFsj+FSwZWrqqpdCdQdngO
	 AvxfP8jxe9Vqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB54ACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052607369.6789.4872018971412841793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c0aa19c44869cfc77559441b473c40dfbe9b5d406690268c8ee9175c24c0c0
Date: Wed, 03 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780526073
