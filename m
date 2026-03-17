Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FE031353B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773724494; cv=none; b=JnHutIwAuH7/ZjY/uW8b61nF54brvaPR+Sgfzh4bjcauyeXpTMSY84QSEdjqw8E3J9moUxqFIaElrzVsFAhbtT5fPyYTxaBhgpV1t9LyfPeB9CamyXf8p2qVHDTKeNfJOqDERVgBTayqRo2Vcsa8xQ77DgrQ+dlwdA9iL8+QJ/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773724494; c=relaxed/simple;
	bh=XTrVo1T72mdfABGDpdtrt1w+Yax/YS5Pqnnw0nYLk9s=;
	h=To:Subject:From:Message-Id:Date; b=WtpY6kkowqY6QAtiVSB+YuTDuPiXk1z2PDJ7pUZnlH4x3xnV3KSPoHbG+wooluzcGKnqdBUxp5BAQ8Edxgoep8STidtDfWLaDXc2eEVmUnnMKGjGbq6zaOo3qBcHvSGRJRY1CQBF+lEhEUpKwa1VcKV31rXFimUvektaxb8ekHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjiGnd6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjiGnd6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6122C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773724493;
	bh=XTrVo1T72mdfABGDpdtrt1w+Yax/YS5Pqnnw0nYLk9s=;
	h=To:Subject:From:Date:From;
	b=SjiGnd6f8ITA96WjvVpyrFoTn9Yuh1tMny97RCIwzIO81P/XyOVXZ9wA/LwkQvBC2
	 fSB4d9YwQTyCh9uYHsXY/sIV0436XhTMEQOYhDeHy9SaMmzF592p63lMVeAgJT/JES
	 YZPkmMKYEZBnS6EaCMHycJ45I8SUxAxpcGyRhxjNhWBmyohPp/ktoRXSt+hf72af4B
	 dBlnnTBnFMBXJn6Fnq5wRbv06KgLQ4nEBnhAAjWh3zU0OCvH7WDrPqKY14DUbf/mSL
	 rlsGUZe0Cs77RaExPNZUSaE04srRYO8ZnwX9Bssk6In+wYXeHqaOX4I7wJsh9J6OHd
	 dN/DjTU1a+dnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E5FB5EAF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372449357.28444.8623801934222789813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149a14b3fea80dfcf36dd8f8c85dabdcb0bbf9d14d2da91caddb4ec925fe1bb1
Date: Tue, 17 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773724493
