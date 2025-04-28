Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44848B672
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745805594; cv=none; b=GEgxHL3X+wrAbKkeSsQhxuTwrhcdTtKQEvGs54jk7GEWfxT69KBHFyU6WQSC8P2SytRZVbkHhO6AzUuqK9svM1LQ4Aefy0aRLqgBUBdDclAsm2ImSbCgYnapV/6E8ntfOQA/eTcgzjKYHHSRx5OkRNPfTiAlOY6e4ThPcZgCTIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745805594; c=relaxed/simple;
	bh=ae+GcosVJ/9ur6HFADsmMMohKNvvJjtXiQohzAWgAbQ=;
	h=To:Subject:From:Message-Id:Date; b=ofhYlE9sRfAeDkrEOyO37hj3G7I3XfEwTDya3YjvfFFFY+5e3aV9vGGA7SDA7wzZsRNq2asfiH+6QNynSGd7hOC9U+DfiXJsgnf6jA7YkD3cUa2IQeM/nYhsaAwRYYHthhac525wvfETEymdpJYn2aTzR1WSvC9DXnJZWM2cjIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5i8+XZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5i8+XZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1BCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745805593;
	bh=ae+GcosVJ/9ur6HFADsmMMohKNvvJjtXiQohzAWgAbQ=;
	h=To:Subject:From:Date:From;
	b=L5i8+XZ07YHQnkL/ncD6OOKAdkhaFFUPnxpg84dLzW3COs/m0/J7apATGEXxhJv+J
	 3fTtfJicZ1Df0Gv3SjbdKY9FH/2CXmLi6TCLwq9ncSQDKx7l1Jx8GMaJ3DmG5Tf8A6
	 7Th6DjgnpYu2CMHkEIjd49WHP+/SIuENFGZfebB9C2JkQcjTW4QslnvnFDMQTwnl+W
	 b6nfLDMqvG2VYDHdqajbEPnKzxVn1yfJ+qM0eXj24LyB0RmpD+b+wF55JixkBbxjG1
	 Fi0IwS2ZybVxGCcF9/UnW0rJ4KGe5L8jQZ5dgsEUUmrKCj0ds0bGKEdhbpjg2Z5Mxc
	 H6k3jKmEGjFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6AC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580559358.21583.4072494501344414911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef9861baf86320d763e89417fda5372d5d5f5f6a34f98d3dc1f4d5f6a858074
Date: Mon, 28 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745805593
