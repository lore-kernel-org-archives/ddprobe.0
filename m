Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B72C2417C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753184394; cv=none; b=UzGbr45p/FR0wHopFxq/TVbKe2jByF2Bmu6gK9/J/0b3z9+5Fv8BCJKH+K1PoTXRT5nbFdlGezficmOAv6+5jfPrxwF7M/c4/j/TRu4FuwhLXuuV+PDAyHtXa0xUuPh0MtpNsnvNc0hi5Q6uiuP99tdsxi6X9dxePM8qR747uFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753184394; c=relaxed/simple;
	bh=YZp4veSMt5pcLTj1M5z9zt1hHLf8sDDlQI0OGq6jQeo=;
	h=To:Subject:From:Message-Id:Date; b=lSm6iZnlL6cgF+ZjHY7CVQXgbGDf/aQgJejxXZaF3TVPsd8w3jv5uEFn5b7P4e66XkZF+Wu8DxuzNLtF7VoTk7OlHkuKldIfI4Zgeq/tDWY9+wAoPTGtJhnUNbfQ8e76crhMEEJrjJ6/uiI02O4xw9L0liX7Vs9/0fyqGmwszy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfZohrg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfZohrg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FFBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753184393;
	bh=YZp4veSMt5pcLTj1M5z9zt1hHLf8sDDlQI0OGq6jQeo=;
	h=To:Subject:From:Date:From;
	b=ZfZohrg1yM3/5G7HjQJ4jyWcMj6WwozYs0ROZIxsvG9LgiNytRHe5tk8G41I0IfgZ
	 uKrd/Y0pNnJm8vhIZx76D1VT2QG089n1FNyD+Xw+S41W/tAuaLvNAroA4+/vy2wGYr
	 LstSjDsIJVW7PTKruz3GdgeChr+5/ZzVo/UWbo59c+9Cf39Jxw4xEqZH1Dr2r79bJZ
	 a+msPC5vjCGOO8eNfqrX+MnA9Qw0e/0rXqgO5+vDS06pSuGvbl7WkicQJEEe3Fuizg
	 NhDaTczRRCAWU+jA9L2fzSVrrlfXhoeM6DkdNBquWln2fF/iDVKQnbV9ou72oQLXJQ
	 sQb+UCGFar8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BDC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318439357.23650.17389341143647218584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d46daf6d5648a8007dc2b1f070ae39565327a851ba5ad4784c5a88fe6c8b18f
Date: Tue, 22 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753184393
