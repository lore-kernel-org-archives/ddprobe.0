Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3974435
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705742897; cv=none; b=gITRcbGdM8umhbZb4nGoNdjAYqBpRuvdy1+0q2XWZXEU+ZU46fkZKxAGZzfOk94lxk2Y3pFNyW0Y024TUgOTD/dNinVO/vGJP/YYKN67IaP94zgXPsC0dSLfnkr4BA9iYGr5AnSABNgWgpKY0q9vkABveVctEc4oWdEVbI87s4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705742897; c=relaxed/simple;
	bh=Qz4hFP2enIQHehTfv6FWvqtdmBiAQAfcG9RhshSUxqs=;
	h=To:Subject:From:Message-Id:Date; b=SDaSFrBkPvQVN9VQ89ufLndYGNX3nQVMYrqW4jvpLwpES6qj3WfloHSnKe+Pp1dt+XJcqRNTAovc+R1m2cu6n/LzU0aMtFBmQQoAN8yEm/lYihtufwR/hlzmzredE1+sukjWCOILiaOcopUn1SkEpuqJXR8lygdJ0EK7lWs51kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZyfGndP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZyfGndP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751D8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705742896;
	bh=Qz4hFP2enIQHehTfv6FWvqtdmBiAQAfcG9RhshSUxqs=;
	h=To:Subject:From:Date:From;
	b=LZyfGndPvKOIRWQmWXBBRYDZ8CUBLazT8DXg/3uE0cCpqovaX1x54634aDjLLP+LG
	 ifPEv8+/0X9RKYWdNPhqDv1wuEqPDxDaWIYsQc/HU4234l4ISxbDzAAkRVztfuQtcX
	 de23teZE/jRaaVDxJih7aDIAuCRzAwJPr1Ox2DrZZ+daxL7pjg9IQD4fJ03z10oPn2
	 AegM2cyApAredr/sdY74DhHacDdZh09U+wjKy0fCrwbyE3mgzk6Lrl8mMw/wUCFtcg
	 q0vN4l1pH2/pV2ZSoKi0RchasRIbE5dehUshTV/dDpKYyMdCarwQJ96YZOYZcDZMd1
	 5NFxGwi4sbGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B512C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574289636.23702.5482728375724637333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780ab4c041aa7e195469f8d55f2f416ff6af84761d76ae1fb329feb26d072aa2
Date: Sat, 20 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705742896
