Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12779295DAC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770650034; cv=none; b=sdND14prQKA6q3EdQGS4E53ZRIbVJ7fMZW2dDQpT15CGkYDp9dNNjwUhzUCPW3gkhH09YmKz5+bvHBZ+YHt0kNGdnwPVd9wf720PUrYjnVwhzXII7rdCueE4gP950MnssBLFLWWo7+HzppQ3NPm8bV/HievyK0TI1yQqohRoWzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770650034; c=relaxed/simple;
	bh=4PgeydSiZQmx+xdguT9bqHfZX0SJlS4kgWN+5UixqIY=;
	h=To:Subject:From:Message-Id:Date; b=bsd/bAHRTF5c0WW6ID0/0Tj8Aac5Z2OHKIVaFxzQyqpJi0apRlji0KP9Yuwk2K567a0ACUiLM9RXTxJM1ckYfhTt9C1UAiMqPEtswZrcoPUcUHZ70b6gvYdp0NHoabJTP7EZqnvQUg1XFtAIb8Cv7OdG3Ck1ROJbELlsZ3dbw58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmC2zzVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmC2zzVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A7C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770650033;
	bh=4PgeydSiZQmx+xdguT9bqHfZX0SJlS4kgWN+5UixqIY=;
	h=To:Subject:From:Date:From;
	b=gmC2zzViF5bvpuEZZ1+Dr3q0gaY4nkhzsSmZT5pbTavXJ2BZA5Vk6/l+Rr1L5D0R5
	 3r8oZS9sy8CG8B6bIxfr0T5rIa6xVxjyciy/u6sCYN/Z5+nWuy5UPOogTyAVAv2pTh
	 vt2uHOEvPC7FgRJaX/7pdeubsN9Mli7j6tyTFTCXFk+2mDOhvW5RzDtmL//BX9WACl
	 m85q/lVR82jmHLnYDpy85MK97YjAYUuiOWYcQm0WitBDQQdmiEGCLDYShOVaRzj87H
	 s5xD1p/MdCznwensH5WXnRUY0P7IksapegIZrY0qvmbToKC4Nw28Jh0t11z2Gxxr14
	 0N3a9u9fW1mNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96594E81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065003360.29284.6242351175408663030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8ee2deeb889e8129f530814367dc8dfea07573b8b2de5b006bd62a35513cb9
Date: Mon, 09 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770650033
