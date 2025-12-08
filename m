Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713D23D7FB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765165374; cv=none; b=Vl2koKuGrZCmh8sSMa67kCHgi7wssJfslFWCHJsbtPsaLzF46tmyXkPLZUxonG7JhiROrx0FWcazD/H1LWRs4mcOzSvnhb8LjZyqpVEA03l8Z2YkrvrG7tT+maE9RVVtsOQ6n701vM37rBeE2Xe5Szk8MGRXNNA9Nl4oxHeBMHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765165374; c=relaxed/simple;
	bh=xeDF436TEIzAuzNdzqQ86FypvI28N0qlPw1FTwU/H/8=;
	h=To:Subject:From:Message-Id:Date; b=D/hnPLgYii8Kj2TprMYmUor50H9TVESG27qeCJmVn87aXXcIrPE2xmnk7pICC1vhNc2TSM4AYt2DnhqnDqP3ipiSb7eeERq4za8NSGan7NoDir1BL61o78PN3JENrdvUAPJFiBLL/AjYMT0SWbPitq36m1Pqf5uACGn8Pv7LmZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdkM2WCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdkM2WCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66ABC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765165373;
	bh=xeDF436TEIzAuzNdzqQ86FypvI28N0qlPw1FTwU/H/8=;
	h=To:Subject:From:Date:From;
	b=WdkM2WCQ/b5RaStnrg0tMo2PwMaBra0I/OX8ODuXMbBG4slrOkuXMk2oRFhnJED8g
	 EMVGqqow3UuQsw0GQ6cuTaZIONa8FSZiXmqbLTgBO2gJD3LCVlcWXyeG0TPwIFU0ZX
	 H0Rq3WISEgYRQufMTr3IsItsIT7ZtaKelkvX/+kigw5S9XAOj69OOhhM5nl2v0WWza
	 i5/jq61Ckq+d2LCdCoja2/sZb4Xc2NwGinNPr1BH6KLVDKymmFX2IiNt+Bveb99rEV
	 CxwakOXOobAdI0uC9d2ynpX8zu2fz4U9pjUcU6wSn/k1DQOj0cEZsK/APXZoFI2RWP
	 bC5SxnpPfzHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F13D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516537358.7647.5598439014285275064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10eed9028df5697018ac8f39bd151231907fb8e3e77943a2312a66fe962029b1
Date: Mon, 08 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765165373
