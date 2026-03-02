Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FDB39F184
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772486094; cv=none; b=bh2iZN0BMnsm8dHdNzP0U6SCJD0qhMT8iMpoCPxGMj79WIwu6aAVTovwNcwScinLexqK6jJvR9MZDSPQeBpIIH5fhjBlIWDZOCHxYdAsCOrm3v0fZFrK0yEu7NJhxAxcflEprY6RT+52O0VPgxBl7e+jmZr6VUv8PrHWAtCXKT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772486094; c=relaxed/simple;
	bh=vHks/G0AIILSxTF6Qwqxb8Dqq+I0q7+IvouT7sZOD1I=;
	h=To:Subject:From:Message-Id:Date; b=V13L+UnF1A6xcLEpn+kVdHmcDgnx7opo80TeYw3PpDvdtYU8b3cGFo1Ms3kbD5lloppRf0vz6ClgPaLh1V7gNk5wd0Rt46eNHWsTg5CZ4lY9S7m1d0RK8KG7mMNEzzoAupjElnIbsMYd4fAUf/KsWYmXs8Jr/u/aOOYw+PlAlVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECGdL4wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECGdL4wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D11C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772486093;
	bh=vHks/G0AIILSxTF6Qwqxb8Dqq+I0q7+IvouT7sZOD1I=;
	h=To:Subject:From:Date:From;
	b=ECGdL4wcNdwT6rQvSj/mK0Rat27QHPrCsRP6zEG8+1Ko5l+YJwdStUbqJL4kxrsAO
	 x2t50RoY26m744IkCCtObUpmjGFY0+lCSs0Wa7wQEQzKUEWxT9vHpH1vmrpcAoIBgD
	 XYPgpyAmx1NpcGfbixC//160e/eaaT0S9lDtAvO42QNvNfYqILkvAWWCRT39bqCsns
	 irth92tJ3hS7d1yAX150UoVg9IAwaQmMRFpOuvT75UyuRiRqZJG/kry4VKm0I9GVvt
	 OiXWV1sMvaLICX1qwpGDPvWT27xsJta3wjUERwpDIrl04hS5yKMMN+tg4QDm/EXwB9
	 r8WYz3Ea1Wv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0A7EB3632
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248609361.9363.14278227054172129350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf88779499bff2c13a8f0cbc4a4f58975477b4dd4ec7cc1c83a768f2bdde123
Date: Mon, 02 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772486093
