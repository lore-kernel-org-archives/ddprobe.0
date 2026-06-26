Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348AA3DCD96
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782464254; cv=none; b=UK0eIIoJIGJLk26dWfioiyN7s1lTbXOLe+7EkL85tCvTUkEeazA89m1AY0xt3y/JDzEC3xMYzLPf7q8C0kPi5UL93ETTG7dd+1IJiZoBpR8KeKviS26nSUYH8OJxcYPxQbTjogDh0HZJ+5IOxtySWd6uZgu1YKAJba8GBCAIRv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782464254; c=relaxed/simple;
	bh=727XPx1s4FW/04gV5xlpoKR0H4qKVUFdttRFOAz3H2M=;
	h=To:Subject:From:Message-Id:Date; b=TW3s0BlUDhep7tvA9oa1QlVxvoUm1s6l48bJPixmQC1i/X8oK+lxa2dwJJuF1QeyKdZlrb2cY8LtQkF3v93PHKGmqPPmmsIgjEoPoxVeUati/GQcl2rKDasn/KIIGA9Z8VwQscIawJe4hdv1xCOqDsDghQBsZv0xJ+TU4EbQkEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjJfzEto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjJfzEto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2C5C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782464253;
	bh=727XPx1s4FW/04gV5xlpoKR0H4qKVUFdttRFOAz3H2M=;
	h=To:Subject:From:Date:From;
	b=FjJfzEtoPwh15xRsqFE7iydlaqAkEBvD5HHzxgM7ybfemlpXal8TfEffP4SY1OuF7
	 325qd5AVZlZvsjOPYP0cErj2Q+Bz6TFtdmEibJPvJKjodQTFEk/ksTvFJSq4z51bkZ
	 EN0V4Mkq+39IdK6DIk14TpIVgnBfJkJWTT1yyWGgwSTYnJNlHpnuYwXhbk7r004cVs
	 +tQe2XCq+d3aP6sLAq/1lfVt0PgVOzPIOMSWq3EKtSCHOOkSpKzSk+TerSOfuk/A+Z
	 mzO+TJ3F+/3cqHUSgwcus63UuHBss7uXD3XXZ2DHCE6af1z0uzYhGaggwyzGyqseFq
	 KddwPJpNmy0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E97CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246425372.10587.17042555887254439943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a9c616d6d5f8ba7aadb65731ad66af27de6f8e9832dffc09e4bf3268b5f0b0
Date: Fri, 26 Jun 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782464253
