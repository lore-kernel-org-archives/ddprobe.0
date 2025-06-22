Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376588F49
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750555794; cv=none; b=GSQcuDYRmksotOlPaYTE4JgCmRhEWqIO4KykcdimryGcQGqzwXjjAfhZsX+rxE51PjyDJ8IRnagwE5Nn3yCc3Wbjk2LSfWga0wx0NqpdlRSG51G+/32gjNXaWLLN+0OybmvZW++s4O4TyiEPLKqNfFpo2H9DDGeXXiZgaQr2nv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750555794; c=relaxed/simple;
	bh=p13ZaUFbDi6K+SvlOmdVdQv1MFu4Wcq/0prUxvhg7jY=;
	h=To:Subject:From:Message-Id:Date; b=gMiyDsKl/m+QrLypAdPRCoGNeLD+UGycWe2H0cHBCvp5wvErm/9AMQtObLUfZrMB82MHbara1XIC+vNINe5MyZFuGQ52WGqiWLqoQ4rmYiUi08jrUm8mY7mPiqISDpw6ptjZnH/K+Dt2t+DIcKeO1vUc+Zk/k8pRHv9AQORwFxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtDqD6tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtDqD6tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750555793;
	bh=p13ZaUFbDi6K+SvlOmdVdQv1MFu4Wcq/0prUxvhg7jY=;
	h=To:Subject:From:Date:From;
	b=TtDqD6tcdqHXvhC0Ccuy6AbNyjQvR6OrTnoUkPAro2HqQCPr3Rdo0eZaHYewtgk86
	 cVxen56gK4HBvTHR6j0O2sW32dOqy6sx7x2+YlH7Pnei/yiFFaG7YI1YqFF05DSkTY
	 G49vhOhrX6TJlIviQmxyxj8yA7fdbqQSUoUCJWX1ypadqfSp2PNCr8/oJQoDJX2+/u
	 nrumzbF8OUWQTpjY+RB0uAnJK0ODATkm8iK1bEo7bmFgdHJl//vFEC4i9BVSJ8eYyk
	 HLScgNWD9DM6pyLSzKqsUf3o3Em1v2Xc4dpnIHwJN/eBeeKBnT3QPEUrth4Sp2Zauf
	 SeK4pQzzHdfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69FC71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055579357.15169.60109339500564122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7aa4116a39a89cd5738314793e49ca7dd56a3ff46c6b4f27ee1982f3efe197c
Date: Sun, 22 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750555793
