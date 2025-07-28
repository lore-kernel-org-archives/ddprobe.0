Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF5A1A76DE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753740594; cv=none; b=Z5Y6/4AKM5IdyOwRuw5/D417HVx7lKytIFWNza+xsbOtPhZK1lRv3v07zxi/9QLVhoF/vgqidHyJsCAbxmI0y6z/06XejYgPFEBaE8JRFDSWJlYYcmSlGID2SA7r/ax5XWe+c5miQ5eN6u1Xb+D7v6zXT6Bic1FIZha6Ka/zHZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753740594; c=relaxed/simple;
	bh=cgHIl4nCghdNuNC38exLATmTxM+8r6wWjbjF+qSxrN8=;
	h=To:Subject:From:Message-Id:Date; b=SXSlk11MQVcvdtTg7ZZcBTD25qaIy9RU77G+RqUQ2hLAVhUZNFiHfEqj0YpCeY9jdqXIawGxTpwfV0qfxwWOPLZ1ZDbGdDwCNCGnu18zexf2iKLFK50A2DErc/v8Oq+VdBHL2P4Xf88pfwzFUpQUfC2D16LRjDXmFfH4AfjLGd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Daogdpz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Daogdpz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753740593;
	bh=cgHIl4nCghdNuNC38exLATmTxM+8r6wWjbjF+qSxrN8=;
	h=To:Subject:From:Date:From;
	b=Daogdpz5MRVYZIos14LvwS8YFuZ+v3Jlu4loBqPDoJtS9oK3rrYo32+HuSpI9UkHl
	 IO8N5pWnUtTWZKCW5L6Y6a+GQOga97yyaPfGisIQskcrLCW458Ng97Q17lT/QqwjrE
	 +yWLqxrkmBf5yfC7xyYzbRfDVNarnkbiU5h7iB7II6bsnw5JgUPOpa6ARc3ZWzF5ZZ
	 dyOSk2cRnimJNce8hth/gILI3TV1bkvn6CaOSYc3d9uwS7RrF9h1isv5FgxjhpQiVw
	 bXnuAMnSxbGGqe2VyBOXlAU1aUmyP0CCe5mdmYhjWW1aKD7/17R5zPmCQeT2NbuR3q
	 u6K/Px/6KS4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF13C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374059358.20592.9035207252921114805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3adff7d496886ceae6bfcf5e5d32a44721bb7e9b1dad984aca1f8fadb57082
Date: Mon, 28 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753740593
