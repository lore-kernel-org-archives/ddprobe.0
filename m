Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A0A2F3621
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780458274; cv=none; b=UWpWAk7WdNdpkAOCa7MwGD3N/fXZ0FRb8fuxbzFjd5PRgNh8dzi1ZqtCeSsLadPcLVi2b0tDmUiaTpPyiS2h6ujmnuAqizROfCipUQ3vJF6rJhuh6xnB9FPs7zaE8Beg3M0e5u0p/6v+33XAClaYcQaLl3cFKBMN6SwMzFJuiyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780458274; c=relaxed/simple;
	bh=/+Dn0DmzBs0+kILUIl06g8Ty4KmBhD9gGXjGWb/UVCE=;
	h=To:Subject:From:Message-Id:Date; b=RgMbASXJBvvD/5SLWNj2dxyQx9n1VkBbFeJ/QhAGMVY4yp3ISJqVjiqbqDjTdXXxhppAIRmfbImRL+codJEw+mPpQaA8jU4R613sWbokPKYuLvrfYomVmgdCKG++yyPrZqFznvJfDg/QPOWO8z1mwO7VvlxwoV6rv0TFaJs5XXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZYTeVpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZYTeVpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B28C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780458273;
	bh=/+Dn0DmzBs0+kILUIl06g8Ty4KmBhD9gGXjGWb/UVCE=;
	h=To:Subject:From:Date:From;
	b=CZYTeVpcWl+5W6P0py+s17pYkz8Mozk3Bc9mjSg8SjZHxIBQU89NObKzdqAGbDu0o
	 GwAQlx07GqTqrhdpxNWjAYojORknspYbDxnwjFmEPeJwNdsZifigQ9sIOgp7bganeH
	 t1hbnGDrPb9d+QDmfVjcDCjNxVHClcDODPa86JO/DFA5+SQfuigPwXoZR5r/SjlY5k
	 977BUqJv/Y3lKdXVpe30xveZWPUBpPrtQZd9Y0848iBwQ7K+kNOO8HprzRzFjhXqhw
	 KIdGz0X4tuXCh4+TxXX4URFGESkWb8m7ls3uAntAde2sksLi4pD+LuFIS+2u8jxpCB
	 cHkKgLbv60Xvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F0CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045827369.11218.17966056473130393826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefdfdb993ebe97d25c9c9a75de3adf5375e94d8a8241f96d5d01fef400f9ecf
Date: Wed, 03 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780458273
