Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A76E349AE0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769682834; cv=none; b=o51FqQyRjoEid4GvOhueocKMa9qUF8TsuGk9ryBFL6v8K+ej55G2cnfev5j3FXHFvC7MlfituWQfOEY0h4adQeuXciYLrk2GeGNFEaX1jfYEUvUrMdJq+Ec1yabvBFvoe2q8rRnhMxU6ajJ34mUZMwfGvRewdV7dagtMQbnAeQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769682834; c=relaxed/simple;
	bh=FRok0GKsiGIte/msdK68SC24sqo7BQK2ZEsR0WeHAVo=;
	h=To:Subject:From:Message-Id:Date; b=dQlo3IephGUbVSDzHd1xTJfKK7zD3JedBsleqWVb0Yp22gtDkpR7Bzd9hlA8jad29YS841pXs4gECN19JvZ4iJnWbBYI85f5N0u8Nt2iIaL3C1gP7V7DBltdxgveEAa9sfaP5nEfxm642wNUYO3GXHc/tnIr4bD6UqYil4jZ/Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io+8ZQQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io+8ZQQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2BC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769682833;
	bh=FRok0GKsiGIte/msdK68SC24sqo7BQK2ZEsR0WeHAVo=;
	h=To:Subject:From:Date:From;
	b=Io+8ZQQPk118vel+Yiho7jLws/ak24pD+hQyeWAxqaZF98GB0zpBv66R7+dH8AV6G
	 xr/oCerJDR/pm+R3DHFu8xJrPYYBLezcXFnB2I4fjitnH2ilefVrxExcnUXEb4s5SB
	 I4u3ZnnGXSN9HU4FSP0RCplVC74eZLu/sbHVYYrN5McxKHaYqPgTuoS3MSiQiikwjF
	 6RTVoLHVNwOhN+mi+KZNkG3m0JIiVSkHPg3c/PD3DqO/nUEdUtYpgpn7WaGJVprIVU
	 pGY+UTSzOY6X4UDPo3JsIKLhYWjMgxlkvcxL0sBBfkNZtg/jZCYFHIxz9kxQmxgZ7c
	 XwWG4K8G1XeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FDD358F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968283360.12445.3155457467852584811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f100d6433f174e98ed3ece675ff52b5db1531bf621ea1a3ee1af65e050f584
Date: Thu, 29 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769682833
