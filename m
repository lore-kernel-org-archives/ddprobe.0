Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51340256C8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783200514; cv=none; b=a1KkzfA6eR106gAEFOR6y2YofGFn9B7Eo9KcA5Ku31WNL1Hv/AN01HRu482Clq6L3YBnoFY9qifhJni0smBHRXRO30ttLxY4+tmSL23ZftAv54+k2uicQ7FAICNCCajJHtDoxFdPN1gtd6hI8qDsZqsRlM/LkrhzY5RgMMnfh40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783200514; c=relaxed/simple;
	bh=qdKijp8axPW8lzgZyxxVaUwJcdyprISN3k+UNck8c5E=;
	h=To:Subject:From:Message-Id:Date; b=NbiY8tiPWKQYhK0Hsnu/kSy+MIdG+wMp3kYu6tBdOgZGr0bW6KAo7ceL2ezwmQuIzpUmOi6g4C7cLI7Ag9xKEcCNBoax/jzD53eD4Gnykuz6A8VhYKC8rv2isSR0Zsf4Ghh8xcffch3WVZa0vh1xjlJlk/cxQFsP+5K1xMo2kPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUSZnoYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUSZnoYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B50C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783200513;
	bh=qdKijp8axPW8lzgZyxxVaUwJcdyprISN3k+UNck8c5E=;
	h=To:Subject:From:Date:From;
	b=cUSZnoYDAvOI/i+0jAzMKzO9YdrpdLobJk5THQxp3fbqQF+74Dcz+6yjISiYthMoF
	 2FWv9OMlaZi3GtUWuPDxMjamIynCFLMhGwf/fRyIUc8Zu/POz3UB+D09qGfnnxDBcR
	 vvdiErTpmmTpqpPPan7XPIdCcnvjvlL/+Zjs/5wC6ZQA1u3QGupiv4Cz7goONP0ijW
	 vyaX8JHIV5lRbrXmgOtBkRklNNnQVBMu4PgHlVL7thyueXYI/Um0yNk8WqOFXcUx8G
	 KAXG/0iw5gPmmHXhJFyHiUU0Tn0oxOh1WfriL8VvtE8MIWLOrTIaercrV+sZ9vYP7s
	 sEADy7So19yAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB358C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320051368.9760.3773681761161044379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc97631a3a0896f1c4c1ae73bd1ed46ab59afc9734b659ac264a7f1dbc495be3
Date: Sat, 04 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783200513
