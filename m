Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520F345DF48
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790378434; cv=none; b=HS1+LYTmlFSbM6YvLsMQnF2IGBa9ZsZrgxi6m/TA4oK9+CsU3wHNhcPOvZZdX9y7oB3wYq80h6QBB9R+UYA1XnMK3fACG9BuchL97npE2/yUFfBhLUxXrsnyS7l+eng0xULHHhGhlCII0q45M5sG7Du0RGExomMBgaMqlqLb3Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790378434; c=relaxed/simple;
	bh=oF+gGTpiF1Pu9VkdofxvWQKsXRI/8bq/rfC55kdclxg=;
	h=To:Subject:From:Message-Id:Date; b=GPWZt76vYeSDKHk3FCPwnJSw2oiu/v7TY/+7k1wsldhg9y9tAYnYqXUxtw5SBiRzJvp8QFbMLAotqRvLH3L5C/d12H80GmOoi6hasVk3rU6ZS0jowrCkzwf5LqH8zhviOTu4XUKiXYwI6fpIiTrhEm1FGJg6qpmHmVTvhrv7euw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMiPVuF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMiPVuF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB29C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790378433;
	bh=oF+gGTpiF1Pu9VkdofxvWQKsXRI/8bq/rfC55kdclxg=;
	h=To:Subject:From:Date:From;
	b=kMiPVuF/lluhezqndq39Bb14coxq4Hc8SQZAmtYt30paTFUUxRK+lsxQ04V75gC7W
	 EiUlKpj4ZWOSnH05ljZsqsc4QIhiPJtnDEcH9tF5zSlO8hei6jJtYq7yNtOJSAkuQB
	 7D9vpwSfmUu+lAallRQLJcrZysJOzpV+rUQE+ZWqLWxjUZWP8zJQCzKVBQISk74sIo
	 idRw1RZu7l+Bj7glAwUiyQdB6vLNZs9/6uCNZ8d+vyPuylFcArP98cPkaVgAneNsuz
	 IKWH/rDwLHoucGn6bTN71h4vP6+l46qK+gCWUC/CLOjGE5C7wiB2PaGGj5qn1IDo8o
	 fMEENnndOkwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7AFC9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037843368.16356.12789559236864885515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e2c0877f8826ac4c80155660f69fa520a4224de92e638564fec3192b705570
Date: Fri, 25 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790378433
