Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCC827472
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771200294; cv=none; b=Bfba2uF1rXJ5ujVqwE4OyoAeDnVrk6mdc55IUyko/3Kco9puO9bIONB7VEMMvvi2CXCnEPqkYN8YwKW1dXSNG/AT5aq2aP5n87R+Z731osRzEj+EoHpnwR5L8dP5BKLlTdeTaDyb9XZVt7xsbAAYC6Wm7ir1eOxo49x3/Xy2poE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771200294; c=relaxed/simple;
	bh=rjW5YCPfeWrbBoXrkzMBw9wI9Z/sql6HQNrUREkqZY8=;
	h=To:Subject:From:Message-Id:Date; b=WzkqO4LLJ94LEASLK57sDZUBu0DQHpf4K6wgBOpGqyyW5W5pJCqMEsZleb1Kv+nh+EPdB9NLTUlYoBGqmPzx/QzNxDiYdk1vYMo4FYWXbCbrEImxdKvmZUyclnrTpexzorLdnAspQCoqfAoh9Dh0tiGqI963SS9u8VPgxa8BsaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPFMZrTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPFMZrTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21DCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771200293;
	bh=rjW5YCPfeWrbBoXrkzMBw9wI9Z/sql6HQNrUREkqZY8=;
	h=To:Subject:From:Date:From;
	b=jPFMZrTcM721hP8Fj8xqR+QbNRDTYHabCRt1ZFv34NbE2VpQJf0+o122O79kLNlbY
	 BYoj7W5v0MC4VV2Lw5u7kXnvJy/SsI9v8p3x/PbrVhvHjlhoLoQhxMqFQ3yTqwlYio
	 qGxkfO/Q5vZihScHDGCHfm6REf3PhrCW6pKVcMEvJV05LmVVl9xJJLY7BNV209ZDvA
	 5WlSL0LBJkVeB6WdSJ1Zx4h+B7IsvaXilZbn9BoEYVuI04kNj/17Tv/FyD5Yt6KBFC
	 4bMf+FC/blkG0lKtXuREOwJbyuRV4y7N7N96LWDFf216N80PUuadVZM6QZ+DbMdHmp
	 DpW9eBSS0pKtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B8AE63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120029360.5709.9536780929043550542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0b1a1aeb215765c82edb5b014625af4562d391ecb1fab3b0b34d5e9e80ca69
Date: Mon, 16 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771200293
