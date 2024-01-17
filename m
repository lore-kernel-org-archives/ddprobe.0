Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D7A208AE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705494497; cv=none; b=Yg/toUgFmtoeS7nwRlsmjLKIfNxzasW/kVNbrviEFzSis3V5DK6Gi34LGlihs4uA57JcoEm04LnfvNIwDhHy0UDiUaCT1o/vTx1xcDoGFN5IamJWLN4X5IG0sMNXbW7K+gzxhZNaItq04TEtQg99AMQ8mMNW1xrxSYDod94NRJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705494497; c=relaxed/simple;
	bh=Xuo2G3BGNyqtnUVWtmowR7Y5kPgRrwMFVwk3z68dQug=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=fSWHBPeAxrNbJ2O55Jcpx9gchGvDmpyumESosV46nW6pGBEoC7Kmq4vsbCa9VJ/BY5nbS30XCWwj9Pfh3ekQl3cRzOwQP7e0DXjFuovUlziPvDi4sC0Q9P8RpWrJ6ahiMXTEkeOJZL9gz1SR7A+Eu1NkWpVVriz1ig+0DrhmLUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPByn3uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPByn3uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80020C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705494496;
	bh=Xuo2G3BGNyqtnUVWtmowR7Y5kPgRrwMFVwk3z68dQug=;
	h=To:Subject:From:Date:From;
	b=qPByn3uq84aD8GIrPBF1bS5qfsrhTdHNg7mmnUQZVBJyvLeiN+8tAbqT5t6Zi+pBK
	 nEH70FiEkUlRrM2/Zryty7E3Js/ISF+qRRE80pUNHBuMZiDXc349tiYDtdomjBUNkc
	 UY62/PfSRzlNUQQSqE9vqBzjya3xy5GyO0jYtnw7W2wgYp66njUjsKeGKyt8FMtpc0
	 bLZVcWH6BshEwX6uy6g5tzUB5ZQ7nIs5h2w86bxG7pwApfcapkwHpL8UxhxL9X9A8x
	 PLqkRIkQ3UaIJwSB6xDw6u+dly2gEG0K3LuQE6ustxwoG0Zf1bpRvedd3XfF57L+g5
	 E+q0DSL7d3vsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65865C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549449640.31001.4894446886383358500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4a5e042135dc505bd4f136f9262ffb359ec82f600e9c2ca63f32a8253ac0ad
Date: Wed, 17 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705494496
