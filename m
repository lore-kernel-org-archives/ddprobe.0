Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232731A3172
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777404454; cv=none; b=lHt6nuDt7iC8AyoH/l7PgyGV2F0c2Xmkxy1y34hOccrZcnLNdD+32xZlsn0CxubM29EFCC+SMQhrRhWfFLx5O91wAdi2KuBEVHSvO3aVSvFwRJvx7XZJAWmeos//XlLn9IZ1akJB1Y1b30PBtZa/TKhuumLu7Gl45gvomyFhE9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777404454; c=relaxed/simple;
	bh=pyeN6TAWJhM3wGpcqBTg86faTnUuvFMdR2x8+/WlLAY=;
	h=To:Subject:From:Message-Id:Date; b=DqY2MWI9PBihE3bjzArTxnLgNZcwUYPjGAhRdM7Nz2QTapZDSBoIsj+8IxhmAafS38jmxjBvxabDHX8V2WUyEYSI34yoplyNUF+jW0nmiyGUxYUuKcMhYN1kyfkDRwIM1lR6XC3tg+0g6cTUtecYvSKdhcc8aZN9wns89frXuNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaAOfFZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaAOfFZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF8DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777404453;
	bh=pyeN6TAWJhM3wGpcqBTg86faTnUuvFMdR2x8+/WlLAY=;
	h=To:Subject:From:Date:From;
	b=UaAOfFZ+jcRfzz6IDS/Z+Fnmty5vh2O/7GwfpVMAFxo+f3W/TLhS4+pMpdIrUUcwG
	 6CV7hT1gB2ajSyfLhZh9fVENLe2afRwo1oJCMSidcX0Nm4bMNlTd7sYigtcKWTS1ke
	 c/7rPV54zoT6xN0iOkIMHps/jr1ZeFeSbcO/w71P0robkVBS+igzRbqKOVlaiEelHE
	 4h00QRRisJvmKQ9zNfxtkl2eLL7blJd/JYk4+cHps6H9C9yoFyVwYKNnYaIfSV0bZo
	 9pCrZ3phQLFQMXlnqjUr067zI8+lVuQ4PBqyCypOhAZx1t+Bz3WQ+vE6V6na2eptpd
	 +emEvFHJ6ntlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFBFF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740445368.30078.6707468269671004683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d6e4fe103592f40e19e95f2f3482fcfe39b694b083aef601c51b19dcb508c6
Date: Tue, 28 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777404453
