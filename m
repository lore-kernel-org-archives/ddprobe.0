Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEAE277007
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754702994; cv=none; b=gtUTLXq9KazwBGIDiHtFH5L9kyHjrz4L8ERlkW3uEf6fx8lCIPr3+EptnUG22Oy+Yr7044lAF9l/xdXeKJSJsJ4kluvUFmfIUNYjstdm70ECmY84LMkoyTBe4ttLi0QU80BywmBI4KmzJ5Tpwcu3zQ0NDN2279LnpVKePvl/N08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754702994; c=relaxed/simple;
	bh=p7bur093jbNM1yjZRjn0/oJgc/Yn12rVCpbKkcDfDJ8=;
	h=To:Subject:From:Message-Id:Date; b=qmaf5sldBoEwk5+OF/VovNBGuhahKqrQAlJugcOyIvrlP58nb2KvlGA43mfWNeXsRTd2RJd/Iju7uObe8JVy5veFxnw24rff5MZRExlvdBEqLiA74s0+TnzjIHFYZjmV050kq8p2cVqNN2CsVckivn8RtiNvslkJnO25zmgoC6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB3ZJ9a6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB3ZJ9a6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0DC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754702993;
	bh=p7bur093jbNM1yjZRjn0/oJgc/Yn12rVCpbKkcDfDJ8=;
	h=To:Subject:From:Date:From;
	b=NB3ZJ9a6LRYRhxmVG6uhQ3sBeSYnAmXxtqWQLxQc3TUjlbBDjEqnJuXkq9vkPoXU+
	 XSEZ79Y59TRr5pUcMGDA8qFmihhyAmHWtqBVa5O2KKxJWIueDEndmiMtuCGccq74zW
	 yhpa5WM63dND4hzfDIed1MQl2Q+hzpFnCFvjoqVyFD45fKqYUyGHrI/Jw5aocR4ZO1
	 B6yEV7LiiwjqH25TF5Uw6rShPgegLUyFjRRtPhTgte1quLyf8JuND991Z8oAj8Z7FX
	 NdANvwjuIKkowoaDqI5qnTNVZkLMnBQzpxp1nwJLx/JE+HMz6YPKjI3yNCsB5pOwgJ
	 S5sETR/aXRgHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E32C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470299358.25000.17372215303031039709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4f868de58353e1eb577308f24b6043d5ff9853a735671481a159e752f82410
Date: Sat, 09 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754702993
