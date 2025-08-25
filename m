Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB2923B63C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756147795; cv=none; b=crllcGjDAJewAWXkX5LXkYxWz1cBqow9AjWN9zQuSlj+IrqCpVlwHCfAXci+R3blHt602p24iTwbZcijzBhoi234jkenYYDaEw5heKQBn3wy14n5fvQvxf1cPvtv4Iq3Yw7vXc1yWuk6x+OBbJ2MrzRcWqyunKDHFx82rEg5MdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756147795; c=relaxed/simple;
	bh=Ak8NcNCwAvZKe7Vgu4TUCTB7aMN1QrBbBzXcQv9JXzk=;
	h=To:Subject:From:Message-Id:Date; b=uJlFLqi43M/+lqexk0zMS6GYjWpOFvBXn4YzGaqvXrGSkieUfkQsnMnZigKPL2jZL0kNMFaHdiLKnZQptnmYJfChza6ZR98AmhpegjQaYJvvSJ6XC/cfvBiwq4+zpw9nxJoE1Xp05DWguhs5SruBRR+u8EWQHdmoDcZDKwVr6G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmSow2bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmSow2bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC43C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756147793;
	bh=Ak8NcNCwAvZKe7Vgu4TUCTB7aMN1QrBbBzXcQv9JXzk=;
	h=To:Subject:From:Date:From;
	b=AmSow2bip2ngNHf5WkLYq2TJ7lRkn87FpykfOWgFQxjEpTJqZQXTknAw2viobvqao
	 2TIxIDhnogxX3SZ2XJarAPH9czUqgRT5G4AEih6ZMufjpv+fyQoYMYkbf8ZKATgL/D
	 uORkzm+W80hMAMpnnYKINOlXNSwRFmweem7Cv2ywg2qFmCo6X6KPhJe0Zhc1VW2IK8
	 2+IhflEBAJci9edegldbLQPQqUjQY7hNcpnWA+6vC+wXZel4xtPKbddRF29J69sXEw
	 YtP3IbeNNBRm5wPbmhIeiZxNsOPUh/c51f9v6YJLFRWpNblwniwOGvxMahl0T9s8pl
	 QG8QGpxKVG4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68CCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614779357.31404.5884105521719765666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559fa901d3a7d07dd70adbf74b3210d3fd8799d162ca80053641348ede2073dc
Date: Mon, 25 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756147793
