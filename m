Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F94C7CF1F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718218703; cv=none; b=Y3khZAcRc3aJdc8CGPyrjU/3JOS2lqnragenq3kfprVvulb9vp/pV8OUXetQv3iizhbojHAHkJFC66TYJUgWYDa2reO/dM3uucYPTb4VsggBn6uPnj/rrWALZgUScMFnscOpR3qMt6dHzxcnFeNwUhDpo86SOrw53a6kc5Krw/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718218703; c=relaxed/simple;
	bh=vE/xBYBq6g7weW07b8Zp3Z8eemCkmoNyiduMxw5WGHE=;
	h=To:Subject:From:Message-Id:Date; b=Vghkbl7uF+7Du4za5+tI+FZVsoKzgPUQZrjpFs0ITP8UnJjXHvCdzU4Lrb1RBcJtbz/VBXMKtbcM93a1Emm+Bby9XaTaZV9g2nlWU7/Go8wsV++3x6dJhyFZFbId+Icvv0GdKllYSCU/3sMqolXugnvwxnLUNDJC+6fE+2bzCic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/jLKxwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/jLKxwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DE1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718218702;
	bh=vE/xBYBq6g7weW07b8Zp3Z8eemCkmoNyiduMxw5WGHE=;
	h=To:Subject:From:Date:From;
	b=V/jLKxwTwqRnGo32uu06wD38yPmbXJ2A/iLfDZqWKt0P144YXbyqONgKc51mMrs7j
	 8eeRzaL91gchui+O+I9niWGo0P0y1BIQMDW8GYHH2GcikaFR2zjdi2QopK+L52i6rU
	 67AaQEgv2X+juCYsAMBpbUbU/28fupJrTh2KMcv2cgFyIz9imswLMv5Z96XmRKlcpn
	 QWtrKjvxIJUOnFs0c81evEZNlPCLiZtERcH+ny7hS62M7Iuepl18V+BlfJk9B01923
	 IV4VETGn4l+tUnMnuF4sIu75jQWvn8ZUQxl70L/CfvJ8A3dWPIWqv+rmj4d0HYklOx
	 uitpl588k0KAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6F5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821870275.23184.13023669021460793652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3148b4fc244092b015d576481dd5c0d892e6b0004e1e4b0a6ca8899df9ea8ae
Date: Wed, 12 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718218702
