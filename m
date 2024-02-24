Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC41417FE
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708736897; cv=none; b=AvZl/3A3nzUQXvfvIWiROxxXJmRn96eEQd5N5cmnY2i6YODOX8p3inqLctUxt7XUyBl/L9Tr6YvrYn+SSzUWyvV1vDN2bf4hpeiw5DMTJ2RrZbkDHwWJ0ZSEc4uQGIjSdaGqufzyjtDeh4FSpco7pWMHbmhRAXM3DskUuaGjWco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708736897; c=relaxed/simple;
	bh=1xwZZ39nameyzM66n5hhCgXH33f9x3+xp9EQTt/0JoE=;
	h=To:Subject:From:Message-Id:Date; b=iA53fCnNbh3f+7XEYAuN8p0CTcCE55pKQXXfnmfpVDMvY/JQ49ZBN5BTrOImTHxbZPubinKrUDwFneXT9uaCnx8JXZLw3aQWP8YkUs1PoQaGR7oGP3edrJmsykpEep8815t/5eq86g2vR73Bzlr/3Oin++aSHTrTWVAq0Tp3Jhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU6mqmdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU6mqmdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 935CAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708736896;
	bh=1xwZZ39nameyzM66n5hhCgXH33f9x3+xp9EQTt/0JoE=;
	h=To:Subject:From:Date:From;
	b=gU6mqmdNxkjfQFjR+Is+er7Nmffq0oOQWHLL1bc3Yxn3vT++87vkl0fbwryT4j0r0
	 FPXSQwv1WsBEoexA1nYKTVBqXBKk7+6z1V0MXtSIxkgeUaIq3Wg3bkwthwT57X7oD6
	 3336m0T5bvuAmBePPsr9DGOSqsou+VVJ04Ofi7Cee/N2/Rg+cFYdzLoqR/e+m9V1KR
	 T8BQVOJTAV4SQGCxmflHoBZt47z85gaFeUmlLFFhkv7jS2O2sSN8+mmBeURvRpXs5w
	 iWbx05qXqdsA+q6xF/8WS+LqvJNtQFanJUvORGGPkx6BPAqc1Mf8mq7SnZTxsx1lLA
	 mSVuIvvhx4cLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4ABC54798
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873689641.3959.13296256553859639914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c84c99350bacbcb8cdacc5d6667772c61645f3f75ba01ed133540716860602
Date: Sat, 24 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708736896
