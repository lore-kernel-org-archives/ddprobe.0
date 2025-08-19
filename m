Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8A326D45
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755629994; cv=none; b=b7p6sFiQyPpwAfWB7sPT0xUvvqu3WdNOm30DBqlL+kBbVBvHD/UNdhWXxfdCDVf7eayPsZsiebFQ0naYq4RIZa36wPB0bhNv6V8aZ0AlKb9MUCrnsuziMkqTZ7TrSxH94H4w8uqZR+03AIDU97ftYR/7ihlR51EYY+jtYiUShwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755629994; c=relaxed/simple;
	bh=ZhKO0nLd5yl6pkfB8tWCjfntejyEhvMWYxBTfq6jae4=;
	h=To:Subject:From:Message-Id:Date; b=FcNnS8QlvtX0qN2MjUCG9kQZlK5vCoAvHjmsfSm3bXi4DP2FgB2l771YGR8lukvveFH7HtLa+RzkLBcIt+7Iq2XyzdY0aQcr5iWfUIxQ7UDSmP02Zfnp3/c3p5Y59zRerRJgoSV+tnt0ih9pEYOJrJU4TIX3W3EQeUTb//zApPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRQj8nuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRQj8nuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755629993;
	bh=ZhKO0nLd5yl6pkfB8tWCjfntejyEhvMWYxBTfq6jae4=;
	h=To:Subject:From:Date:From;
	b=NRQj8nuJH+qMsbhfZJ+suLJYZ3LAOU+MCkV5NSn7Cijdk+rb0K7jGTqeORRCtEbl5
	 UYAvG0zluzwKyu6xY2e6+dISDkiEfsHbcJbjTMNuGVPG6kA5yYoC8mYFxOzualB3GK
	 4YaZXuW2pCgCHpdtLFi1tkW7tG/joHJijLe4Y8G4zNlZIGSwg7Lu4MaHzrM2SfM8Qk
	 h/+ijvHvJuzM9cQiL9/IIcStr/VNXIvlIEw887qhzcQYzm4fRxaat124y2RoZskYq3
	 s3vIqZMGx1B3kiBQ0Kr4uwKQuq0YwlG8N+Ukh8sNAUEN2A9BKPBlZttFN0Omjuoztm
	 lo46fUK/5tKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BBCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562999357.20303.15004537596687719251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb27e23661dc2726f449eca80b92fd51e6b797df22635dca43a58ba60e73913
Date: Tue, 19 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755629993
