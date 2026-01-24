Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5233EBF09
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769296434; cv=none; b=Lmh8AW0zQORTTxw2XPOT6nIhJUa9zMyYoSSnmbI9jsryB+eGnPMJ7yuCzwMW6eZjzaXOzDO94NR/wHU0MyyVNdasuHkQL75xnlgksfLZySBm0MiMvv8ODL18iBnfWAfap0MzeUvRBd9iTfAW6m5cTlbo1+5hrK+GHud/oy2+6oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769296434; c=relaxed/simple;
	bh=EncNxJLfqoi2GXj4CboBtb8olXvj5nIhXXpzoyt9lw8=;
	h=To:Subject:From:Message-Id:Date; b=Xjc5TtMIalQ1ZYwBAOXZdSrQzosG6xJH9Hf6Zimdfo7/V8n8pMZyFaQMGxZGl5MHVFbByHjU/jd1GpNMd4cYLJMn99759ltkP9ny+CR4vEZMCw+HykhgFuvLpcwZ/m+uynE32hyoEWh8qFljhICuGcobcrmyTXV1jNq8rF4bXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsWpyVPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsWpyVPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4709C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769296433;
	bh=EncNxJLfqoi2GXj4CboBtb8olXvj5nIhXXpzoyt9lw8=;
	h=To:Subject:From:Date:From;
	b=TsWpyVPgxsDWeg1dZQD+k1QPuz2rsK53SkGJ3yu78O26JJz3/CeU5k2AU7ECEuQpN
	 MuTPnhDdY9vXNHveZZ6D4NO70TM7wFdzTmP1GutfXzhl/eMtp5vNlbwTL5nbXikF9S
	 8VDv8pxUE5zP737Q4yzTTG9vPbMstncuFBFBZs2uCoN8eidRnqnRWpLGu4P8EBflGV
	 ofSQIKoJcgf9hANAw3umeJ9anB4STF/kV5u4p2S+fcrHIR66CrfoNk8X14YVfL0pug
	 xdHKe6MIgUdjiNOX6saqEH6nOv1mZSYjt9SQ8IqXVuE7rssON3KImBw8+OH+zQmIui
	 cYenzeyHm+kTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058BD715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929643358.7522.1006264286085594457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce56959292ccc70f44effb31a5921df94dac489b92d3087d6011e7e59513dd9
Date: Sat, 24 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769296433
