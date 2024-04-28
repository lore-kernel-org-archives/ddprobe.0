Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6136B22EF8
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714348343; cv=none; b=DJ/3jjPLk+cg7hxXFNdMjVWC4YUD+QbJhoYVfE99FB9oqDNNPydNCWBSbZGQYyhk9LVsKzHw+AI+J7hktsEWzfShkvak8gtZzXe6q2C9NTrnJ13INetxayMUbsmh8D2VlOefYlzWNoP6k/26s+tloG67QZjJ10GWXvRelum72WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714348343; c=relaxed/simple;
	bh=YEF0Y10wZDwmpe7myzSHA4gWmyUCImotDHvGE6ZbW3E=;
	h=To:Subject:From:Message-Id:Date; b=XQxWp1SQ1nKdQM/Mf6V+V4RmVHoJAv4O7IqTpPj9/gQf7kQuUvYXetVwP7SKvnFyqdXASfnBDyUE15VEL99wByXOR7mlYNazSfEbYP3UV0Fj33Q8So7Lh8QAxbHE3Tv9wsotVubYBNlf+cC4YpNux1VjR9FDmbVD3VUHz5VqexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzOyNvTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzOyNvTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D851DC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714348342;
	bh=YEF0Y10wZDwmpe7myzSHA4gWmyUCImotDHvGE6ZbW3E=;
	h=To:Subject:From:Date:From;
	b=BzOyNvTpNwnByMX+7NdBJgDQ1k3Z6WkXRbR/yYVHs+uC92yUaWGkYAm7ldsSvwE6J
	 5s4l7WV4QRsUY+xShMDII/ag+rakIYRmZCeEDEhMHPXHy4Qp0HsRHMf9/vLxWq3eqe
	 M122hN7m1ZP6zuq28/WoZxo6C9kp+EZhxD4QtLvw/LrHg9srEG1zQG/nGzBTr7zNW2
	 IBL/uWQo6yXxlWwqkOZremKfLqX6SiZr3wiwZtReKSOj8XjV+sKjlztjhGhiShvSL4
	 X/rqnjO+5e7X4yhwGS+n4aLmoYU9gFfUGYgjKtDTngQWrwvzaK8JOGWkmiaVmZxByu
	 x2KIHtYer88sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13EFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434834276.18055.14380268155605678768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40d313a1b574da8c017f3b9e710b450858336f4750b29e9e6517b01b8b211ee
Date: Sun, 28 Apr 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714348342
