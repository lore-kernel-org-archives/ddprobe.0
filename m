Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C2A2AE72
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735584354; cv=none; b=DxH/30sGF9tb7TbEt9MWG+KKWszAFJeokq8ubWTF8ALw2NWuXUr5yLnMMhRdsvKowlLpeBRI7czvS9qEqkcBvQI/PtSZ8P8Hst82CkzWQJKTjOy3fG48IK63d8f69PW64sCR4XB0GQ4VV3ifidBgG6sA+6/1lNQfHWuHzFB6UkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735584354; c=relaxed/simple;
	bh=vVWjg1ywrCS3bXoRaH/uUmKX02FzAvRAZ8sqXUN29Xg=;
	h=To:Subject:From:Message-Id:Date; b=N5YiTwQYIGSaSjxEi8N55eBEHUQmxt33LssuJ3rCtjp5ILYYL2cTcYbwgK9E/Nn1bpSKIBunUhWw7FrpeGKo4d+oVJe0V/TurF12BZ1xwEn5McCr+6k9zvuRJdNOJaZxb5dI4ALu9o7rHfpHSQyKeOiS1e60FoupXTDS1SxKh+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaPIWaRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaPIWaRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA03C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735584353;
	bh=vVWjg1ywrCS3bXoRaH/uUmKX02FzAvRAZ8sqXUN29Xg=;
	h=To:Subject:From:Date:From;
	b=PaPIWaRoC+SFdNhmBYXtTs09Tc6FU5sf216vHWnnq/oET0FLSbfDU6zitEb9TLxdj
	 gr6TCzTttbxNaD2cbUVLt9q39KvIKyf73lXaTVnQsV3AwJKLs6gMJL8n7wSRg7qwba
	 VgG5D+g46Sxn2RNHthbW0lLeoRZ39a+Bll85R/Ip/LHH6z5Y8yGYsSrIe3isU+BUr+
	 Q4gRQWXb7AnLGmwmHGEATF80uVxccOfON9zSBNNJdzhFQ+aQqPc3ytHKzdOguOEOcl
	 PiPOCb+PEIDFHs1SrL9vLaSdlp0vb66dXuWNhgMmOjnZEqs1KoVoQVBI353cbjS+cx
	 enwIAKC+Bku8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A65E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173558435357.13074.2497442574546830591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5170aa8f01b35637a16b10dc96cdb4c1b65733a5f6c41fea0c3a63bbb3b0bcd9
Date: Mon, 30 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735584353
