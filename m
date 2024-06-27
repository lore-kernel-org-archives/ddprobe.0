Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608BB45949
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719471263; cv=none; b=EzpUebBrU9xWmmz9gPr42S4iLje4zJk1cqAul4+1lYe+e0eLMuBiFXYS93vca1rE/VYeERnskClnCVgWubLMPEfQS8Iu1bPxKFZqOYuKgjleT+s5cbDBNXg7wAQVca9PxxkEa08a5dRB7Z+FlkMWP9DuVgj2HuqzX0gv+25Qa44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719471263; c=relaxed/simple;
	bh=rQQPfNrtt03qbzkiETFv+SRu4lu0ig/MVv/Di83HTjM=;
	h=To:Subject:From:Message-Id:Date; b=qi/Z1pdUd2L88qyo/yAzJoK6RkdOwZRtWqemyGZZHvNXkDzL1pFK4vpjV5mGckFreyjv5A1lpEWrNfMkkkWFdE6k71K6qQDlworSo7ACdGzW/hlZQpqgAZDsp1XW/7odxT8/AWMlkkFBCid20e84hW5D8fRQ9yNwZQARrOQoTa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGutTaTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGutTaTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2710C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719471262;
	bh=rQQPfNrtt03qbzkiETFv+SRu4lu0ig/MVv/Di83HTjM=;
	h=To:Subject:From:Date:From;
	b=tGutTaTNH3ND2Df+O9qIHQOaWeY8hx8l2+QiZf5MOYMnZPAoU0zoal+qqnlFEDkUX
	 hOm7wGY6vtWOTj8KJjdbKP9OvV8mu+eiAmLpEbpKr5etq2jg0K5iDLfjfqHZvWwPix
	 lxfrhbFQifO6fbOqnsVSj7oOuN+0gAM+hlEOf+r//QsvxYZsGnvy2R+sNSa7UIGYrN
	 bChNwUwNQmInebRJra7f6R0dHQcXwqivc7Hc6840CK78tEegm1U3F4SS3F39+nDnNv
	 ha7ewSLLcw8FQnBEw9NYO2v8MzCIxNFJOietj5PZCgpw69ZKq7kMjpVMDhPKrRzMbG
	 onS2KP2KWI1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C324BC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947126279.24584.17390563079076482912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d199a0e311263bbcc0be9bfeed3e0e5e1561a390e5b5aa427072664c0d9e724f
Date: Thu, 27 Jun 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719471262
