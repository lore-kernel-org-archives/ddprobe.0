Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6E74519BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789111834; cv=none; b=okMXWPAvlCcN90DWfqxgyGbUKKoUl5w1nZHRj9fP4dOKqwhAglBOZk+nXhlKWc3hUds7xyI98B8lQND8yWlX2CCQsz7E2O2zreoGCsi0t4v/b9rYvWf8hNVJ69rEqInXu8YZlp2sIHPK5lEayjN4Gm3yIGKdj71eHGdG/DdB3x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789111834; c=relaxed/simple;
	bh=to7f/n5HyyMlAeEjAvNZEb3H6nqawVnYuWIvPUAB228=;
	h=To:Subject:From:Message-Id:Date; b=h5IJckQCIE8dxwhdm1lBjy5o0pgUfldUqj6FCgDsWHAVDP2PTAGDzIeG/DIF2DWPrnC+gHUcAZI+/Xqvz+2ibNRqrA5xJJ4iCbO2JFzmJ4F4pnJ5yNL0jNTm0tDOWObZlECEe0OpTVLPZDalqE/0rIb7May7DInakGPAIsyROmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTrKYkrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTrKYkrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789111833;
	bh=to7f/n5HyyMlAeEjAvNZEb3H6nqawVnYuWIvPUAB228=;
	h=To:Subject:From:Date:From;
	b=tTrKYkrlDmTMy6SYg8esgATYrBys6b+rWUpnvOhRTRMMEW8SlfZDSj2BF7aN8ua4W
	 Q10EHR/HUkynBrdvSRhg4EHldYBchrupXIS44S/DOe9iGDgbgjUwIUj2nO6zHgLouN
	 rNNUAQyP/e7CXxzRPxCkDDedw9QtW8DWh29iOyFf5uZ/hBTp9lu27dx7Q/JaSIOKU6
	 qgD+qGWirH1JuHYeE1BZEgp0NnIo68FqSC4A6kr0VUb9VKR7Qf5bCryFCsOOwnq4uo
	 eLo7Yehop9oBj2yiVNDRPX1gwTBqNqoO2w2DHxKKJX5QNuGOenhKskH8HtIc6qUwm9
	 T5xmRddgWYoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA8FC88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911183369.27101.4167302508901005182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56162c62b4143a67c5033e75aad63de06248dbdd59ffe356d984bfba4c278c7
Date: Fri, 11 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789111833
