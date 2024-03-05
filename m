Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C17618046
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709607497; cv=none; b=hoM3a1Dx1xuOzTKQrxDuAW19AK1OD0vV39xn4s36vNwr6yDvULX/7X2PUSlL28biPhag7wOL2YxPGp4mpn9AftiEjW+1pC1jKJ+TL4N9fVVUzfXoZccrlR17lPRw4Jjoi5RDuQfLkukUBmU3Wno7ipR5wXibPAT6BVcvn4aTrbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709607497; c=relaxed/simple;
	bh=yL2ZHQBahCMSVwIJjOqgJPcj5jq7Q+tXH21AjpZCDVc=;
	h=To:Subject:From:Message-Id:Date; b=QuLEGk6Jr5g4NBYjTaIj07iNLkn9kfV998sq+qd7ryyFjkbV66QaOrQZ7+ogDlIB5hXsdkdpNIDd/DAxLE5llyFalN0Ul5L8FzBiGlGlMen7uyUWrw0bNdxiCOmRDoBDektVowM7E3KUpl9a36GYArEZlusAVm+Wr1n+du8pqro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Zgmovu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Zgmovu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73571C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709607496;
	bh=yL2ZHQBahCMSVwIJjOqgJPcj5jq7Q+tXH21AjpZCDVc=;
	h=To:Subject:From:Date:From;
	b=r6Zgmovu2AzN15zLXS7V92S5dXSpVj14xwTw0WlSfesrtguzVKXOlBMsg5o8Bf1vj
	 leH5L+AssFu9RVdZLgW01XTia/L2NUaA7K3+3NtejWuEh+q7yeSNry91XUgcOA2xGs
	 l4TpjO8QUuMgbbmpVXTxJPJkJU8ZnjGx/NwLMeB5dOKVdq43jFx4esdHvb6QTJnZ72
	 YI4X4Q/5S63Jhq8RKb00NMBhWb68w/5g8Q4ugVYu1Zo8iiqD8TtmKqNgfN4MyiTPI1
	 Ov46vATJsM8Fcf9fjAupZkTNP5AquVIrcJI9Kx2SnihIwY7lXsvCf2yKtZ9JwVeStj
	 6q9e3Rv4twV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B808C48BF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170960749636.17244.16606729579828366693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25faf6e038f8ba2619b73483773b9f7e04b560370fbe25e30eda7d381b4bf3ac
Date: Tue, 05 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709607496
