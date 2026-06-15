Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AB7155757
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781487394; cv=none; b=HD5RaI1deDTx3Xd3JxcTS+Oz91Mj2p0JJ05a6y3l/VJzQ55Bs4EdQFYFGMMyd3wB4gxh0Zyu/plGduvjQ7ZLwz5gsSq1iThfHOSO8mmuCyF34HcrEzMsAIATq/6mk0+VwloU6hDp1E/KD8vpB2eUrBdBcrB0yZlSGlkMuUyf+UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781487394; c=relaxed/simple;
	bh=wmE/+cHE6xxvnD711eNICZSBGg8gj06sy1113GVISuQ=;
	h=To:Subject:From:Message-Id:Date; b=A93N/ZP7si+VeTGFGN4pAfJQvAVQuxxlrxwOavOrVtBV6yg0WHpDbLLVfcuttlFFdaMsGEZ4rsZyHKth8uXH8sv45177JFWTmjJg22rMutcHlevOElX1QC7sjEBVY4nuMpdBQR9oNWJR61hxIa+OQKOU4StU1X3eKJAJsV9s93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0PZoL0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0PZoL0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C893DC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781487393;
	bh=wmE/+cHE6xxvnD711eNICZSBGg8gj06sy1113GVISuQ=;
	h=To:Subject:From:Date:From;
	b=L0PZoL0dRI4uhTg31vtnSmXx7zJuUDffSj2xwhHDrZ2urQoN0DKC6ufARFqofKngQ
	 btQYm5TQ0GCwDXkEDnojiSZj4fHmBhhWwwvXAlOknfohe0DjswT6z586h3wvfcQCMY
	 lrNIIGeBQVLDWUwwZ1eHYKdmCNki66em5/emYGFiNlYoZ6JfwKHk6yiJMPl0jZdBNi
	 vy3DYgSgWtZQOu4eOEINdxKliQFGgysSb6pPYpaTGBCa8RsigxOk/uw4lVzbxuWBR5
	 FHmsXXTwSLO73YLryyt0iYIIRKJ7SQff7vYoczc6y+lUQdGvsd0vfy/1KrkAavcKHW
	 AK59H79bR8OGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95CCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148739370.10999.1787742488213445277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522e8c11ac2e1b0c2ebab29a9ec61a95bc51767c832db6dd7749ad39e1b0dfec
Date: Mon, 15 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781487393
