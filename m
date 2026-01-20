Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1136915E97
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768868034; cv=none; b=fz648rB157ZMOIVwcaW+A/gZcXe76EECzueKzkwHDHHu/s35AxpUWXgUlYeCuQWWpyjFqGitKAtKHqDFpZF0yCSm1XLFn446uA+9bArSuYgN43t+UgLFyvTI55jbvbnkwCdMzvwMhfvzpuY86hj+TxOXeI8UkEOwpuNm5wLz678=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768868034; c=relaxed/simple;
	bh=fuHpOmLChz1O/D1N3FEGr5czTC2pFR9Ney6ORgLWCRk=;
	h=To:Subject:From:Message-Id:Date; b=qfL0EK/NXC6IIR0MTt1k+zzYxZSrY66O6ZVrOFOkVlizjMnYGVwGDFXrcS+afycQRzE9l5VwS7DfvezFEP7b3Hf7SWajq4JBkOmeY7gf84RL9rD04AhSmsQ2NZDkbmmSqCNuIZvL2KBBsrtmhs0tpXt2LOt5imJMFMta7QHL2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHo8IJDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHo8IJDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AAFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768868033;
	bh=fuHpOmLChz1O/D1N3FEGr5czTC2pFR9Ney6ORgLWCRk=;
	h=To:Subject:From:Date:From;
	b=OHo8IJDmUll0hp4MSU8X89nyIOwmn8pQGs+68F7jo/6qJ1hjWnXfGwDoEBuRTiO8d
	 arUeCCHJu2slaKA9xssDKd6rjGxk2xdY/riWUEJb5BVRy7Y6BbHN0wH+HhLQIHpJ3N
	 WwyNKa2GmVn6LWzQVuuhiwX61vOOfs5da0+EVpwFJzA9KQAH5WHo8xNQI+/Ks2PtFh
	 ysrqfUc66PdsCSCxQJXS8Ysn6zthDFXHondXm0h+vJoye/YLCMm9lCg+Vhuhbjo9Oo
	 cezjXS8FIB3j5BLBTD37O4deKXhZKwYL4pyxh2fSeU9ASFjm7M5jQ6dr3poSMUgh+y
	 kvcP9BMaIzo0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D27D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886803358.27602.7919797578343289197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6625fb37aa8c3adc91618a9d58de101d16d40bf3b0e79039b40836afdb09bda8
Date: Tue, 20 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768868033
