Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237383A16BF
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774859094; cv=none; b=lIMPltYtF3uf1I2Z2TK9VbpYdEYXtFOPt5dr1Med87BWu7kB+3n6m3/DPoVHGy3heqGUAiUzBaxWxJBeMIFjpGw1wLMbYlx5vBn8KASHMm5Vden3Tq4heypSR3okVqfLe4DY5lu3TFRrGfc+aPrUWJwX7kLaLTw9RHtbzqMzClk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774859094; c=relaxed/simple;
	bh=c3KAMfzIvmKTu2XkLrMYsqEM5gbA2slG7FfXzoeQgCE=;
	h=To:Subject:From:Message-Id:Date; b=t+i86KkBdyZ76rcaFejFLKRWMixkFj0rO7hEpT35Qdtf8Hv31WSzvq0D00wr2pUtMJS6U7CIQXtyZLYzfABsQLGmmZn4lghEw1aOzyit+RIDgTeorZ2ceM/OxxRwWMrdzkPfjkVK4YYGq45ZMVL/7aXq8un7U35ZPpCiMu+c8kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RghRXZ3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RghRXZ3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE6EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774859093;
	bh=c3KAMfzIvmKTu2XkLrMYsqEM5gbA2slG7FfXzoeQgCE=;
	h=To:Subject:From:Date:From;
	b=RghRXZ3yPeFQb6P0h51GxuKhQJ0y9iU6j/Iy1I0aDJlfUJmrddNYBiHCbu/OTGkyf
	 lv0v+YG7HNGFmEd6hY1XszM9emdaV/TiPX8M/4P47mUc46ily+aqGw7Glvc3v0eKI1
	 64X8MEhOXJOWA5eU/qJ5OyToSi+NeoWrptXWZyXdwd1U151x6+Qcexf6xF5lZyONzO
	 I7aCxI5ze5hj9Qv2pH7ocF7S5K72dqx5DXaL/2CKFhFv1r0TSZVo7OhAH2NlLy2Ujh
	 jHuNmr/nxKampPjNBZSkycx7iFExH+jztFJsKMNJbKRn1IEJaI4iclYIDgAo6Kode1
	 uVgDj9EDSI2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CCFF495F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485909358.30942.15134607493743643168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3a3e0982ee6c24fd503c074f7206c994c105a7a5ede47a2d9af35b12a3e27e
Date: Mon, 30 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774859093
