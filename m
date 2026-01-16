Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385C930F7F3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768527236; cv=none; b=O16IfFi71lmr0GvNIOW5NxH6gM7++qZj4FsFgsUraW6uu7HA2nmJKvn2xdMPVZyHzFUXQjBU+ZWUfLu+lY9JAAVSuEokcN31B27LH7eG7HhmqgNX4K3V7rm+XDe6IrMKZdx9m4A+yL7+xwN+Qf7FYkslEFrZ1+cMXCv9cNQw28U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768527236; c=relaxed/simple;
	bh=y6V40gmHJSwz/LTJ+52q0lNlRy1oEb4SBQmuLKEeVMg=;
	h=To:Subject:From:Message-Id:Date; b=PA19rc636gYpShhAgwMVa55y8i7VPm8DMutUZlBK4nHD6C8GOTeXG71ZP2AjMoS4NL83FV3ucAhmWkZKG20zJA44vE1xq0MJvw1Gx5eDuidxlI4CHGv7O0tx3rHzHDLC/dFbgyiXB6hwhHsr5eGgiUCzwSGEvNZ5ZPWYh8bTnQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSaw2dy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSaw2dy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B5C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768527233;
	bh=y6V40gmHJSwz/LTJ+52q0lNlRy1oEb4SBQmuLKEeVMg=;
	h=To:Subject:From:Date:From;
	b=DSaw2dy5BIidY/JKyoJLu/CoXI5PopIc4akw4RLiu8l8o/gx3tkq7iaKZMk91CAuc
	 oy3B57WZnOdsL1Uyg1kbtHfF1EthfA8TIG87LpwshtNyQjNM3qSdIDnoVjg1DX+doc
	 W0+PP95ohgOb6yrYrPZ46HV+1yaHxRzSGb0IB84NeGiFRbfJkup1x/VbTJZ2pccomY
	 XQ5tay3pZ9yNLJURlyIQs4b25UjWGgt5rO3KHyN7y9JiIowIRSJSOwD8hhDRXQ2yIq
	 a6VLsedls9HM8ZfkRlPX0t1hWVM8x5vZyul2BrJBxWWniXwKsVL+2+BEWGUshnnQyk
	 oTt/j2CugC0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C63D4A5E6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852723357.26335.4403883898343181674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d70c6446d9c53c354bcb13786e1a8cfc6514d31a29dacde66b608850cfefe0
Date: Fri, 16 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768527233
