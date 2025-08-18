Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC71FE44D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755502194; cv=none; b=mlQ8S/YP/hm2Mimy3xFRWy0bOO2HxEvfibFAm+EDu+YZJb9JTJ6+JHmxUeeYqmVZY9riXqQZz2lrfmXklK9a8NUDpOLWtI9E5iZKZyaPwb/Hq7nzwSphRQMMCoBkzmAQ2ZTrcrLTi2e0P3vt6PSgOawgk+fCkW3dgAeWbQ4ySJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755502194; c=relaxed/simple;
	bh=MWyXpb31zVy5+SRr8B9ViUgJC+03vNGwDXg30EpURSY=;
	h=To:Subject:From:Message-Id:Date; b=O2BvFmhHuQnG5WAdavzc/d0imrukYCIQBm63kFRZueH08kqVk9OAF4YzBVKb80DpY1J8TG0kHXSonqP2TQWVVku036Kxq29HvWqmgYMKAswzoyQTdhnFyM1TsGEoIwUdKYaAFxvpdyaQ9AWHIAeQA2vrgvbp9lGKGapvd9H4XFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlpJzt/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlpJzt/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF2C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755502193;
	bh=MWyXpb31zVy5+SRr8B9ViUgJC+03vNGwDXg30EpURSY=;
	h=To:Subject:From:Date:From;
	b=BlpJzt/vwc10Smj6HgZy0NmyC4OSSPhbK8yptZYwot5hP+5FxIUT/fhV3sqH0T8X0
	 tij7xkGya/elbPu29CS8ysfN2cBwhr34XM+vZzJbrOBd5mi/LmDcOAgYeTdwrOhrCh
	 BIVkbfzhPNV0eFr/iQjc/UoHF8WZkGnlxTpGvkmSL8mIaqqsprv3+yTeYNvoG4tPWN
	 56O0uFo3Renb+LllJev5I4wM0/Nozhgcpg0K9AdpNp8aRF2N8cFlZT68uqLykVsV6D
	 pY6yuS2/ulw0j6DPs0M+SOXcQofBqyDnTSHJQyakHsOdavJRZyaajI1AaJHuLy5uqX
	 5KG9BPp5yEEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550219358.22306.5800000027181651054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26c31914e7a23e82a79d2ed53193b9458d1eed2f1d7db76d187a549671eaa49
Date: Mon, 18 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755502193
