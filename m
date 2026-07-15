Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE21D432E62
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784108314; cv=none; b=UI4LU5PeFEVFlJ1LrjrcQW/M46nW/TNR/eZf7B2+GJEqHBR5KXk9D5ccP+tOiG8AmXuSWeUw0cl4QM1AilsjGxLz/PZjvxmoMyb40gGRxFO08/yqY6JYQt7GsaBoI+X4Pk/FabLQge5gExuz4ZaDSpM8J4jePmKAns6oSf846p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784108314; c=relaxed/simple;
	bh=JJu4NhLWOTeE92H81dVE4qn1b5mhpchTCiJq/a/nnb8=;
	h=To:Subject:From:Message-Id:Date; b=tFLtfeuvYe1noQx8lNPhXX0bjCCi554pVJKOYCXIEfm5G/UZc4p1h64Ttb4OHxTsxstVl7m/dXsorAVQdlan1z5NdJFKXSsi2dSmBTD//6ywsoAb93szkwaY2/+IrkSnA6FbDP/jPgmb+UkH5FUBelCu06xqC+ABLtTzGjx84cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxLrP45j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxLrP45j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E84C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784108313;
	bh=JJu4NhLWOTeE92H81dVE4qn1b5mhpchTCiJq/a/nnb8=;
	h=To:Subject:From:Date:From;
	b=fxLrP45jdTix2k28I/9qTyimav79pewV8g8lJT9DO+l9F8m6xTZpffrVUpVm8tyvO
	 DYk/mBYsF109/e/gJFIWGpYlUa12toHQKMOYwtOqwt0mve32GkWUeEBPmhmEK22wg/
	 1oWJ5fwAutX0p5jgA+IQ5P9+9QbgBEgljalncN58Z+hr0EgKUS255GCZJGWeSqhvKX
	 E+ihwj0cNuaRd4s+PwiZqhlIMIqSjp3+soac1EZeQhzWKNk6CmBAM9F33IadlSdXLa
	 FzWcDTg7a8yR9aYGQqrVzHCTFVxagJWXvB3DpNrNS5qcEyBmBg5V/sxoWzM3siLvOw
	 dwJpq69nKFqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C3C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410831368.19993.3144375831081317205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a4679fc4c408af2560289f87dc21ebd46543fcda8fcb25230fc2f34c657081
Date: Wed, 15 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784108313
