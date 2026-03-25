Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB413469F4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774443894; cv=none; b=WQ5JIWDuGtiPsloeExkADf392MF21DLXMmq0qfyf88wNAbDRZQawfJ8WjkvxqQ7SwVS+Nz9/kRnTZFlwklYNHWFGpMj2xsMNZk4KS8zDtWMFuU+shLZ6d7uSydQvoT+v6H8RP3mV01okGe8ie3cigGAPc8AcCrwCxPh/IjNj/tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774443894; c=relaxed/simple;
	bh=7U7VokJ5cKq/01aQUGVCS8PHMsCJD/bSIZccp6LRg4k=;
	h=To:Subject:From:Message-Id:Date; b=BIQUheNBhbm5B60mRoucp0/CiSalvRUB1+dans47hehwJkdlmbLzUHElJ0L4JAbx3U+5E6ICZ8obaIZ0UgWNmLo7+187XI0jWcPXFk2ghunxJmI2mmwcMwqmIVeigMyIuB56EcWWEff1cGogHkd2cz9uMNW/4gd9J4htTMEJC80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZazaRie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZazaRie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6035C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774443893;
	bh=7U7VokJ5cKq/01aQUGVCS8PHMsCJD/bSIZccp6LRg4k=;
	h=To:Subject:From:Date:From;
	b=BZazaRied++A1OUApHWGdSpiP7PDvlW5ZyZHhZ0SnJnHs03R/VKNkI0ZLzcmEyltM
	 xZUUQ/g/yNOfffsAUYlK0B5DVEiPO979y124cjesYFZmG/XMqE9nY+wP5/9vh2rB9h
	 dJ/Qs4mYV3cHPfvkxBZsQjCIWA6qkSYN7DCv5HkxPbMrxvCIrvSzzeObahnGc8fCBV
	 obbG5EW6V2+qMELP0KnApEOdmfQUHk2m6b1q8R3D+PnOLtRkB0EqXm7P/0fIs2QH8A
	 a9KmpyKaE9ebRhYPxlMnaXUZL/edVsA+A9lYXRoSJ8iEHFWPsHV8olOi2jBV3HjDlo
	 rRPFaYRMgzHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FC106B531
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444389360.23001.837670306852018733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb7f2028150adf756ee35ef1c4cf74be6d23af85e2f8bfc6284203e23e20b45
Date: Wed, 25 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774443893
