Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4380C8828
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732428354; cv=none; b=sHSDy3zdSPoc/GIRk6trRBv3sSrcMKqEVTX9inNR779ZuLds7TGV6wjbf1aUlgwUAN5IIRYPuzjN7UwgugKZN9Ew97RHG53Abzz2DfVlpRFDQgCjrkeMRJ0lGttZ7pULUizpaj3w1SMyJ+kQwacLDOJsseIjTU7vDcv7ATw8ODY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732428354; c=relaxed/simple;
	bh=xfy/1dJKya9i0BbjDFkto45JlZchJ7/xmQN3YpzPwLg=;
	h=To:Subject:From:Message-Id:Date; b=AJYt8wJhg+qXFX+YXnBhcfX6xFMW5wS5FS3mLIJNdEHT7EwYocKDnDYwcOho+4y+vP7fPmTBZg41Dcf/BMjP+DkW7C39kpZ4ka76sZwybz+Y4FpCfIHoVqgnlnqnt1381/jWF0R2jZfo9CvrLwK1x5sjYxSX6Wk9gcF3IRuDiZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shzcgyQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shzcgyQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA344C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732428353;
	bh=xfy/1dJKya9i0BbjDFkto45JlZchJ7/xmQN3YpzPwLg=;
	h=To:Subject:From:Date:From;
	b=shzcgyQ2ZIj/NLbTSgSKRQKdap45MNRRKhqxYhuWToYUp8miZkr3Z80lyKRuFUpRj
	 jN00UoXtLY/aKNTb1x1snCYX/dEBZFWlkMmdLzJC8KFg375tJOm1rhdS7u11UQsWGK
	 qZw4sv/BKOQ2iu+CYzzT3+A6PFsMqudEKNgehiZbTNXBTR1Sxmh5JSSWiHNbKb4uIr
	 AE5H9WuiQu4LWUSZgXhXkdQzzeWgzkmD7U736KAcMqZjP8y25i54p3gz81V+6/JNGn
	 0Td41P6tbEbN4JrW8ec7i/XNW0I7GBHXrzsj5uz8jc2H9np15JzZNdydwhGc3DqS5Y
	 LXMtUmSO4/FjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96846E668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173242835360.17756.2801349084315632412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3dc49b4bd48691b8696f24f7a4725e0673a2d4fadd8e488670b0b22ac0cde9
Date: Sun, 24 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732428353
