Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BD479C3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706155097; cv=none; b=WaX3Z/W8p9T126iOiH5KpC3HnNYzKFFf2XR8xWSxiVF15uI0t7t8gNOuhGIoUxJmV1Zvdk95r3aW35fKKYn88o4tzqHCjGIlwnA14moUmoukTSjpARtFHuvkNNP5rL/fH4oc92Nqvvj+73QmZRwtx8OFf3VE7kXPosQOayZShrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706155097; c=relaxed/simple;
	bh=YbTtmqxFpc/m0vB64Rz3xjpE6jSC8rBtM6tQ9YlQX1s=;
	h=To:Subject:From:Message-Id:Date; b=QSucuuOGkTQXsxKzDoEuS9HyGJ1ipgu68pacKY0wXhbUDkssoZjRiqaJI/cWGzmykDvipWuaJsI3ZYHMLl9xXRGGCw88UqxXPG/XbG4gqWlqnmvuxrNl4fOo4uiHfGQvxl5UKoJQveg8m/+E/o/1lUS+5smNa4wprgTYzsVvpS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7TsD2yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7TsD2yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7EFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706155096;
	bh=YbTtmqxFpc/m0vB64Rz3xjpE6jSC8rBtM6tQ9YlQX1s=;
	h=To:Subject:From:Date:From;
	b=I7TsD2ylEttNvnxVnJv+dDLwRTxgP58PQ1ezl5vhmsAfpFT2Y5Z7T6VaVvzWJ80hB
	 XFMi59AT7uEG5XvKN2OxbaFApHvU/NS+njI7EyE1XoV0qa6ljKC161oodNNAjeUT4e
	 LqBajUQhNTk3pVjxhuGwvrJYYFl/OCvSQSXPhvyA0hAui6bHMH2YIsJKhgdMcZ4jXi
	 /2O/iS5NiDhUfI4Qytvza5psOqYYkXueQS2bjwnn3JsaM455AGlkpOcJME9pOwFkkq
	 ywevvhkmuj0Oqi5l3KMfvpfCybnsS2rNQWX2F1zhwk1tqFGjoP3d+mZM4uc+GGYgSx
	 4qFxcrPWLdhrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E08FC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615509637.27016.4290099418214441092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2986a3ee16387a2f82a9dea067036da60296b9c4b2a69351a435ca280590ec
Date: Thu, 25 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706155096
