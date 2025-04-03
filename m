Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C12D2512ED
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743704996; cv=none; b=fSIUeQWRxnQ9QeuGgSt2/uBOR23iQPS/eQMQHyJier1vYicBfQ4sA8KYGMN72ABbt9JUft3VREQLaJDKnySnN87MIzzjo575k/1FOp6Es9bZh4xKJliYpYK85VYLj0QkE1qnet3IFP54HvQy2aTtbdEugbQKid+c1QBF84l91tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743704996; c=relaxed/simple;
	bh=6ZGB4+5xqUKVPdwV3axgWO/zUAutGUkVJ4Vot/4ABKY=;
	h=To:Subject:From:Message-Id:Date; b=PAc1Rq8SatWkA1GPADYQhtsJx6l8mQW0jn0+mxr1u6E1f7p+qx46sMZ10rNVkl7lIMJ7o1aWBCEp+TyhNo/nr3fptgaUAaSdYHjF0B/Tg3/8poln+vYwNFW6/v9PaUi9yWSQN+fJ1M/KXtoFUc8MHWhaGxPyvJRNooXK2wc6+Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU/nMx/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU/nMx/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34F0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743704993;
	bh=6ZGB4+5xqUKVPdwV3axgWO/zUAutGUkVJ4Vot/4ABKY=;
	h=To:Subject:From:Date:From;
	b=gU/nMx/kh/Hqz9j+G0lzpj+NzfhXB+/wvU29f9uR8zQ4VwHSygf9rhCV1AY5u7aon
	 vzcdhl4ASABHTL3R3ojngFkSo2fTn/2JekI8AuGr7V77b2xg+RYfSRNHQfw3nPj5Qc
	 EJxZFot55G9C546Gxa9StmG39pyrlbitohAa6Xyqjw8Q7BwqxMpEYLc7wagrwMvJM5
	 zxAnlHXlWfoU9LiFWahY4dmPQpaFUMy+9ROR9OS94qP/E784HKMPzw2/7bDjrjK8yM
	 sRfI3g+qWRsolUDjLuvV7CFNXXB7SWYXfu7vebiKGfIIxXCncPkgCmcSnk3AIUgOut
	 S62KMF76KAkLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97624C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370499359.29282.6537694662723066616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3939f1ddb96f26987bffa79e67cbe3ef3cb2b379c352dbcd2489b6ec632c37b7
Date: Thu, 03 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743704993
