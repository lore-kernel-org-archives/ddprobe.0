Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6B120D519
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742358596; cv=none; b=UHshKAAIIAY3F4U1wmi8Ems7CGI2jY0QzvsxmgYV42RlFKu88AMrRWsDIOG76GjieWJpG1arKGGgZvjiPQldNA9xzlKSzBKawQxs30lsbvsgPHwi3nhIMjMpTJCimSayuSLdaauY/+nbTI6teyhZl4ioMKpwqu8UIBvgATfg/bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742358596; c=relaxed/simple;
	bh=G9aSxuIJYBjuNlEuzdzAxeyjt/2jub8Q3av/SI0PJQY=;
	h=To:Subject:From:Message-Id:Date; b=kRmTyCCeIFqrJdmgFzBVHtZq13xRtrYKjLVt0/vS4KzyuY/+G6VCrjWHcZVKEj4ggnRsbzXCjI1AA/+6DUDSpeEQaPcGPWtWJ1lraPiA0yUdnnrHQlmbnlTcv5Z9hsf0lMsvuAJ8HKo5sPlwQfVw18yOwP4/6qxcCEWbxOr7r9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6BHzcSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6BHzcSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A04C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742358594;
	bh=G9aSxuIJYBjuNlEuzdzAxeyjt/2jub8Q3av/SI0PJQY=;
	h=To:Subject:From:Date:From;
	b=r6BHzcSZA1Jw/FlVgTc6dy1fz+L3bBD0f98lL2+Z10LP3qFshiuLVkP0+5xqSfw8z
	 MUdD/bRpaFxSpn4KvjIO0lK6QqjDbzCyso2NEQZhHOedN340tPIil0ubnzjTiXQdUo
	 1N9ZDDlbxWiyM4o6igFNG72zyuoA2eM+uaBjkTkvp2zJr84rJWkpu9h195TWr12kPk
	 utvxbKRdrV8uy/X0AgPLlkAGE3AdZTymDxGmgOssUzKAcNfwFE31jKniK++cLEwXwE
	 MEyoP2oZnGxn32Ew3iGDVHBM1EzmPk1Kc7n20fWKjGI8TPH8pfLYXSEWZ7Vzckw8g8
	 Nv3mdS+6Y49Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27D6C35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235859366.14497.17376020066086649647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9377c0d5e8461ad778096c72d214b65713db847ec9458ebbf55b41b827a59f51
Date: Wed, 19 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742358593
