Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F500263C8A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762552194; cv=none; b=RYwE2agklG3IqkJRYzm8Ig4082/uQu5PHfJVpB2yq+Hv/YpKUuWrpTjS/2nl78nwkEbjNMuxTusyCCjjHyKRv9QaapPgnV6kcEGbOQvb1o8Wr8ZFux2vH3JVhvrg7b0hG/i7Nlv/+xKwvsQrs4gxcisOmJXm/IolG60DoXekybE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762552194; c=relaxed/simple;
	bh=PywkXOPazXH1lbQUaVVfsmhUmGTUokn8zF5tD9avWY8=;
	h=To:Subject:From:Message-Id:Date; b=ny5NMQyJgIY4YTL6uA+56n4TZalb8bo1QcV7nWPCaYV+DYiliUdpdD/0i8UDO23YvmfwaqBdHcqdm1Cr2NT1MMIpF7OC4jfqUZFcqlLwhr2XdXTnLKtf0iFse9Q6+mH0dCfod9rleCciEvY5R+5gDwQNNuIzzVuvx360ma89sFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ciolj93u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ciolj93u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762552193;
	bh=PywkXOPazXH1lbQUaVVfsmhUmGTUokn8zF5tD9avWY8=;
	h=To:Subject:From:Date:From;
	b=Ciolj93un+okXumwbVnpdvw3zqRF38Z0++tFqUK91m/I9n1i+etUIpXFpu1gdW1SH
	 6ThAQNDDEh6VyTT0sxZs0RNSYYc0jum7Yz96RTsJQeXDE7AKwdjj0WJYCJ5wzIaz7O
	 IFG1p7iUD4I4vJmLy3i5qFQUpGg3cZ5xHF77J4JujJz/bhpYyLpYU7gkq2WoE76w5l
	 mrg5Pg2RiVDFZog3aTCtf03uIvkmwjVzAwcTLGXw6DcKpsXZXHtWP3ynr43lrb0hf0
	 j/LooHo75xkKB5luhn20BYyuirbb12jXSa4m927cK+V49zyRLILbWDAcSjCmU6+u+K
	 Adv+V1cp+UG+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5FCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255219358.11706.12107172115472741890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e40e5c6f0d39743d5e7f1316bee81ee94a0ad056454424301e0cc3693e3c78
Date: Fri, 07 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762552193
