Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EBB1E486
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705616297; cv=none; b=PhMeMhaEslBF1DCmb+g4EcV6uhC4WuB4btKOeT2aXKo2ZzVksMg/8eYcbw4qU2vP1AZgAJoiOGGHWsovYQajOTjfHXpd2oE39kKtIBr3YqoQQJbMH36UHhUqmG38G6n8/jUphpiXTBbaiN8G0fIBQHUmFTpM0UUHQkrmlM9QIuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705616297; c=relaxed/simple;
	bh=/Edfj2wx5laSbIy9KpIKz+WjnCgqWcYk3dhJgZGJ/ho=;
	h=To:Subject:From:Message-Id:Date; b=BXS9x2o/Qmpj4/VhSzSSIFHqMhhTseWFBoEj9axweH7B/agvEhyEk01HMEKqZqldvyQ4v4JoJ8wJMLPXwB+78lx+XZQ+O6HOtsKxFgw5wJ9+NWbS4bh3s4Xdu5t7qWcDs8hJzFXe62qMbYbz6yTCourzhDxhpeY/Rh0I6bJrZ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FExibMz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FExibMz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C02C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705616296;
	bh=/Edfj2wx5laSbIy9KpIKz+WjnCgqWcYk3dhJgZGJ/ho=;
	h=To:Subject:From:Date:From;
	b=FExibMz0ve2cUSCA2Fi97nQQqtUWgrnRJ7okCbn6cO+TX7O2UPhdo5vtapg54WY1U
	 Y4sz2uhcJjE3B8+1AVJNu/TRoL0pSy/m7WIZAwOWNEyhaD62yP6NojIc18e2vB4vM+
	 /IvjX7/bOQ7ftB1OdM/Bra+oYY9czhD5ZS19xrJsAa030E/bh/zarqHL+Nh2BqeRju
	 W3l942e5HpOjhIsKsY2KBoNNdgalwIfGa1xbQxGdfC3Zw+MRAOwhskHZROZX0qKKxm
	 pvgFL5N3lEMIR2ff9OsWoy5o0YSoGsORracQDbFPx3y2NB0V4AzoRbetJcFGKICoeY
	 mHGdDG2EZbY6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8C0C47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561629638.28144.4957297792829676523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd68a849d4d1ff81f891c1ea03b206e0118cf17d7634327d2db9140f72c28900
Date: Thu, 18 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705616296
