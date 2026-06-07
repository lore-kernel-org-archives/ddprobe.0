Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDC22D5922
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780857274; cv=none; b=mHhgV9NBGY9fqOyNDoemHaWK+/mkPrKiPcF0WJe5zp2Q17gMzEvWz4YlBuh8jc0GWDgLMEmihOih8cqK2ciI3tQ+WUnsvupNL5l075sT4iVEXIVB1GOT4Tk4wvA7MMw/CDaxiEXRAMoAQjko7gYVw4IdiSApAlXsI3U2QdX79O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780857274; c=relaxed/simple;
	bh=QaEJaPl8adORsW3ZGtH8ijl92oevDhEpCMzFpE9CfVM=;
	h=To:Subject:From:Message-Id:Date; b=e9sBQQYR/f1kzs6LLjKSBPUTFa2uvQ3az+b+OCQOiB3KT1puymSp+wF7ATxyGtNBNX+qFxkOqp2FyRBDhDJfC0CFTzYsZ4kasHqojA1LeC68RNqTVnSki6SZXbFw6qyTTeBBJfbhnhCXJb4jWMzqX9yz9a6CLWQKhMzQt//vsxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS/lJwj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS/lJwj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98B5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780857273;
	bh=QaEJaPl8adORsW3ZGtH8ijl92oevDhEpCMzFpE9CfVM=;
	h=To:Subject:From:Date:From;
	b=MS/lJwj4akFgLshymc3efnYi+vwGttbLTWgZLAC+fkBAyX664HGYrXRSScMk6s/+c
	 xtDqFU0Ws75Icy5iLVh6ovR6WodC+c/q/hRuosNqOKK8eKFbCMQvPeqYEgTZKCYanS
	 vEOg9WHmTf9HGAQriPoUZr7ClJDJRg/WTjgjSuTn3yg2uiSJ04l2JRPOF1OeCb1Sr4
	 Ns1FVuD1wwlgfPoiqSDoVvjU4a2ZwHnbVfinVhWhRnUjH2gComdHYJjpplGehyHBmu
	 /Cv7j5R0XDfD78sif6/pwKwgBE4l2zqOd88+AYdzb+7bo8BXD1qd0ThRMbOs+P5WAv
	 VtYTrymHpD5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE80CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085727368.11167.16740384040424668813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d256ab7eb00c1552c75bb601f8c7d1f4df786f5458cc32c63254f14917f39e4
Date: Sun, 07 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780857273
