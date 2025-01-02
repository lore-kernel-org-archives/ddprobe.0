Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B37C15C0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735799154; cv=none; b=mKB+FA1KwP931zwKpvx7fglGXVyqKVYERJ8mdZ+ZUKoycESY6l8WAUK/HMQJqHO409/lTAKXNO/s8/mW+spE3V16VwsHK3PP7pBjMS8OYukAbgFvbgZZn8YZNJavlpqmCV8l2c+gP0q9PGmH/GnKzJaNGSpT2zCCnO9XdDO81a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735799154; c=relaxed/simple;
	bh=9MRWScIHcZ6F/QfjRSDHs5zaXeojF7jgtURWuK34vFc=;
	h=To:Subject:From:Message-Id:Date; b=NdcX+ZBa2V0B1YYg0wD4Ak75ESHZgDF6NsA6zvVZYl8j1+aBK2W5veHefZUhbhm/5t8YvVgUmDtcQWOsy/+/H8b0hb090/eup3MS1OWPQpcfDsedRkaCqJ7TqpIM2MTNE8OqfKud1IfRgg3ChsSYQ99Zx9QuqdRIB/IsLqvCmtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elqMQtqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elqMQtqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC292C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735799153;
	bh=9MRWScIHcZ6F/QfjRSDHs5zaXeojF7jgtURWuK34vFc=;
	h=To:Subject:From:Date:From;
	b=elqMQtqQPpGrUHHdIB4ALZzpvaSEGVZY7ayFqa2ithmadGMeLNZxNgU9bFUPzUiUE
	 1EffLflOH4Y5O9QWn3QZ3fmqg0WsJkD0i9J2C/oUE8vOXSdH54XqDG8TU86AHnSur9
	 RdKuzTMX+wLcwQPPjhc7+PIx2MiqZrAjyFsM0Fpe1XLyVt5sS6IppsBEH1uOLsjOgk
	 +Sd/ugBcwVvXRfsgkXwxRoLmT4nawgk8cAgs4KB/3mHgmQhyrhcRwbZFUIvoJvdxjY
	 eM3Jf6Z5/0Y0MWQ6GgCsbHIsps7nuqGyFE1tTDtQxlWrU/T8TljD7VEmMfJv38v7Z2
	 WXAIxJRUlYQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9BE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579915360.4142.10259086626209384989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ac1158ad11cb4f74322888f90b0ba372a2702e0b1173e29987102786efe8e1
Date: Thu, 02 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735799153
