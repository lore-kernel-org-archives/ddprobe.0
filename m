Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DF028E7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719378203; cv=none; b=RSFeh6s1xqH1XDUWQIVWZ7BONC26quYB3PMqmlKeKzf8Kv1+P6WXV3aMdb21KfihkTL2sUqsF6gkS6SM441u7O9yd7Tg0qNvqkjzoYcePCd1QBTMk1gISbm0aff5Jt3K2M7evBSasfpFRkr30gtSZA3rHG6YSN+pbGLseP+V1Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719378203; c=relaxed/simple;
	bh=Z5WUj5VoAIJ4fgo4TQQ2J282bv1psWlCoqNA6kY+xPA=;
	h=To:Subject:From:Message-Id:Date; b=KtTzKdCtrfO5yBtSTY5tzE28LLBtioq1KqKnIBLxq6fN7IM9GB++v9sX84Ji2H3Cgqj1MjDyv2Y0FWjtXjUp7atodV0apgJFViYyvABGa2NroZgIzAbMJ3nwkibu0UErXoitsikdQ3dBNkNqgLdtENW9f6anL5g9fqPUkXjWMHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRGA+Cg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRGA+Cg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89DCC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719378202;
	bh=Z5WUj5VoAIJ4fgo4TQQ2J282bv1psWlCoqNA6kY+xPA=;
	h=To:Subject:From:Date:From;
	b=mRGA+Cg+o7Rpz1fblpyhO47/0ctmsg3MOp1SmB8InUPoo0RDD4yrEqaTeQCTCMCYD
	 CV9zb7yYPU2XQe4BnYQxXJjpa1BR93+kVg7hyp+4xN7II347W5cadJqNEMJa6/kSNY
	 AebQ2yARICTbIM8rCesv7AHwbTacB6dpUpu9b0d6q7qxIq6UsEe4XmQFUIiIbwZXzR
	 1Coj+5wNEDH20QbTQCHe1bjEcA8nnaxbwoN4MZkFyta9I5Ad6AyIx3Ex2t+ANDQP68
	 RPI1NDdIzCfOizt/ZTW/kBlUcM2q/EdKzvXa1Tmseh1aF4P7z1CPKuMvUm80yakAQ0
	 8A8sMOB4jVE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37C2C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937820279.6911.8027047665922184004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b0fd5d3236f5c4b474e3554ea6b375f1fd90723f9fe44a3e8b6b67acb9ef8e
Date: Wed, 26 Jun 2024 05:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719378202
