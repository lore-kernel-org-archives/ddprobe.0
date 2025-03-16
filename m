Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B909322A
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742091594; cv=none; b=X5prcrPIQTntRvg7gvSoOsjUg3CDEvrcmTiapDeF6L7xxgsvng9H1YZRrEuI9YsYqgpIrPwOwDf6EcH2Y4L4YbqbAR0hrNRnxv0wwWdRN7zhwTn70Bm4lGLd3Wu+VxtNfNRaBIcmuAXXypgC1VeNxCCdgYeG28a1HZwV0oLEYGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742091594; c=relaxed/simple;
	bh=LvbnpDuM+QD4c1o9ZUvkyfiTSpak+qVTQqUUw3V3qTg=;
	h=To:Subject:From:Message-Id:Date; b=e3GLMlRWgfZhxcCIQCkLZ4JZRSpy8jyc4HKiWkwvnyj55qnGZEVS+Rw349g80BlouW4HHOjGyVhAC54qUM9+/wYJ/kyEoo4UgJ+2QFt7MoMEkSloHdQTmsj/qwb1+gHyEOUqfZfTqXZvMqmFL/FXGeuYLf321iukW+C9MX0PMl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2B6bVSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2B6bVSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8EDC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742091593;
	bh=LvbnpDuM+QD4c1o9ZUvkyfiTSpak+qVTQqUUw3V3qTg=;
	h=To:Subject:From:Date:From;
	b=H2B6bVSe3lx9tL57x0lxxICYnmMIH5e9vLR1BBwDcn1A5Sbwg+L4b3mxf/qWBnnwP
	 9RO5HVguYDMOIQC6FoHk4QbU+2jDtoc2TMewzHjc+PIEE3TlGclnLsQe+86HDpb9du
	 f6i+/aufsc3pvIpzSOJXc51sW9YS597j+sVsZmVDoI3NYNQ1goJkUHVGeyEX3yYgGu
	 Pl0sKLAfTvWLrJS9B21dshAudWyxVsU0TNNQ5/8FV2VeBY3YoHPXIMDfAJzBwbIwiF
	 kMqETlbVHHnIHR7+IMbjC89ByVSMkcgAl7w5ZwHeK4Cx8S87skvviyBzJO5+7UiXWd
	 /TV+a7ZbdY7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA194C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209159366.10924.14756498964972486264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6d83ab1fc71a1a2559b1c91db2cc095a3b706d8b562cbe1ca9abf1c13d61f1
Date: Sun, 16 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742091593
