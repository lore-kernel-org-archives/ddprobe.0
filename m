Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC4237E5D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786877434; cv=none; b=WOULcQTWLB/NKvS6q3mTgiCempltsKo+m4MaHgo03K/qEs9t+8sx8w2GlhDtMq5pVswEEwvh1nUiO8s6EdCqprIPR3yxtHyj80+6rj4LLGDABFoNcKksL7xEL/RcyBtIT+9enUf6+7m//s0mUXEn4/HUAWbzPNfCrCDOoBP6Ix4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786877434; c=relaxed/simple;
	bh=pYFmC3m9WNMfFLak8R4dl4+3ITQZ5x52U4T0Yu5j4zE=;
	h=To:Subject:From:Message-Id:Date; b=Eio2hb6GlWkk+Vum/rP4sbNeh/cfgCGxOYPe3+OxH/MBAoEUEcofFOKSTqAWWwG1c1hzjz2bEk12Xn9eFBd/liVths1oQ80MYMPchKV2ezztzpDaF3WCLXaeSKaj+vJpL6XbpkLeBBGrfVOGm/MCZWjttJYNNftxZl7Oe3rnQu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAnxmyIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAnxmyIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3651C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786877433;
	bh=pYFmC3m9WNMfFLak8R4dl4+3ITQZ5x52U4T0Yu5j4zE=;
	h=To:Subject:From:Date:From;
	b=mAnxmyIWmjzvkGbzscV69wmSQm+++lcdMQrD3e3a8a4zQCfdjLkXKc3w8ea5pP0Ow
	 920F6wgtgArf6p67DnmX9TPF5ecmFf8ZY/l7jzwVS4enndJrTzNIXBsLIjJH+DIsxK
	 mlU8Cm7UEswupIL+xrGTO9kvYLQS2JCAyLx25HHR55+qVAXgTcb9gpASwdKUE0wF1e
	 Izp0MAUYGxmnYhI7EOb7Ki0q4RgnW9z+AUbw0MJkXGN7MJUMe2kKYSU0YGJdROtoCG
	 D8xSwz3sWOi84rrdIEDsFIHj16n265Ed58r/tUB63QOJ+gri42tCYOWTQ1LZlnjlZr
	 JoUccCQ/3uJXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA545C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687743368.26703.13893646871908626428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd489d62147c7df382d3864f445e68fb9c2102ff2b88ef56b73807499a25e77
Date: Sun, 16 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786877433
