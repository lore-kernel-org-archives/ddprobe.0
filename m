Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE54946C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776719254; cv=none; b=dOQjLgvL2Q1ri3BzY3JXxL6mG3c+Ho2Q2kZ35/4txWh1HWXT5uqqBnDjHdXsurOkR2kAT05+VCNqFMq7UG5eYLfmhMcCXgV6YZ8upEn0FcYwSLWknSL5/MOJFuW+fKHfNdaWrvI0e8v+g32C6FOG+2/Ct+2vRCNI3Z/u09TjUz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776719254; c=relaxed/simple;
	bh=tc2NC1oLFTj0VM4w48w4W7dXZwag/3gweTPhRob0LkA=;
	h=To:Subject:From:Message-Id:Date; b=IMfw08kTyxQK6nEX4mPUodSgFFuVgx7I5b4z2mQ04WKgBZ6Ia/JltJNy1IseYbdEoAw0VBuCz5tVFz9P1/NRyntVsgFMXMcIZoMxkmWkYXf4YYaB5Ppa7oelMD1zaYj9ukFqyM7U4rBMzz2JGK82wptwAekXkHAij2znWlQ+Ewo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMmKhm8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMmKhm8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D26C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776719253;
	bh=tc2NC1oLFTj0VM4w48w4W7dXZwag/3gweTPhRob0LkA=;
	h=To:Subject:From:Date:From;
	b=pMmKhm8R3pySOV6TJw1koDaPzfTksbgSioyKD67KVJfOj9cX9RX/A78qeqvkXFz7Y
	 27tvGU1mbyK67M7hC4HbAnTh+GFxc5lD0bj2hk5wjcYN9e9b6jeRLNvr4apzBeVfYX
	 4CDfyGXFnSkwHoww+JcbTjpYnZaGkRqqznXGcsduZ4zDckvp3aLEWOKOVwd7FQ6PZf
	 dJHwLfD6j9TAexQBUixiy7782WIv7DsH5JwDZoq2e3rVkU7Js8H1pOrRel6hT+OWj/
	 kPpfLHV1kzqd8G/2ctDc4yvHpWbNSXwGhiLi5S9o1uQI7pRpK7hbKhPuxBwW0uxze3
	 wyIpCQJDiY5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A66F5A8C5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671925368.10110.14815415795731681128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fb1ef32c3dd6ff51ae6b77272d017a6df43c6825a9a04ac51ce9e5ed8f1510
Date: Mon, 20 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776719253
