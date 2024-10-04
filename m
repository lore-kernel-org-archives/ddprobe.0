Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCC12E1CD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728072954; cv=none; b=Md+kLTclXpOIUkIkigZKBpKeNuS5lphwqUZe0/XQer9hUHu0kLynY9PmUuOcYcGOcxVkNjxuJHIU0cJiIo0nimc+KxmzDs3wOEUI9k4D5nMhgr3P+HWgGJyMAlSYSppcKG/VBj3g6S7DVpETlXR1IH4txb/pv4qi2hIyneoomyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728072954; c=relaxed/simple;
	bh=qPp6JVmoEiDgO3L7d8XkRQAyZI7x1v3c9NbrhCq+ih4=;
	h=To:Subject:From:Message-Id:Date; b=l0dRu8ZCSy7CGdjdYH+/HhewW8jATyh/Ra0p31T2az+52jHcKv209s5aRJBzqlbQasRuh13TA8QEev2cUwB/2JLHtmA/A8+vVgCud4s3WUBt5lwVs5Tx9kpVk4ATuORjiVSsNDXsD1+JwZrdCeZbkwL9P9fxIC4QefSEacwtFvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seQ9oSwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seQ9oSwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5612C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728072953;
	bh=qPp6JVmoEiDgO3L7d8XkRQAyZI7x1v3c9NbrhCq+ih4=;
	h=To:Subject:From:Date:From;
	b=seQ9oSwyG/3eR0f5YudqqQmDehoz5SqVJtZlbYafK65vOHd1ZV57Pa3WjBrlBuLG2
	 Ebdt7qJF/lS/aHKqea57k4p2LBztGkfFfizOPIorkbKPq13UIGoHf+xmxc0hsWJu7t
	 +9Dqcutu4sd+mSDdKdEG6/PO4cx+lV0FNvkM9+Hpma52QU8oldJ4egAiuhnoL3m9yf
	 xj4QtRpnbDqUqraruOcxsjDDJa5xeTGHliAwbwqzc49NX3iWelFAGWmAEst848bs7K
	 qqf4cJfxH59sPexZXixrxuj3aEhTXoMARCmUSkQzgbIpC23jVgTXnmKGd5MqrHQBHi
	 k6vOkHoQJsZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BECCF885A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807295358.19454.14458917514910847425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f70d425028022efcf9a4ac5b42faa13b4e4727ffb8bad7e4ccc701e1a28747e
Date: Fri, 04 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728072953
