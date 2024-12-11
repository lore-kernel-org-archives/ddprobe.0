Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0311BC085
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733957754; cv=none; b=dJ3YxswDNl7xEX+9Y6JWFqMEwIkSan6I5zfRMsPrYArd5DxuXmF6THjleSNV4PYAh5Yw10rI658uMXgOyBfvZWBVuGbS6Wrdn5TZt8fO5qpLq4tl+u6CskbyjqXm6Jb5D56KuaUnfCdCV9oDY+9iKove1uokGyOYs53MO/yGtZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733957754; c=relaxed/simple;
	bh=lWwC6AjJ5OvbQJJb4ozL3EENOmKt4HiDWpvhhhFaMSM=;
	h=To:Subject:From:Message-Id:Date; b=iLV/11yVocYqS3K6r9ojMMovaBywZhugU6PmAcPadW1J7v5cBOu1bX/9wtwAhrmHkJDWW7qXDL5O04uwBdstTRO9Dm2ABO7a2yLF9FM5QxSgeBvtL/eXoQW0MT2OsnQDbCplAPth8rNrcJxQA+ltUyDO3FWqRGJr8mJCmd7gWck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS9sLFBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS9sLFBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5525C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733957753;
	bh=lWwC6AjJ5OvbQJJb4ozL3EENOmKt4HiDWpvhhhFaMSM=;
	h=To:Subject:From:Date:From;
	b=YS9sLFBiT/gt6ZvnVPAqFsxDqWnxziU9EV28IHV123aGZp3B3ornkuEDNrzTqaz2L
	 m6hibcI7UZRcK94ByuSilBPUNE8cTFuwlOPtu20Z+YGxer7+FTnLMklut6X8zLDPLK
	 diI+QRIIGhrLIhlFgqzHClCNQbsSCz7IlC0AOIBGOPOAggnkAMr2oHrV85e3fkMYho
	 IMxB55U6cO24qQmKXp0l4yy6nr2S1p/IJD+uVKwxYbM88vhNxUSBrZRGpJ+Vz/iv5F
	 Wxj4cYA7KwIwv9zOrWsAupDeY0zayl3HmZ+DtBgw6mJUlPlQW708elGtsIao17kq67
	 zYaXUu8R9DQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99484E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395775361.18919.12473839930814502777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdce14b9c4e780be69b4c714753e23b267e8fbe7dcf02214f07591981b3cb873
Date: Wed, 11 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733957753
