Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F01B9B21
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727428554; cv=none; b=c31We8xih3S99gfMZNHI/bjMIJKrlNeYE3lSzq5lD9QpybO6CeLp+vlNUb6xIKkM3YQEXBHf8DlPWWI3HetHCxxPZW8TJy7kfy/voDq3geKEZT/YgGb6XyhBWw/8Q+Bz1vo1L5ug5owlIZw4bItQxS0DG9JYGmrQg7gWo9TmpcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727428554; c=relaxed/simple;
	bh=SlCysDfq2pI4hulyluIjMQxTxaISGyGbvw/KwbZhQWQ=;
	h=To:Subject:From:Message-Id:Date; b=cacpl1lRQ9Vnosp0fZrIuG42kESEgX/ewhnEG2Y+afoJ7lFzNFVSw5h+4dkiia8yLesaJQVMa2qdZxlNq8O+9FbKfRNwYWqKUClZaVNcSX0hRlhcCSqolld5KdtrYzTnR1buJ5LGFAzoHBUeORUxxQrltSEfkW9K85Lx06u71QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hobriBZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hobriBZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CE6C4CEC9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727428553;
	bh=SlCysDfq2pI4hulyluIjMQxTxaISGyGbvw/KwbZhQWQ=;
	h=To:Subject:From:Date:From;
	b=hobriBZVkmJJzSCHMxeEz6cIsLKKWiCrF+Xe9qaTSOrRYopbDB0Qi6rw8qS06uAd7
	 oJxO1Cp7/RLvM1hqHbDW2o6VUb0RhoOg1qrZFQLxQfN+xJ7Bj/XopelMFMq3gOrBVR
	 xb8zc3zvoq6daB+YLodQ7u0vIrBa+ReQjh/bzYvRW5XbxhKn3SsEhKSK13dd1nBAYK
	 GwklIQ1Quoj6KVcZosw9QGDARt2x+OQRl1hPcYsc0V7ELhCfsw84XSTN65LRCDluPz
	 EjtJx/Fzw954WgCXQr9FZEhVJGVtz+W85LiWGwvqXXP6uxyKaUaR9nTpVowcrECqTe
	 5JwpuUWd3cySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DCCEBF8B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742855357.24865.4950395883537216709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87cc42ced3cb4fb48667bdcf3b12958318aa3114b7c1b86b3e2d86a471a3e93
Date: Fri, 27 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727428553
