Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9FD366DC5
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768584234; cv=none; b=phX27R/M9jefUCXLfHizPUTCiBPgW6o1Cg1NUTcQraU97u5P9l1ZQxCdlvuR3a6yFTWcMRVIlodd5YWxZ8Fb9W9XO3wg7zpWi2dMtXS3FRdlilxIn+a90/qwzofF0dtstj/g6JUiSER1zP/uTZIowk1Tq5aFb4QeRNYUux2Mj/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768584234; c=relaxed/simple;
	bh=r9eBOrMXSR7oHSZlzd/B+wxELjSke91t7H7oiBxS62M=;
	h=To:Subject:From:Message-Id:Date; b=UW1bGgkDx083/7UkrcwPL/0SI7a6koBsvk94RTAR3QN2XlZ6NTdVE5rtlimKYvuLvwT5E59odYzh1CULL1RfW6P8nJtcjGrS4UCC80/Oe7Ur/E/qJ/GIdZ9OUqiQh4UOkpemoOReNV8lKRAhg3M6T3mbYClbt7497vsQDZaeR7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l23WKQOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l23WKQOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0765C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768584233;
	bh=r9eBOrMXSR7oHSZlzd/B+wxELjSke91t7H7oiBxS62M=;
	h=To:Subject:From:Date:From;
	b=l23WKQOJJQ1X3hfBDqv1XkOmizbflknGyp73fzOIDJk+Vx9mgLcHbuF6ncTaTK7g5
	 ruoWVC7x5dZtP0Ooj6JacEcwYh6Dsd24zg0Nvtw/pxlosJNmNY9NbjXtpYlKcBa+oV
	 lp13r6rxJNBIQgTnx7lo1yX8QcKUV5/1l/TXQBuzc4w4iI+36L5XEMxE1GLo9CWOao
	 l/cNTJrsdpUQrzcgJS515fql+GG8EejO9jErDYLNpT7YEQKeI7h8gLJl0kShvb/sYH
	 4Mgu1j0lDfvY1xo24bd6g+AAELsADONsvsRPLwzQ1e92fj5oPzPaeAwFjeta0pQdRQ
	 RxyDu+XawdnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA38C982DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858423358.6878.6702794400991619103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe1384828576e2060cef1eacba07552c87da030ec5641dc07ed298f2c295904
Date: Fri, 16 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768584233
