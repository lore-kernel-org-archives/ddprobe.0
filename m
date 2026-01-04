Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7E8305E21
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767533034; cv=none; b=SPLolSr8Hl0rM0YHYs/7n129pgpKwtYgJtphk5etcXnb9vaMmkOkzMxAnOJ6b/E77jUvQFfdnqK1XvbHEWmHTlIBQj+bRuOXU/OOy7fIun86/17syZQM6bD0zV2Vuj3BEyTLjCvG0p4sjIhA3Cid9NXqgrDY+AmjgbQ7/PcBfhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767533034; c=relaxed/simple;
	bh=9/8J5o7a4oYGEImFLEsXTMEGLZXQ+dVs3l14gzV+Acw=;
	h=To:Subject:From:Message-Id:Date; b=U8XBf54/OlW9JvvJMrgWNPUw6GLvjQ+kmGnHyUiPzRNJKYmcFhxKl/LrhO0JGEaLMI7BmscO+txrN3cfugF41w1lq00eAd/Trc9dMuQ3gAVP8vHBLL1ISV1/LUa/uJYakHO/Wd7Qbi2cs8IKWDtnddBQgts5inxVXJfkVHkOzA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGzafU9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGzafU9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767533033;
	bh=9/8J5o7a4oYGEImFLEsXTMEGLZXQ+dVs3l14gzV+Acw=;
	h=To:Subject:From:Date:From;
	b=SGzafU9BtTSgIkpwKegJiHku30R3+jDMbOsrj+LNyhNM79dK4IXD6Fv59W5l6GitS
	 gxF7do4U+LN6ZbkorD9sSc0dAdDHgYo3L0HkmXXGdA5HHI520wUwpngRpSUoS63pNg
	 JM0vjUkUt9BPaIASulhiudtNi5eXVAmgSOuzAQVpheujo0N2fdlTWp//ZqyNKoolZ4
	 YjFXq1cPp9Oo1DBwthz01HgR4UpaiFr6ABnoP42QEtOsQP7rI6cxaReVWQiuPgk2kr
	 WCpgPFGnYwNImIhFjNOTYJhB2khGSa74Hy3CbgpGiPQOSz+wARi+StAu6s9LMHJ1kV
	 W7ydViUcvWwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE05C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753303357.5269.555765530789781808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a217b1ae6f84a9e82604cc98f28bcf86fbd3b75130db99e8ae16ba8ae9aafff2
Date: Sun, 04 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767533033
