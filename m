Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6B279DAF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787387434; cv=none; b=RsiN9Efvg80w8pYDpUFWSKV8g9X04OTdJH5At0Vrbz5gYjPJW3Jc7I/lvnM54AxDIcBpX+bkUhLAcevMzBAtZZpeWIP0KUBofl4ALg8Zo0vCni19JAO0O3OYzVANEj1Ycc8lOt380me8Fynn9Pb/+XGYgrGWnM9tKIzmwJE8CMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787387434; c=relaxed/simple;
	bh=PLLQsGPhEdB1oc9eYH8RhWlqARU+G0BNZFFRw9tuI6g=;
	h=To:Subject:From:Message-Id:Date; b=KY8zAdPv2CCdsizjXzha5C1L1y6ZrbqIu9EUAWVOQZNokDY40B2H1ImvXVJHsOYodiDx/u7nN0Dso5LNwWt4glrbWpkF66WcDBN4bi7nascIJ3IVSvr+d9MPko5N5YpT753889FT+//TlmVWrtsds0PlB0fkKrzXeis0z76fx4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIe3PV+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIe3PV+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AE8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787387433;
	bh=PLLQsGPhEdB1oc9eYH8RhWlqARU+G0BNZFFRw9tuI6g=;
	h=To:Subject:From:Date:From;
	b=cIe3PV+tplTVRx69AS3t1ZbyCV6feKgyrq0gSCCSRQQ0LedvvEnXwU/OoM1Xlfic2
	 GGegs5dG7oUDdAosDSO8hh0IsCU0wmQVchOkEJqyGN10QaXJ2tLoF2GCCg9zH1Fkx2
	 fxcBzTIOVw9gTlTS+eo3bFvAlu8qh4aQhkZB6MzcNG46rHwUpLDrCynpnZ0+aWqhlJ
	 15PWPHzUaCU5jXavapelULuW6lJnqGrM1VQlwsAAuD5vBQgl56MrJp9VGM3rqxctDY
	 4znyTfo8UYgNhm8tpJlZCJ+tuDuFjL1lP/QNgUJsyLTiEybpknvzAeTcPqKcAWPKjg
	 1JF+gW+elsfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD903C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738743368.17262.873101812971329880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc99852967ffbe796bc6b8af37adc8f2ca781276d92e8ce9d65f820b51707d67
Date: Sat, 22 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787387433
