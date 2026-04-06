Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527EC74BE1
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775435734; cv=none; b=PC4YYwm/OB66WZNpsVe4uPTC5GKMY440V5qSHHf9LEztRvQJPvSilMwyuPT+B6izKZj/ZHM/hTuNy+V9DKwz8v/uhWyDj/7775pCUtJjZQm0AZBqFJM9XcErw7xi59yaMJJHu9bJZJCY8NFuXR7DLKjaxBtoqWpfndehbueU5YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775435734; c=relaxed/simple;
	bh=Sa8O5hmCvxXCmfu4t80ozAXeUsN2ki56yK39BPDyVNY=;
	h=To:Subject:From:Message-Id:Date; b=YROCW+vDqfDJv+xzhxrKkD9v+Qtse1QieuQbcElqVs197QsUTLmpFhx1ifHkWeEg+KhkAPlMVwUA6+oZwWPbKoapXmTTfH/XS6zg2sXwC3YfK3HHkGJ5V+ADhlEtG9oE0cdiZyChwlrKbD0K6eu72xUbqPFvuOJrEyUvaQaMilU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTQuWnAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTQuWnAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB3FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775435733;
	bh=Sa8O5hmCvxXCmfu4t80ozAXeUsN2ki56yK39BPDyVNY=;
	h=To:Subject:From:Date:From;
	b=JTQuWnAK/Z53fdKGfinD/iBb1KSA3o3JR+Kmg5lqXsgrPx8k1uo/ZCCqEqsM00WZ0
	 3tfehD2SfgSGojUo2lidBdbJwrM8kX/vLEI6HDCeyRawFeezcHPqgM7thkcSRV0Tqz
	 eYix+txkO/AFt0hnETUZ/3F3gG12gCw9jFWnTDCWvtg7Y0xEI4fY/Ag6iWIl36EskB
	 ajQ0teMoGKg4s2eBCzA5knAMxBq5fshxZbbLHgXw3FH2x2RQHGZe68vnU4WS0pUHTK
	 Y8+Cpb8JQgYy0J4Y8/BfnTBKyk/0wNHB3dkhqHvV4KRxcD/x+G1rWPgHUpzAb0BdzM
	 FoH8N1xyLdLew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17D7E9D828
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543573371.4569.7378597767636606109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6500c4c336afac8676442819ed4f09a9c6d0c1ea4ffac6f39a027abca52998
Date: Mon, 06 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775435733
