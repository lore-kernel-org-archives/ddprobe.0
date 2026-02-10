Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40C17BB21
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770707034; cv=none; b=Exveh0VV97HS/URvDISJ/JKjhVE4zKfGHmxSctmafJO6w6bXewPy4KM3QDfEDXURDkd5P27P5BDmcuRDa7hLoK/GTvsint8GgN0VdMuTEGIB0nqKWqYpGTu1ikFXmDMhR8reFTw4r5Jo6RhHcAQ4qxAMt4ani/knBvFndDaHPgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770707034; c=relaxed/simple;
	bh=dTQ7vQaqeJ0FJtQwP8FDQnzdWi9xpt/b11N/crQKC/M=;
	h=To:Subject:From:Message-Id:Date; b=BlePDDxLQFOsdbbeAv+VUoPNBBfjtTaAGaLmkP8GMdjmYDGw9ZTCpou6lu5b5xZB4VdRg5r09nsDse4Ee7vDgmxFG/T2EqtoDMNb4/x1M6OWRkPs6k1bfyuc5Lj+DRe+KYnufwO2081gzjspkskDJZMADsJGt4uHUCcuoM4J74k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiJ0/FNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiJ0/FNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35BBC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770707033;
	bh=dTQ7vQaqeJ0FJtQwP8FDQnzdWi9xpt/b11N/crQKC/M=;
	h=To:Subject:From:Date:From;
	b=EiJ0/FNljW30rgl8LfIa4Ci2gkjXgkmTcEwZjazc7vKvCJVUfTF0gWbQ+1WUjWsMb
	 z1hkclj/Ii9DNiUSlaOZJZQ+5TVBxfEWkjWB9v0nSAgssLZnoC1+n+S4j/0mywQmht
	 H2Esx05UScI3U9Ym9E6eBIl1m8AN8FL2VqAdBo2U0YnVxUKgpih18ckFX1JGUH9RuY
	 bO0+8GoFuAl4M0fSr7zz62koZ2MEYjd2K+M6LScU4hKrdxu0u6SjN+GG7QCBjL3tOE
	 r00xVa4gQtM+llDzOD7uhLam5Y3iKeSfwqfeTlb6TsEqqkCHSSqp1ry+xlJ7P853Ui
	 J2beLI5WxOLQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C1EA3F09
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070703369.6744.9530582590096493463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2ebe42ef0fae238f64bacf8987d5ba5217ca9bf230d85066604d475ef343d8
Date: Tue, 10 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770707033
