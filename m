Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D562800
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772487894; cv=none; b=N3WtF3odFCIO6HHagQN8hMwOZJKDlXEHR4YYJ10zZCXjJ6udM8EWYmc4zSOmqFRvsZpBHeFVzpedGUWuDCZBMCsNcdz6WsPLMejRPUZV03d9xCXvl6G4RXvJIBjG3vjSP+RZ7B0RqFBC8P7J1LlE6+NQ5rVvk/r7+cDS65IA3mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772487894; c=relaxed/simple;
	bh=cqLKaWXIR+QrwrozmANxTiomV0KdZLQQG2igLRhiDBM=;
	h=To:Subject:From:Message-Id:Date; b=RHXFfyXBRrefNuLC9F+bk6iyGo6Hxh26ACygcWU3nGBi5xcsj9VjZ0lMcqUAqhEB/7yyDXQ46taAgfQ4ZU8YXrBS474G5GvZahDBI2u7h/gwbfJEd1glxD1fCDc2evqOboInFfBwWlEYS83Bwp5uAWl6XS38iegg2i0emxUWOv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrir4Gj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrir4Gj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA39AC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772487893;
	bh=cqLKaWXIR+QrwrozmANxTiomV0KdZLQQG2igLRhiDBM=;
	h=To:Subject:From:Date:From;
	b=qrir4Gj8XXzfkIAw6lFllkkkePQ17pOUATmU0UENbF7h38mHZ1bJROJomHRQLzDLY
	 7fbTT+7sXm3RaDzE9TgUvi2SZXcyWiU0sIWciVlbawS1vcM02cJlRIUoG+a3LiAEmA
	 6j4c8X1MWvG+3sZWohnqTtxk7xOeC2yD2jGGMnqTWgZC5j7oH5KmpiVA8LvyoeNLkV
	 8003uEpYx6Lscaj3vsCRAgOMqjIxKsyK4RyjawhiNnGw9SNlk3huxamMcjo4ONiVgY
	 TP3yUe8lFkqKRc8TlPqNIAK+Nb1mT7QyysxB6QRNr/aro4V/qHY8Zmv11Ifi7X1nZ2
	 NLRu8QnIVOqCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B276FEB3637
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248789371.27363.18177247981933755668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f846ed0c4f64549672e2f5dc184c494bdd203f79a95b67f46f0d6e58b7ce04a8
Date: Mon, 02 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772487893
