Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404B16C688
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716895463; cv=none; b=eeZi+rM5YIVJiZxwK54qeFXs5PxRYJhXYIOwc/Ll1R8NdztITMAdmoYUNs5JqXWT1KLeYE3ic7Gy8WEOdyJUnLf11bhaugPQdk5OXlOdEuSVduNZy+nSDxVJ9jOolEyAoY2O3Dr9qTmOyWb1WlIfbird9cPJ/Wf6RagmzNLBw78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716895463; c=relaxed/simple;
	bh=tkormk0yie2yHwmOwVfvsL177QyZZMrm8emERBmzQ+k=;
	h=To:Subject:From:Message-Id:Date; b=VI61GtflijlXHnX9D2r5kLwWpDqrOrNQN/sCH1CjQu3jKK1/5BahTTy6ESJLiJzICQEgmAcQA0XnrgV13qUSKOJ8LcoHNtvo+g0ESQ3JfRHxzL7oJ4JbLBmQKQLy0UF8lgZFkUlg75Ylz0WPMhCWV/k0gKKLUKdA+lFYze/5s28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKLg+7XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKLg+7XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D693AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716895462;
	bh=tkormk0yie2yHwmOwVfvsL177QyZZMrm8emERBmzQ+k=;
	h=To:Subject:From:Date:From;
	b=oKLg+7XEZMybqLZsI8/rmJni/eJTVEbaZ896tyfVJGeSevI9BIbfYhDwOW+8avmk6
	 OI2zWoyxNGka6Ikd7xIJeSkbfF4NM8JA8pI+BNNaWHOhgWtZ+OqC4eEYnvjjFz7aYD
	 aCqWWwmAthKeZLXtFJAIwDHQ/Fg+E+s/BK+K9jt9rH771H4BrPuCfp2F0MaRxfm0aJ
	 8laIOgi+OXN6F1AX+oluWuNlue0SMXtCzGe1OXDUqW4ZEvvjmT66YZC/aa7TvxDe87
	 3GwnmKX284sFlHXoXRixO90y/CG2TxUGhhuHN99pDGzoNq3EN4cENucFn8QsCyYHcN
	 KvyWgAuH26K9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21F0C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689546278.8367.11032491505800492163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6574cb869e95be84aef215d6fee59c4cf762cf3a31b3fc6e1fec27a31cfb493
Date: Tue, 28 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716895462
