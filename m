Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF2D233723
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780535674; cv=none; b=LipB7y0iRGDes4F6q+jq0CBtMxvwOcQbFFWGsQTXHa0nHWc9r9sqg37QDteIgtmSUQFishjET6QIlZAuTSv50ONEdpL8x7to8SPHlJvDLZlxnMypxQQoocFqS7gHu60pE1lSLF7KcpAvOjlcHrBYtwJrin0jQAyQZuU92zRFxyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780535674; c=relaxed/simple;
	bh=6nxEHbrlRqhE14/9o3bm2mNhbxoxclLDCkHxJJ0lhtA=;
	h=To:Subject:From:Message-Id:Date; b=O6d0WInnpnnDR5314pBODkIWLth5iuy4MtscLJaUKzjEH/6Gy2bq1cI/8aCDkUUdDMBvCcLjLtPABvBq0ubD9KCpAPhKRjwS3qJPB+GFbefO6420LzqmQR9tFtUbqaKEsGXh++gqAmBx5WxkMFXWRLLIRH2pyLvHE42k4G4bSKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iivkBCnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iivkBCnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A6C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780535673;
	bh=6nxEHbrlRqhE14/9o3bm2mNhbxoxclLDCkHxJJ0lhtA=;
	h=To:Subject:From:Date:From;
	b=iivkBCnQiZZjsNlIpo8HSXUKkoBLxQHv4P3idH0QTwpzJlPaLNpk1mdYUTfAJWrV8
	 bTNlf+IfORjuNqNbG6+HA23srvCHyIGPnzqvU5popWevGZj0oexV9mTNCRfsLz/1TR
	 4bmwMGwgVs5+JbG1Sv0RNZhtHW9W0QzW6KVY3EBWXaxeZASAgxoudJIT1V7Wt+4Jeb
	 n4EJPFpKVVxX7L89EuOf5AiYCOvocpjqRaC5DDmRSKCX17mFl0V04grkRlHxz10CZJ
	 06DSW7ZVsbwd4xGbClfkpURt8Hc+sW/RRrnIIv1ahoWDowBbRwdYmD8If2LTZWNlRf
	 XljXmlIXQWhYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C46CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053567373.30207.806861650265378356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864dc1a3b1f73ba6f54bf4eea7ea41de251ded47de93729ccdef617d5420f794
Date: Thu, 04 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780535673
