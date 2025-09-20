Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF7F1C2324
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758334194; cv=none; b=rfZ4l44qWnce+KpQe5abbUlaETaJSpRrUyrWb6lhisnz4F1f6yZCFz44AQGIGDySNdjA4tJaCso/ujHDXxEgrhfZ0m+/Mt1BnTuLA3GpDERqT7NOfuW+E7zTvUbNpGuU5EfaBk0AvmnoG9WaAzXCaKBpvRa/CCzQDAghH7ZRwjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758334194; c=relaxed/simple;
	bh=xtaa9CCiOLRszrPomWjzgILSEVc6M9v48nPKAVbe3ao=;
	h=To:Subject:From:Message-Id:Date; b=N3PH6XEeZGdtQBj28uveI6P65sZt3WyZNIhff6v1ISTKkP890fxGm1lPD+DDLqFCv+lxdQzT/8WftQnM4YgEXUTBGlVyuLrLVSQUkH4hgas9Tq11eIHR5zQyhJSzvxDCYhAlN20sarAHUXocDkZjS4t7SEtnr0+RgiiWOIyG7ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwgrNQIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwgrNQIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A888BC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758334193;
	bh=xtaa9CCiOLRszrPomWjzgILSEVc6M9v48nPKAVbe3ao=;
	h=To:Subject:From:Date:From;
	b=NwgrNQIi+tY+YIrlpiBTYtmAO2+ncbJ4XqHwBdzD2aOqquYBAmMpgfNNzqvZiYTyP
	 +NvcxLK3TL0AtCzKIXx8v2oKcRdpKHR5PNr4KZ/wm34ZWhBZq55RvaJejTBccjHFoU
	 tUZ38M8qjsUtwuf7phkO19+T+7+z5R3zjuo7tlahBkfWY8rOY9Gi0s6j+OR3aaOkNq
	 xjuYCkXSF9HcmgNlWiR3Nak0VSUhFChL6ptbFwqjYQ9iwYXImJrZKiyxLBkhX839gy
	 6L7lVONxYWDA4a68w1BSy7LpMoLmrV1KQWF4rojOsE8AbjTZ/bUYU6TaRcXrYB9dI4
	 DlTF0q0hOb86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94308CAC592
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833419358.28646.1328260617739311669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294f14694a13a256016477458c2ffd939667a19d6f1672a63e242e92a6e4be8f
Date: Sat, 20 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758334193
