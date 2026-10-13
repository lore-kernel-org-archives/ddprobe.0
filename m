Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582E11C695
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791852034; cv=none; b=CkxiAiON3AJ2NUtDI5EflGn5IznwUNrpHbAOT4YIJSI260NCvWsaGO0IVJqKkkVTWrkzO/gLz3Iy9UfOv9il0rRQz3+DKRDvf2vbVhhCaHXEihwnGIBR8yZi0RK1XBKGJdiNKwSSyvYnW7dCSDwjB5Xc6pArI0fqlKTd6winABA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791852034; c=relaxed/simple;
	bh=FnkG3Fc0lHZzf8pjJ06WdgnQjUNg+dUsgEZhvNOV1FU=;
	h=To:Subject:From:Message-Id:Date; b=DfQ1vdkor10BRFitMPEjYAJO3IifuSYo6v/1GpuibFUiOjkd09w7aPt1oDLQCnZz5TaA/muWeoitwDXsPI0XbdSjiGYhijAj8zJ7mSgQMF79eC6TH5zjidro0nQVFisR4KQ06eECuH3oBEOi4c7AXUT8u+jD7tg/qCkCJHUQ9Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwPZghJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwPZghJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD416C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791852033;
	bh=FnkG3Fc0lHZzf8pjJ06WdgnQjUNg+dUsgEZhvNOV1FU=;
	h=To:Subject:From:Date:From;
	b=kwPZghJh4gCh6R14hCtcvulsKrL2mzVumK5Jxzor8vmg9FTQ1HUydJP2ARaQytFvL
	 cOeQeWKJKbhQx/vOGb5i2KbfLNHw1FmgHkbauyMri9qoY0jISLarqSVuyE3f4gXp7n
	 xdSmckdHjSqB+KVdNIcFiFGn6dbOa2TWChyB5mpldZ54POPeV79RJAXXYQRiGvpdKC
	 nf9fAlhkFBxS2ePdFPojmA4ndNGEq5g9FmZvn9TkHGqRuRqua5VhvcO2TuGxFaduah
	 GH92/17irlvyYmpg+D0Elh3MfJYh++ky+vCzCfpZBU8YAlYpzGqhNUYv53EQrpKRlq
	 TCU1Y2DXU5XOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DCCA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185203368.12697.11135424519324642563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638d802fa7519b248369281d87ab3798f41ae1e6ec1c5dad81ab714f54a810c8
Date: Tue, 13 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791852033
