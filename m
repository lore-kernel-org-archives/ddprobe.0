Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5236A247291
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775133934; cv=none; b=GEWOGsEfMRkx21CQqpDO2TOy5FfEsa0pSTMK/9UUYaiVBaVFz3gATjulDyShrNgf8Tq+bVsY0SK9AAeB2sx2uVLDmpuSgMTA1De+kTkOlZzhDV2JIzbP/P8odXgXwP8FpiTHeiTbqsAEyPMjdfDnRN2Iu8QhYhyENV2X6oXExQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775133934; c=relaxed/simple;
	bh=pw8q6lP96QintZhFvUl4HonVj19ypOTx0mUfXI7sUio=;
	h=To:Subject:From:Message-Id:Date; b=u1IyezwtKACQDQPpDgRMwughwrIjEwxsywWEBEVyn96g/nU4JH1VF8NyIOAazjdssNxh8hURBlgIdopiNr2CA3c7cbF03k5hOShkXnFTvEoTqPNYW+oSYD4ebeEMYHzvvSGHBjXUHgKzo+chrEJUlRgCQQusog5Abv0pdGIiQ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhHioXec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhHioXec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEE3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775133933;
	bh=pw8q6lP96QintZhFvUl4HonVj19ypOTx0mUfXI7sUio=;
	h=To:Subject:From:Date:From;
	b=nhHioXeclSWKRMJtDWj6Xqak6FRBaCUgUoreZDyJOY1wi2VXrKNjrPV2BwKAdtwFb
	 07vkJ1O4QEBGMAl12pCSF+aISmkCX8kDulXkSe3VFfbOPvkfW0Z6sNr0SMaiVimBvE
	 sdqV1wcmZ/k8YlHDIkIuWg3OMbsearH4ffdym5QmW/XLopXU4PZJvfIBegmuLcdVIy
	 RKj+CjrGYG7N+D5HgHKFBT4A1J9LkaS/IoODVIr1eBGQENDGVAotRYRt23P/6PpVuW
	 TVF6vW2zyyQtiRYQNKkewiBAHYlVkeTitU7OW8deWQwO6yW6NROAQ1MZvoGsakufBb
	 d6bRg7NUlvdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E6D3941A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513393368.14684.10010840418037981204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed887ac21b0c6b267168f710d27df9f90ea9ee0717d784a186c49da1b5302ec
Date: Thu, 02 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775133933
