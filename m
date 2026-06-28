Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276383451B3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782689914; cv=none; b=USkBtJ1z5Al5ziMy48FaRH+9X9CrT98wZAEd6v2hTopm4ynEXdiFJ8QeDjS04nfClUisf+etlde1s/7/ICnpiDC2qI6kPygZ8AxNSfyPg4FvOqMZiCotKWTZ/iJPw8t7yBQOrsFIWXSpKa4QXT8KVmCoGys1ejZheaE4GMYk0x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782689914; c=relaxed/simple;
	bh=GL1sGa5mamQPb3cz4ynjjaZ+JTBjTWtBip5Lohsgmfo=;
	h=To:Subject:From:Message-Id:Date; b=QndJX5b8n4Auv3CK4L21VBRrlvEN0K3ZlkPfsQ6D/1jrKEijUWKHFtka5LBJjWrZ0zbAQl0qY3CRrZPWBdzofMer8MoozUDQkpAQG4zMEuJy1/VPNn8neFyX3iYL/tPRmK/dBBM+dfB3+9Uycka9RsVNiwm7rJfDvxRi/hf8IWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3Kqt4lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3Kqt4lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53E5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782689913;
	bh=GL1sGa5mamQPb3cz4ynjjaZ+JTBjTWtBip5Lohsgmfo=;
	h=To:Subject:From:Date:From;
	b=L3Kqt4lGxhpTrFJFyt/IgQ5D+mi0Rys+4K4xtlZG3rmv03huOwBZTZVqDXrjYlmI4
	 AnGQMZoR0D7BOjAPIeQJbY+QKQjRy1UskHTYCgqfkbxWi7qzKzIp86ccxwKMAwJF5j
	 NlEXo9ttGjGUDzAP5BOkRAB1Blm4HbCa4pT5wDLFmwYaG/t+UT/ngOgk0NYz1kfsPM
	 p1TIsVKQEQgWeVfXBKchzILUg1FbuYkabFEKF6yngUz+IUWnejBFS960DXqYXmUoRR
	 R2CI4QWcdCZQfwvjKeE0VwBILQDe6A1kJe8h8QVcHeFweU/UJu0pLAZffvfZ8q84fr
	 xqIcH1zYA7OLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD84C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268991368.27113.14324430700400567478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada9681f330e93fe3e403c4da20f02ec6e14d0a750192e4c89f6b57be0825ce6
Date: Sun, 28 Jun 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782689913
