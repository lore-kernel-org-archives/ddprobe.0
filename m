Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7223C6FC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791865834; cv=none; b=E7KxS1hCeJYijG38Ao1j6M5EYNOUnm9dutVNNmbNKLOl8zbYXqsgJ3rRrixgowd7eLsWHyNj73N2qUJeXWx89/9jHiegQRV0MG+WdmTN8ftDYf9XTxDFimfvPY97EXB/WJoj/11TUycWfeZQedh4bMfBU4oQ/byxAr3Di/elhkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791865834; c=relaxed/simple;
	bh=UbJLWxv4XKmBaQpPxJEij4ZB4/xnH37H/kjYnPTP7zo=;
	h=To:Subject:From:Message-Id:Date; b=XqLQGNVB1v9MMMyPKNCieRzgtrYn3meGMUZ6qgN/k1XuYms68bxnrtAYlJ/wVcP7ReWY3s1YPTsDwheXNMTrfBufkslQcJdaIO9/6yxqnNXWOgnDRaKwZ7KC6BOkysfI0a277j74DNwsHstcbHgcdc0n5IlPi4QR/4jUXKehDiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4NNn9/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4NNn9/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE186C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791865833;
	bh=UbJLWxv4XKmBaQpPxJEij4ZB4/xnH37H/kjYnPTP7zo=;
	h=To:Subject:From:Date:From;
	b=d4NNn9/hxV705lVwauVsG8Qw8SHM0qs0gnDhSoBNXeq8ehzqLxdUlKV3yZIwLRTE9
	 bcmim6QlfhRPeVpJm5n9DpyPCSXJnCb5nBv9YTnPLPXWHFJ5RURyLtvPDxUT7HVqYV
	 5mfcx+LhinUHRzYVeRHY8yCHprJdtyOuJ04rdYGSdP3TZCuRn8W/uhXGf5r34x0orE
	 oIRzMDrom7AWV7sqP48JrLXF9YyUQ9tIHE+3Z7M/4oW7M9saSdZ9EQCNJDeJNwE7M1
	 /vudayza4+FOazjAt5XxYlUQpwyXtM5rcmc3cStyvJsC1jJF+ZJ7aBL/wSOlU/csjL
	 6cwwc3C3xtayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30C2CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186583372.7393.10367170241562220356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68680200f361c57b03bafd759ceaacf7980d8d72148fef5400334d90d278266d
Date: Tue, 13 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791865833
