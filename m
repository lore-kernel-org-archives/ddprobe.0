Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C0EEAA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748311194; cv=none; b=mhoBVzlZeyQdxQsALh/KI9y1XBqIqRU3eXDKs83AEnzDK92CIgYgfu6fl/tKkCHnJMsLyTELaoYmAvpW8khJBA9Uyq4hYKI+PagrAzMDYqzUK5dfQARpfw+LCClqCIUlZ9aP5NTpyj5fQEhvFpLrxdYhFNDCCq0AjodsDJqY9BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748311194; c=relaxed/simple;
	bh=XmcEUjxQR2V69CS5bR9Zh4klayvzuVUlWAOJziEBpAk=;
	h=To:Subject:From:Message-Id:Date; b=oBXVijBH4lHu388Wmt3kTEmwkqCIaR0wy4jCYstNAnFhe6etDU8AKgdPsBz/L/zNkzWvJxMLGoB2nSNlu8ic0Q0Tf7vTLD3Ehhikd/B84F0o+iagZahHHRtzSN43tZRuydKvRxWoUHawxTZxxU8hRCApuwFWyGzrH+AQeiRQ2dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6eGeLtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6eGeLtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F83C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748311193;
	bh=XmcEUjxQR2V69CS5bR9Zh4klayvzuVUlWAOJziEBpAk=;
	h=To:Subject:From:Date:From;
	b=C6eGeLtCJw0Om3fu36kn25ohq/7tI4f+ckwKwrFhOkHbEaPpPMK2CzwB/SM5kCw2s
	 6xzVeZOOP2w+ldJpj2Is9owd1+BkpYXs/d69plBbP8UuwcU4oOxlrhvCapAPL2wZfD
	 DraofkY0J3vkqYPv2oz9E/2VSCgkhQEv7XzAWdJI5BTwGdSloQwlT4yGtihqqcBTjf
	 E59OFg5G5OTxL3F9FaFD0hru4XB8BV7Z4PfrYgIFJMoBujMoye8C75PqgbifuIYExu
	 TKSkYiq7k/ugS8xq+ki/6PqCsNbEwUueQ30Hd/W20KP9rhd+CmTvuNhF+cw0KGzCHF
	 ruQFok00Z5ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95635C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831119358.24167.410452149990446683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8859fbebc4f5f96fa802e9826d9f135fad34b3773b38628b4ab1d4f8b0d61a6
Date: Tue, 27 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748311193
