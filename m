Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E4857C9F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788063034; cv=none; b=bzgEfxzI6mzkH6f5Zn9WJogzPAUApk3O+58j7jCYko1CrjsS/Udh4cCq+kghFL70S1gCQVXJG+1yU448cbdqUz0AYU76p4oKITBotGG8pXEt8ItiFXWTcq2FagMr+/0QQf39mIJwtAvqI7upP7O0G8VeJIRdEvqhJZ+a0g/s7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788063034; c=relaxed/simple;
	bh=flIPF8RRVmza6optEuXLiakEIMPYe9jitj73sp5JLx8=;
	h=To:Subject:From:Message-Id:Date; b=OQObf3vXzNCtRB62lJF0DRuYm5qiLuGcBrtvuZ7z1b2vO8pVKPAh4kWxJ6XM4UYb9fpkzaCurEOB8bc346xOyhsMJEMw935ZMU1MyZGsmdg25OMYKEw3XaFANCS+ZYF/cBiBGsbbMM6MP3UIFXRVpMsyWw/Mg6x3eGnEhWN6ieY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLt6FqUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLt6FqUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A72C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788063033;
	bh=flIPF8RRVmza6optEuXLiakEIMPYe9jitj73sp5JLx8=;
	h=To:Subject:From:Date:From;
	b=oLt6FqUJxRDShvwHVBOzGf6TmFCYyux+LAHLlc/gN8JTvJkDSKQ8whoeYIx+J7X7N
	 Kcal1oADtNmunL/dj9P7UU+l2inC5kFFPa7SLFk1lJVE9rX38okhky5B1j2dJJSua5
	 4B2InZjNvusWTvemPuqUIuybw+Xzvu1nN39ApOSql9M7hVN9mTEUcssREqrTR/WveP
	 /wDU9wmdj9WlaH5Rh0zJJf3F5OFUYU5NkJn/CdUzstGYXHTLXlO4UMlvxohXXbEMA3
	 dNuO8a2CtiylPv3dcEOerwQ3r3VjdBjCAGixAqqwqu3bL89AuMK0604GABLQO9sbaP
	 Kvh53lXaOk7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFEEC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806303368.8267.6076669961306716992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a4a0ac1764e5d754445ba349dcc2995866388572c408169136572e665be470
Date: Sun, 30 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788063033
