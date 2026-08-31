Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3733815DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788155434; cv=none; b=rGaGs1+oWPMyN0FHamfkhXFItGO30ceviGloW78QzlVauTR6e6kKvpXWjSnqUcu8Ju2QIw+y65lkesR7K53DtWi/wtCNlQ1JLenX5FCD7TOZpS+utsuSPbmalRKyC2A1xUiOghBL/NBo02VOfgK6LrBXc+hK6vbdVDubVM6Uifo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788155434; c=relaxed/simple;
	bh=EtLAf6amketVe2FXmRU7+o76Mw1f+NOSVMgZO6jKCLU=;
	h=To:Subject:From:Message-Id:Date; b=Ftv1Q+cCsjMEMMGYL3Ii/tGrDyMuTfTBNHsohKU+v4Fr/2u9l7vFZuETrx7yn5jAxeB1Xq2FM0c/DkLJYvusazv3H2+GUe6U0lqiqzcPOpfPP4ywICzCff+xSmg0lvyurFxLiB5mpkNzBhgaygwqqBCzeSPrpL1udK1EAzOuH2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn6kwZi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn6kwZi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE856C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788155433;
	bh=EtLAf6amketVe2FXmRU7+o76Mw1f+NOSVMgZO6jKCLU=;
	h=To:Subject:From:Date:From;
	b=rn6kwZi4ySuvD58AQiDC0u2D4xbqJRABlChV7CNpevbd+XNsIqlk8kRtWvt2qCwL8
	 o8XVfXt6jW+SgFc6qJt+w03Fks+f6TW6AlTCFrywOVbRNdfoHwaArQkvVgGIKkl87l
	 fV0nGdyrreix+ST+Qn/F3Hzm0/x7M+6qzrHUgXV8fnSU8ChnKTM8PIkItY6ZkKZbzA
	 KdVQRDiF7Sw7HzEbDRdvgLxsdsihhuTFE/Jyzm8/XHvPJUMtSJqbHYSfeW/G2VKTc2
	 R8xHenmvH4/W375eIccpFYkY3Mn9CIi3KJGi0kJwX1uy7zNT1NL37Ti3sW5rb4sSj3
	 Kg6NnsxFIdksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB56C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815543368.12313.4029393162095348907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4649b913a190a5aeb3fb8e40ab342de93809eab4367234aab433b948bb6ce48c
Date: Mon, 31 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788155433
