Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C66150997
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772343294; cv=none; b=T2GQQADkbswNq9cvi1IkLWaYgTqs2q3Tl+1dDAQcRo6nl8RSVPl8i55B23GZYV8pZxrByPn1/+nRxZIVeQg8dFTD0KOTrXd0dRPpyB7Tqs+CcEfH/Gq/zTu2NpmUXt9JZUiwtXf4DhGH0hVemAZ17z4eWjvJzifnq+ZoqPdeOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772343294; c=relaxed/simple;
	bh=FWj3pXLYC1jr0YJWQ90V/YyX25q8FYnFR9/XHJSumvM=;
	h=To:Subject:From:Message-Id:Date; b=myINfyGv3/dz7xPeupzCJsg00L4dU4wkQGUGmsRpVwg4P14tPe+Fp80ALin+DLWdTf5S5Fev5FosRNHcRXDYWp6I9lLtVN0aQYr+x04QoV5mU9E49QPHw+G16nTJsPe/0yXFTRQ8RWGtdFYQDQOnJcIHKh4ZucmI3Gb63GbHP4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh4jZ8g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh4jZ8g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52AAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772343293;
	bh=FWj3pXLYC1jr0YJWQ90V/YyX25q8FYnFR9/XHJSumvM=;
	h=To:Subject:From:Date:From;
	b=Xh4jZ8g4f8MSGbDpAN5NUjq25IGNvXVOKOUccPiO3gX1fJEjvQ30Oy8qalhKqbwta
	 FPT6blB6oNEYsqWLzZqFaCCIPNpQxhxZt/+5mZMKVrDD0+crvbgvF1ajAwA1z7VErz
	 bNjLRny36Azo5QtYcH8d1Ed/tc7XDsDeNqZz4OgsxdxnckYGrZ7xs7QL6lLpSARJvf
	 J6hznrJY7DvV8vYEu2U5liRbGUKzu05KeUXKIyMUK1G1yAKbqyp/PcgKClJnC1MbmR
	 Wcvh/Ju6PLrvIIsP8qJhuUbNhOkjCjSNStlUWu6YwWZDndCWL9IW3mnkHS9BCSJ9gg
	 BiLPDy0ipW0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F2FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234329359.22477.15067679886241983795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274138f41fb3c3709eafc8fe6a427c745bd7c47c6163632a8ac7e02c091f4b03
Date: Sun, 01 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772343293
