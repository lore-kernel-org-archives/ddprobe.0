Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ADF86323
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737048354; cv=none; b=Vnni8pfjvPOLOo6eTHa7JN0q7D1oq34IN1zBOSQFSn/ZpHu7YAOMaUUBrrAmAKvs+DmUuGkUJCXdIXBr/yGdh50LTuBirK+YIaaA85DRMKBMzVYmBs0Uva8Mqyz9YBNTkVQns8nNcjy8kb2h9xwC2N5pbciYkIKPBLcolXoOh/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737048354; c=relaxed/simple;
	bh=LBNXvVFMTtbA/DiQOWpzBxMjuEVVF4RpIKOwl+8tq70=;
	h=To:Subject:From:Message-Id:Date; b=CLdxwZqklW2g6fOTURhIUUXfgk5C3LunAW0tgVnajXqfeDuFknhm6195fiSUF6klghHKIltQk7zxRfDGh302cjsLweVU5z7aXSdFKC5uaOSc9Z2bqt5PD7grHtLvC2Fm5pva1gX+N+ugjpHTsFroHR9pY4oWZhzha8hAiJqdzJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIAhQY1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIAhQY1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEAEC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737048353;
	bh=LBNXvVFMTtbA/DiQOWpzBxMjuEVVF4RpIKOwl+8tq70=;
	h=To:Subject:From:Date:From;
	b=RIAhQY1enejLkEdniUVGkunhJ8fGA1iaNS7ZykS0A3QCDclo9W5Gne6p8Wa0kJw0r
	 oamR0uKFJHVKNVTtYhoDitcEG+mHQLLAs852/Z+Ic5fbGkzYwWMzHb/7Dy8aDmqpaG
	 H1kUfqjEvNUnGWXin8D2nLwSDLV7VslgPE5pY/xskJo0ydM1vXEUtPyXLSFPvYdg19
	 GMy1FTXnc3kPE0pxytdqTt7xdqjGZxtlgq4K7WbjMOYMLletTVkM6VV6ImH6vzClZV
	 d7xhvhsj/8T9Xj6AJoUmQLIMQQXBtaS48PwGmDZc4dKq2DDukbXnVFFGB4c5xp4JzP
	 XQwRrxYVLBUOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F082C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704835357.8818.2640013095664545220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aad18c01c33a3490eaf8db3af95baa1ea64f1b3be214a09a4d9ea98a38f436a
Date: Thu, 16 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737048353
