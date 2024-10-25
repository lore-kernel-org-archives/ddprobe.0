Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F6A18FDAC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729848354; cv=none; b=R6sJ5xvcsfwUARwdIJ4RAJkKgZPHLxCMBgnzyhgpS6SwWFjjfNCWYqBVzsB4DekW2Ca7ZpXjVBdFYFEZUXsBp8RNRqrQeGQheULBfOeha49KB9JPYtgZyfq/iafoqj4UagLA4OJTOFw+vLEvZy360dciplJfAXWuupuzg925bHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729848354; c=relaxed/simple;
	bh=P92YJWlXjJPlTvAedU2ZnbCNQZjFyHWDZxxGsS+27iM=;
	h=To:Subject:From:Message-Id:Date; b=bElMCsAigdcXfUasnXOi8AA3XdsuITOeWjppuhTu+yZXNu7fHjmG1/EBrr9nOpYfk4aMdo71w3lQOd+3HyxrY235IbDafW3tamrYW+PTyAKpyBZsApuL/9YanW1zkRAFCtYE4sLegvHCIT/8lDccHp5dhmzpMPrw1t6Gkh5ac5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHntldva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHntldva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A3FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729848353;
	bh=P92YJWlXjJPlTvAedU2ZnbCNQZjFyHWDZxxGsS+27iM=;
	h=To:Subject:From:Date:From;
	b=CHntldvaBUmpjpydgBi6qlsT/u4TOaWTH+aMjfahME1iswlSnUy5OXw3pMnHeY4lP
	 YDtonBPUfTxnl7flPHCaD/+56CO3TTBo6EL3qWTTY5K4gSJKSLqiSqxAQbnlzOovqE
	 3luAvzpzyDC/7FLvdfxo/mmFV5BdsAPmVnvTGqHiYeEJUtcXg5SPkr5/cGC8Xg4nyZ
	 D2vL6AoLjKXGmTa9GC+N9urJdJMZ1q+SxpC+9z+LlJXolMYmpyGJDF9aepAK4vXhYP
	 ynD1mymke5xnRXiFv3xFs9bIvMU7xqkMQ7fjOwKM5wzlNqgbohHaN7vqt3H7hrj9Lt
	 jWX3M/Ovji0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F04FD0C5F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984835363.2898.6745213697642420654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01aed8c1ce1dcfee53363a2cc3863e65003a28486c0d68059cd1852eb02d19c
Date: Fri, 25 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729848353
