Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34C2EAF7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747566594; cv=none; b=SlLlin8tUlJexUWdWmEhTL8B8RRjjc2Ie4ORoTLR/jUUee1fGd82H9jiG4Q1gy50NKvtZuDw6VG6uDtLZN3aceVdEVsDhFyettH2bkAMSSz5JWfhJuxZ8e1SAP8UK0hVqXF5eh5PQ/RIHDx1dKgZT04QhqRDifhkV8VRTFKvrws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747566594; c=relaxed/simple;
	bh=XLdRd0q2TMQWkfLAO3HAKDD/jSRMXkWKsssa66N6mMY=;
	h=To:Subject:From:Message-Id:Date; b=IPFfypxbnHksajwNjnBRyJFu+yYkQfGD1vqkH9Hm4Wa9G0YR+K+EbToz0+OHuFAG9dgoG5XL517ZxwrHvRaRcQtXNS1aeE70we9WB8dsCgOOiixGuLibapmBbdGveXPOR96pxk0MnfFdhRfaoXWrGTHmeu4KE3URat9By1Ggi8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0jlUpn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0jlUpn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7573C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747566593;
	bh=XLdRd0q2TMQWkfLAO3HAKDD/jSRMXkWKsssa66N6mMY=;
	h=To:Subject:From:Date:From;
	b=A0jlUpn17ztVQQ2FD8bO/NyEqrg3DRgzqW0DhNGUNqraBVrPvQ22CM1pYhuP+vbiZ
	 SfZFq2hQ5UMqb5a+jgSCvMPJRVn6SarncHEzVBV7o4lceQTghQEUhCxQqWPwA4bqAU
	 TUVTOFaJF7oTGEPBALihrIFI3Mu0EyUsCzjYomA5u17YeXqpCNNSEUJ1Z204fSOFuv
	 uqYuZo5tT52HMXiMbEtYToW5416lZSUcYmofcdK3HsHIbumEy586DNOlZbfIigMgJG
	 oOHn71uQW7zgDFKCk9pBwjWD7qY4+Q6vEcbtqAD14cstMVsyij/ffaGzWsEPo2uX7v
	 cxaFznAqV9fYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC0C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756659357.24980.16018254974372118972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da927cf0b1303c70c75572ea55442737e1acf87d6d2f291b483c182f966dc8a
Date: Sun, 18 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747566593
