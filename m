Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E081B174EE9
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712353697; cv=none; b=KBCFWzuTKxMV0Jet8ql+/VaKvBDR59XYSoyV0rpJ7TS/UoNRWiqWumcZjmToBCDuBaZgwLJj3SJmE41Pr80Xtmx3KWohZ/rLt2xRlQVbF1fFumJ+py56LgDR1rVZ3NkhYnUP4SrbrK5vi7HH2DC4J4sYAjs10UqWl9aAe8khvsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712353697; c=relaxed/simple;
	bh=P11yy5rynLLWkHW1FTZ1lQcj3fyT98jYdYUMlygwtKQ=;
	h=To:Subject:From:Message-Id:Date; b=C9nSPAjQrR27sDi9SktwEmmDt7JSQqmZ3CBhfWOwDNOVNfhb4Tg3j2NZdMcfuhmVkOqhjmPDQjgeVmALeFBU5X10B6oQF/Om8Qqf8G2XdIVN5YXfkT+atlfDBLObSoxPWsvT8atehvUveciaFgKD+gzLF5t7lde6gdQ86ru6fgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=surbA9gy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="surbA9gy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72624C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712353696;
	bh=P11yy5rynLLWkHW1FTZ1lQcj3fyT98jYdYUMlygwtKQ=;
	h=To:Subject:From:Date:From;
	b=surbA9gyfk46LKHt192Ri0SHdhgOT9QjpXFjZRagDX11Er3JaoBpnevbw/KkeQwLm
	 o6sPR/u9V8biI+uyR814oG+PCfEZ1YkKigdEmUPce6oUdsZ9YGQZA89XVxn0m3O8OK
	 d5BSaqij55rR7SnkSOPfdEyOPY69b14tOUNmN69LfcwdqxMVl7nAaQefY93gkzIpZF
	 xlBR4DLNq0LPx2Ji8x/Ohk3ry/zaCNfnsn7AhOlNSCH7QWULOEWA+zYL1lH32u3o+D
	 NzLcmT4De3sH5SZgTGvICzz/eKw06KM7aa+gj0W5HF22ixoZKYeVpBwudYyexPb8wV
	 5waMz4h9kTOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63126CD1297
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235369639.8181.16433329440353322033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da10739c32fb959deda8922e9e2389a18917d70a2c49d1737b844590e46a115d
Date: Fri, 05 Apr 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712353696
