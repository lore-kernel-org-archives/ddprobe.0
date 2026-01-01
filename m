Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B788192D8A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767267834; cv=none; b=cCec0mDabYL46wtorGCJJQErQe5MP70JIxJr38iptsQFkJSkZSSq14g99Qqfi9BTsmO4ggOTpHwCtjh/kukxIJz16lhgK/oWkyFGjV5jH4qmoXmzGYV4Gd1ndjndMjU/BPW/c0Rdsgz7OnG3WZH0PPCluzXef00vQJTpVdIhUP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767267834; c=relaxed/simple;
	bh=96oePRInYTy/seDs/F94HJQYs2tLt/9AP1YZihxGIRg=;
	h=To:Subject:From:Message-Id:Date; b=Bgm9iluJeN2DtiRUgTDsJwBzkjSyY82mNXNN6VCPAh7Od+6MUyPUkrt6DQxuGPxQA0Mfz/A6eX3Uyai0/2vA2O2Bjee+HvITuB0mJPZllhRjdD8pph/56kjUxpQoT83qE8BkSvdddrXjsuNdX/XlvhQz9njmm2CAQB65lh81uUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgOyCjJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgOyCjJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B94C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767267833;
	bh=96oePRInYTy/seDs/F94HJQYs2tLt/9AP1YZihxGIRg=;
	h=To:Subject:From:Date:From;
	b=GgOyCjJmfqU32caRunI/BkBoNQxAB03lOUdCpac1XgoiMAPBGfdB7Hssv/HpkIk/G
	 Piiue8zuedMJ17ZvPKs+t0Tv+rsZtaupbB4HI+E0v5WIS/fByPUGV/qP6RY2Cgolng
	 NyXq3gY377cvrr/hiJS+kQvnsYUxKfiG4rP15NvSx7Z2yte04jVudzJlJsU+FgPaQ0
	 KtT1AmrlOo+Xs6kYDjOi54leh0PgTs/0K3T4QbWcQYfYvtNVlrg/VZFpngfLWOE1jy
	 I03ydLnsyrwnghxoMhjCBVWhwsRp1Mh1H45ypm5NYQZbMoQscdTB+dHqHJNLhZGut5
	 naMLepB3pFCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94831EEB585
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726783357.13544.17239368994172668514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607982dcf83a60e2404e682aae5602214cbc64bb7c7bca0709abd05105a9c97f
Date: Thu, 01 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767267833
