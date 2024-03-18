Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDB321342
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710735497; cv=none; b=RROinMV14Bg2Zfrdwj4WSMahYOByjFeI/CTHRTTeWa1HVWSv34jC4jCRuZVZds+kBO8/Cku8ElQPwfnCdRsRcRjUSUh6kPHH29ihvoNyti+cWIN5WXAijQ/guQTxQKeVHnECc4L6DidWBC0OVTVbP3zMMBeY6ATNz9CRSbwait8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710735497; c=relaxed/simple;
	bh=5oRrQE1rsgpB24HxIuHhKdiSFCycCYJEYvZvjUGcX+s=;
	h=To:Subject:From:Message-Id:Date; b=b1OAlLwX4JixXbSAYT2IvBIKwTQDHAhpnGI8YAaLWarEjpH6avKPAtWL+UDhYh+9fes0EHFGe0Y8caYWqyUpQDp4ik9Jg72rSze2wD7O6e31JO/F1omVkqvBoQJo0Z/kDdZ6VUfhm0tXiSmxrhfcsb0r1B/ofeqz1JTV/a+Sx/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/vss5zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/vss5zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF97C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710735496;
	bh=5oRrQE1rsgpB24HxIuHhKdiSFCycCYJEYvZvjUGcX+s=;
	h=To:Subject:From:Date:From;
	b=A/vss5zvRySnCQwLet293F7qKeIgc09j/RZ6T1GZXqH7rzn2PoQtL77CABGJYzyeY
	 7zJ5H05iduCFNxvX0EdZCxvVXt3p9rm76IkQUC/0kdisgrZDK2LYoOvBGLGr5HxCR4
	 4vw0ltRmo71mwi2fghrtkaK9qr1/yied8lOFYFcC0saBLHVMI3YKQwzNFyzfTdvSnY
	 pf5BtxKN9dSaPq5YIcOf8GMK3LN9E5AONYRZFqt1hS6cG1+hYWVe0MogqoFnQv6JB5
	 JCdAnhruuYggwjTt5tfU7AIMiWBK1gjgWIo9eNDM5hxmDUofidpPX8n1gh1ePPCqpN
	 0Lnjn8y6VAkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60942C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171073549638.15389.8806275112195682000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4cc764a0dab8d5b74f0e82243791a68fc8f098c9a99354fb43a69c22539fe7
Date: Mon, 18 Mar 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710735496
