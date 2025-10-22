Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F2A2AE89
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761092394; cv=none; b=f4dackoi5ruJKTXUNZ4bztAQDzEN/vXx6HY5XqcjG7HZY4i9q5jjAA4YpF+0AS1FUYBUDt6WJ3dIN5HdQYfJqbX1EFJ7PfOPb1y5QJF8pV0HIZC35NkkyTpKrd/XoN/dssXpPCkKBX1fJvCE1e5UH8usv6ViszhblQ4SFp1YwnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761092394; c=relaxed/simple;
	bh=sm5NXHBbqiKD+vlU3YS0jQT/602awMEQE2ReuNIb394=;
	h=To:Subject:From:Message-Id:Date; b=hzb7h0f4ibyjksH0/QaADyqw5ezKjKAlVro2yoRi36BSPYun4Qleu3/0J5EV/d6uQNNdeahZuWhDCK/46vnn5ONblOPzXqRUax9UIWawpVQ6vyBCXtjRdL4WViQQVgsCNUh+ydRRFrnlg2xOacOyGAgv/ptQw7DRWjhI140mctg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTkYDXql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTkYDXql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761092393;
	bh=sm5NXHBbqiKD+vlU3YS0jQT/602awMEQE2ReuNIb394=;
	h=To:Subject:From:Date:From;
	b=cTkYDXql1W8cvM1BCfNYX58fGXP9oe4p/uqXVA+PFkeuGgw7f/isGH5K0JK47qpnW
	 V89pCc7ysP9Mp8OgeWnJn5rJafHIxqfVWTZqwN0Is1mg1uZmqBnt9qxDgWxOR4ObLn
	 NYWrO444qfvRsPS8IJFO0rj5tAyLljPycovnOgsi3hoCEj49sQQfuTtVEDjytobl3b
	 lAIo7kKYTX30mknrxm1VtXssS9GA06EGg8qODo3/Q/1rElpKdd5qbfIFTLOVRF49Fe
	 fTZ93clFf7VlrbVpR3HibyxC5IFRMzYKQx19GHzmFaQRkmYzSgKYIATPwlWpaoJQV6
	 oMxlf8RGoaBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90892CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109239358.1064.1127954083331092628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cfb64cbd8c1ffc21f4fe9fc4a144eaf80dbae11989b1fe4964b37cff2cdc26
Date: Wed, 22 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761092393
