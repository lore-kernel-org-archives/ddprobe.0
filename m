Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B26A21CC5C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770966294; cv=none; b=ZWtgme99kH5u4PngnoVNVpG17XEBIlz3LOwBlxTWFnzJG/VVPyY1krlNK4NkEjl75/8uoHr2ptQDgtPRuiZONadfup/Kl6ITSGcUhMcN60p/JbcoqbI6HMfPc9AbqlBYmoFBdwj/pTDehJE1M4rf7hrJfozPq8PEF8TDsy+VtEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770966294; c=relaxed/simple;
	bh=DtCgcyQFds3OsKbB86F4LU8+cakWXAHgZDbAfiMTw0w=;
	h=To:Subject:From:Message-Id:Date; b=BLjOV25NSzcksKnvLyWENmj1Iv84z9T5B2ifLiKPE6yqq/BHnphRCgHfY1LmsiJrKLyEKhIF7UtH6kBgowM+34/Hl7OIPwXTa0QiKj0JJgxHkZYh0FmBPI+C+0YgLosWqM2zEcBfYhIbgfo34x+NpxWdZuX8TXKTv+AFGsrTMEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVGMNkV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVGMNkV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FDDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770966293;
	bh=DtCgcyQFds3OsKbB86F4LU8+cakWXAHgZDbAfiMTw0w=;
	h=To:Subject:From:Date:From;
	b=dVGMNkV8rNkg6Te3dWL6DMv4pYuIbIxlDII2ukOGLPGSTiBmzcSNm+n1KfJ9ZV6M7
	 ZGqtNSu3FlrvxhWWjBlmQi3aNxFpX14P295otegeTBwL7n6gLiq2icnZhSJ+sMVF4z
	 xywfZ4YivD8O+Q1g/MN5XgdLpEt7hK4Qb5xJz7Bb7wDfZg2NGTsyzOKAg+/aGSysH2
	 CoFPzr7laOvJI6xgVueuohvQLOtAT4G/byHhtls9OnzAzJqgtIH1EXzRGsFDKtrIh5
	 lIXzwmilvof6kXJl7bK6rOjwW2211GDFCygqSoqpqAVdvEi69+YiP7FgFlt0bEZYTU
	 XYikKL/nYdi9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5F2EF48D8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096629363.29931.12808838496597993752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a01c1327595880f14b4ae99764c56f54f8ea4dbb2a985f5fe159d7c055384b8
Date: Fri, 13 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770966293
