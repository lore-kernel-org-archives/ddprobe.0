Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80D25579E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753091393; cv=none; b=azW8MFQJQerc+f61heUWJnP3OUKIaUCV5NRLMcUWR0mfxJFonzpo5juL10NSZOy+LaWJdpbb7q8SHPXeqKRQox8+p9gkzNwd0jDQlSSfbUneBiRqqelTtEgosSdRc/fCDJth+KVakPJLNp4aO1iwnIj4nHTRubWKlxxpff1qEIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753091393; c=relaxed/simple;
	bh=qY90k5qmd+6f+wYkORMyc6RTrCsqvPpWBQ5sWuRFqpA=;
	h=To:Subject:From:Message-Id:Date; b=e0lAOxWKM7NehBTmJQIVCDNUkL05jA0a0ehdqwwkUPs1VLCkL9bes7NVqTbNaTkoOBeycDgmZ1kk8bXz8qU+5BubzpBc+9uZMVnMiQFZaQufzGcEmLue8T/YJNCnB3XEFcCK/pl/0diatxvGrC9P/LSIBVg5POLJBx1+7mAlIvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDf82wpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDf82wpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D353C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753091393;
	bh=qY90k5qmd+6f+wYkORMyc6RTrCsqvPpWBQ5sWuRFqpA=;
	h=To:Subject:From:Date:From;
	b=SDf82wpyLBDbcNDAh3v+YD8/2KMR5ACSBi+x5oHhd4yLPhk7It4TKPQHALAYvTUXm
	 KP0hiDnFm5XkrkiU/llpzPyxfFOJT5kMS+KqIGgR+dF0xShTBe6ZEU6QiKQZzPuDH3
	 fwwnk34cXxQitBfYbv3U6+jDCabqGeLfK+MtxxZdkX5FHTfFlcNTm+8WIudisCaCBj
	 s5yDyyn8T8iP+2NuRhkgWvNTO61dQPHNdYInW8ZZluhzuyiXTDDJgvA5fHR+rj6UJP
	 0RiZgRyPrNmAvcm5aTOuQ/WtgdOoEz4scxb7HDK0ybtkcRogFcls4B324rqgGsdJya
	 u/vGwNlV/j4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F133C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309139357.19705.4423289630465137111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73c8a66987300a3b6ea1e3946af375fb5e9e952b492db28d1f6c7df43f6df3c
Date: Mon, 21 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753091393
