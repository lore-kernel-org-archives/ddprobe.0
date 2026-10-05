Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC693B995D
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791234034; cv=none; b=QD07u8nmckjGifkJY1pZ6coJqiqMxBsy1XDdPg/0nihHCHLzwcQIQOAjTyyu8jiLd0nYiY+SYgerXUnOaroGnHD6cNBM4TTks5QlUbDUAriyH4E5nkwXbIZLHM/7eVYIgbVnpmq0njkpE1YIH5kufQzPAM7F1WetQ1smzyKu/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791234034; c=relaxed/simple;
	bh=iGPV4ZHb7JHsV3ejZvdnlipc0kWuySNuFdVx1/5VyF4=;
	h=To:Subject:From:Message-Id:Date; b=TWmqMhPR5H7aicMAy8CKqUtCn1DpwPanj5a1pZfQs1cK5M2n/9+zWw/hLXBW09QGgjbaaQe3tGZNFloEmTMvgmO2C+VsqvkPNo3FgAm/UeGcv06VXXqRv7dHnGI+LRgz9Zy4AVtm1Fa0n5hpNktHflanWcSsWOb2UkdrCvEXLEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTkqGSZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTkqGSZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DE7C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791234033;
	bh=iGPV4ZHb7JHsV3ejZvdnlipc0kWuySNuFdVx1/5VyF4=;
	h=To:Subject:From:Date:From;
	b=mTkqGSZQHngoqlKFhO71NAEmhUTRxo8zugYQB7L/DhaYqHb6B2jbRn0ry/GeUAXHw
	 ppHXPM3F6SvTVfI9IIG9sw4Gc0orX+ZQoEajZ885eAzB3paedxtJUaRT+xPhS195z+
	 7ledhvzDadUMex4pWNUzz5CPn9jKMQgvykG7VpNvUa6PufXZrJIvMEL/l/baJRq9ZY
	 d/jl6pm4Alq2tBYRKXolu2Zu6vhcCcdWKtNFqhgZpGb8r1GbAnOY167I15k9oDoIJr
	 cGec2NDqQUosk0M2f5aJQeLdGUUCwNK8QgC9n/tIahMjlqJ5jwBOppQoBtubvu4FBI
	 WqPL0xkzQfAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D6CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123403369.23966.1271851553114028411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a08b7569ca6517a8044cc5a2c7bd318d86dca07aa3b9fda4064bede63fe3b17
Date: Mon, 05 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791234033
