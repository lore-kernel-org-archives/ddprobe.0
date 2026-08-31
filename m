Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC4F3E316C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788177634; cv=none; b=N4MCZx74LDE14b29AryKmYDk3ehzO4QRB4IQylkAVbM0LvxNG7jwbEt0VUMy86eX00cSm7r9FGhS7Qh2Az4WnyKa1W9FiFClx8Z47uR8e269cJ64t1+fGUE4Oq0eMMUBxLSS5Yvmk8xWIOTZ2IZ0zqv79hk+3usp6Jsw9ZjY/EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788177634; c=relaxed/simple;
	bh=YBX9C+kXFV6PmchOdcjnrA8ZJYCbCSmqO5uYDeImr2g=;
	h=To:Subject:From:Message-Id:Date; b=LYb7/TlUwNvd6iolzMwvhMiwy68kg4wYb+6k0qBUoC1BzkYZuv84jshWcQOc65wO8JeUEZ/dfEBEH52nJTjBcs7X1b1qVB3wkvfbjFj6Wkf2o4XQaQYGgmoNI4uU+ZK0M2FabIen91QhkvwdPUMK33p5l8fvl5PQy+rla+bYTo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0CvkqvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0CvkqvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D098BC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788177633;
	bh=YBX9C+kXFV6PmchOdcjnrA8ZJYCbCSmqO5uYDeImr2g=;
	h=To:Subject:From:Date:From;
	b=P0CvkqvF1Ps4QYC5ZgZmWtr389eC11ahwZCPS8P6ZNqp/0boAIfsCK/F6eRAge/cr
	 8C39cIeAgGswDAuRYh5/IJ/rIGWJyRERXccvzgJjS7FQG9/HZuogN8qQrTX/uCG24n
	 ngPPnrznF7Nx/iakzVK+NFWfkYy0R9Oeyc0f6oLsm4rXUv+wLAy2SbRQII8Fn3syZx
	 dcgxJ98RNTAZiqKqBvym1Xfed8GuayqZ1YiSHJYOwM+UhBUSgPEXhKcpQ2oEJ7uH7A
	 wuIsIN1bhDOjEFdF3PAsJaHHWTtLQy90QUH6tVXbeymtyXMJ/HxubTAHccGdWZwDiH
	 +3jPnxa+ykRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC2C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817763369.27631.12516625644103999208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dcbc82fc61772edc6afaf8dd1f5aed810b0d506b986260cee701bec0e6a60c3
Date: Mon, 31 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788177633
