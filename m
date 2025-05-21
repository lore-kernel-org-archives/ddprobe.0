Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48899DF58
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747870794; cv=none; b=jHtM/oU6fLgkVaYYFJHhqveGZkJ0Y85pOWlD8L0vyR12UXTC5Tufjqd83XhpCj3dhsATXd+p8ZQk/j1WhlwvToATkuUCW7ukPQiQsXay8C3SOGNcIQN3sVkc0H3vB9MqTdpoSLDpmy1ipi3gRTPyuRTOVORGIGsrfylFkrfO230=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747870794; c=relaxed/simple;
	bh=1whL47KLfxKjFxgZ5S7C/phXY6ozSpgKqXAmuyaAKfI=;
	h=To:Subject:From:Message-Id:Date; b=lccKbQZNckanXYe7oeYP0r/Qyx+4DjJ0qCbnEHQe/YMc4WdTvg14Rx6IjWzQ1gdMD0CIs2itAx36ypFOSU93NNcQ28PexfsH4/NMuzpqCNgyf3idO1Wj3SvWiNJ8vYWbqZSRXekcPO29JkR8qjigegOLoGI2IllBuuzvcIu5zVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNkRUukx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNkRUukx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DBDC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747870793;
	bh=1whL47KLfxKjFxgZ5S7C/phXY6ozSpgKqXAmuyaAKfI=;
	h=To:Subject:From:Date:From;
	b=TNkRUukxK2cRvH8CIAXbeDX2l91Os4nQO4LlZ8iI/ofkBmUAdO26aCUmYSzeIl+3R
	 zHQbLtch+jMyKCZknrj/H8IlkXhas8IlcG6HFAzUiECCNnU+tOMMzVEo4rsXNdWKfH
	 yzuIMySV9980iR9gy6fe1irNgmrnZiicPG+sP4bSzrQP6AlBh77r6EMosQiMoQLSAF
	 cQn/xvn8FWrkI+aHSTuMnB+gG/Rk9YIwDWbFxk57OE1MgsP+Nc9H2TdI2xTeJ2+d7O
	 BzI63rl1qZ9VpnKrq+3OluUkpMrOsZU4RGo3tITwCH78EHHk5uznOy2lnMdaX6Ot0m
	 E24VJJhZcS20Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F286C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787079362.17461.9493556955673859601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6746eeae9f8a443c9292073ab57828c8b336ccd8d43644a2e3a78a1abfd06e1b
Date: Wed, 21 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747870793
