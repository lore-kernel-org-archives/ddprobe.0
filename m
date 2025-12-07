Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232551F956
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765074174; cv=none; b=GL4wcWEvJ5JIsclxqsuPM25Z9uk5mqvxAOO4jja4pFkSS/ASSqm4tJ7AOdn5+MkyPH/7RtXXDia/ooc1tk8jWwB9GSkUbVz9Gva0Ki0kysV0T9MhjaTOfQWdEyFvzpZ7EI7lemY81GaAgNXkdd7asU4fTYH1WVW4q5A57JQ46mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765074174; c=relaxed/simple;
	bh=Sn/vGJ/fwjWsBDQ38irUrn/qNWyHCb+YUC7Z5hdCaes=;
	h=To:Subject:From:Message-Id:Date; b=CIE5TmIExuufzOLZhjjXHkjpNeOSLE1cwDIQ981kfYNZ49jCbEbUcbjQ5mBf9sgXa/xHZ+ntD1kawgA/Xo8ZsjDmANJNb02JqVLcMIDpOgmXgs0I2y/iRSmSmHdmSFm8TgrVNQeg/Pm4jes/ODlVNHRKpM6qg+KgdJoy2/BzOV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV0O2tca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV0O2tca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A785AC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765074173;
	bh=Sn/vGJ/fwjWsBDQ38irUrn/qNWyHCb+YUC7Z5hdCaes=;
	h=To:Subject:From:Date:From;
	b=DV0O2tcaoXvX3BPFdOKFK/2Acu4NPjrTS1B3qeuEvCMrg0MQbOhNtf019pA2kBZCN
	 QmijGZZ8+AIDM1XxEsvSndV7L2yAAKtoxxARNlCbP5xysKNjkrxTBeHfzSzrJI1ckL
	 ZkaZyntIjgfw8L++REVehRFIH7/dN7Szu0ZZ0665dZFpKeM/b2D20FHhbQQs4KWu/o
	 dZccg3to9ZqCSuYD71TfUqA19jpK6cQUJPg+SsE3hVUc1sbkdYM/kMsZZ1lmBSaiAK
	 leyO9BmX518a/w76+OnOl+HhvlhyQXhpiZ6reG262d+Dv4jP/87PWZ/hiTr07Dfore
	 HZUWfYl6P0THw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFAD3B7DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507417358.12079.5158535084100710223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbc896cbe76dfdebe699d9e28b8a5c5fbfac64c56c33bfd5e7ce5b70d6615d1
Date: Sun, 07 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765074173
