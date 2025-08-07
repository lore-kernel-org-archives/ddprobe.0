Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D23208
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754538594; cv=none; b=ggQUgf+Z3qobZd/o9/EfzbHup6PpQDWZ+VfMIGn/fkAw/YpTw5ZTmw/j2oQ2bGPuHbmcgSh0E4hTMN/r3BJ6TSf3dxqCYk70meM1aX9VG2pdEg7ZiaxpYmBkSkMsWynivwZ9iao4lP199PBbWryUsOVKoagzqNusA8aqFe962bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754538594; c=relaxed/simple;
	bh=jvEZ0EdyagkFAp1iT2sHmz1MIOmaQ6t3Q5MarIZDKSM=;
	h=To:Subject:From:Message-Id:Date; b=tWP8GRK7owETMiNGH81ea1EMwZdzJrkkJOykB7fXbqToUkQAOH9uaOdYlwQzceh5c1xw2l2+cZJhzW2dWEpwACoRuNFddZfaZjtbr/gNsC8E8XWyUeD+YCAgRpQ3ROeGyIKsLif66QDSCHJD9IE0cJ1FaPuwPfi36wrGEy5U0Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kttRRcF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kttRRcF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754538593;
	bh=jvEZ0EdyagkFAp1iT2sHmz1MIOmaQ6t3Q5MarIZDKSM=;
	h=To:Subject:From:Date:From;
	b=kttRRcF0z/p68Zpm0nvpdTF1/X+f31kBzZmxMBTMSQ57KWIc1dq4zLD9Q/Sr0pf+Y
	 xecW6T7EXe0Ilubzm4inIkVqp4qp0RxTJpvT4cpK8eZLtVtS6pIDZDximuA251Qw3p
	 5yXHdAFaQl4DwFWq+BFhlGujV58mlmUCBR7sce3GmMi1mlItj69dxvfweKQkypMUFo
	 FUOnB01vEaOuIS+QsbV8GgyC7XbSDq1h+YxitqwkjE14DCnZMQZQ0IJuRP6YiHb8U/
	 WOa3k+rByDbSCtNIcFMxw78CCh62kcTHUTJyheTRQjYfJpGg/YDkm8D5C/CbLjhjEc
	 EkZsYwua5Jwuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37FC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453859357.25402.1180800770400559336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67690d6edde60d40f333f3c672f14d880bca5c82f94fa4830893e3a3ed85ff42
Date: Thu, 07 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754538593
