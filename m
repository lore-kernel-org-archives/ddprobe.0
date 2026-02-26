Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A032316905
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772145294; cv=none; b=l+5Bn4TKnLh0px5Dki+Ugqq/3KL84Gww3kOofPAnsovs39ylWmDy4ZL91J38YTF8Jg0OuFaB8WjQOsuqxoOgbmEKyJjZMOZ+fBNZVdBw0v6oInr5I/RalIkdjv5WiE+xdMA9h804ReOnT4P6h+DNV9uZa6b25L/GSjsJdbvrHag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772145294; c=relaxed/simple;
	bh=WEgTN3oSxMGQnmv0xy2tuOfB58fmC+UYPuyiiTGpsKQ=;
	h=To:Subject:From:Message-Id:Date; b=pbIZvYbkdUAw/TXOofLQo46HlSYqqacEHfBB4vnzIkWTZaiTiHwRXMJwtalF8noZgNobZevQIAg+rrxXuaz1rFeh34M6ofRZnb7J1AO1aVbbja2f2lwwTxs39+EtcXe+kv3+PtIqPIdO/f0lYuF3Cq3QIKYAw/j3WtQ3vuaywJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsWLuKN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsWLuKN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8248C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772145293;
	bh=WEgTN3oSxMGQnmv0xy2tuOfB58fmC+UYPuyiiTGpsKQ=;
	h=To:Subject:From:Date:From;
	b=UsWLuKN457FbJi6xh7mIi+ESVuif6ysqOoePOG43CCcJRwMlwsooz3Apwvu8BiBfu
	 2fj1Nx34GGC08ORAmn8vvfNNZFvzfKM9/aEX0imQeBaIpoKloQUp6xv/ienEZfdfey
	 nSrSLNSC5t2YaxR3+Nh5eslzlG9S2mW6nT4gdRuTJFPzhwBHV6EvjbTQD+DLRfEwGJ
	 mpplxCO/OHw1RFx69WjI///2D761gIlEzScFb25bNRLegFV5KquZRlRMxbcW2cxEOg
	 l5oT6pNuQJNcZKpgjNVwdkc8v28Cbs/zpPjtkVA9kUROJnMefQ6dp/96zJymIl5+7p
	 taxsXbvwKWzCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EEFD9E1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214529360.16752.10186575022435287739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05549e91c7496b0ab2496412ec66e893558dada514e7b33ff6b63f7c56f6cad8
Date: Thu, 26 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772145293
