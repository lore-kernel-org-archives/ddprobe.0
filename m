Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5745F82D91
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744014595; cv=none; b=jQRzLMXpJWwOGN9hm60RvdWEhUNV8rotX0PaX+phqQdOrqaDSiD8ot0/BKgqzcElj0LoeutdJpDXEs0bKXADWPxP/Ls1/eQzM48k7IVUK4JsYGJztmjroerUGQAEKgHBE0GYJQqgXMGSAdrjr1G8uMV/ls6vyuk4bKhMWkgFFrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744014595; c=relaxed/simple;
	bh=HFWHaMmdbHXEPsxGQYpIT4WdZH0QnJOkOu6EKUE6+Tc=;
	h=To:Subject:From:Message-Id:Date; b=ppWviUWzq0zhR1sVzUO9XH1Nh8BPgUBZRXONuds1M2WjuIM90N7jlgdEt5qbtcx0QsLDP9o9u2uKYlaeZe8iZ/ccPcmqroAz/a/f4RO9f4VaaB1lgrunk/t0F6e+elgHL9jAxxlpZ5WbDJV4EEgJEBLT0Tdi4jpRU0BAsfd2xx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0jCVkpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0jCVkpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10CAC4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744014593;
	bh=HFWHaMmdbHXEPsxGQYpIT4WdZH0QnJOkOu6EKUE6+Tc=;
	h=To:Subject:From:Date:From;
	b=O0jCVkpCPfaL75ukyDUkvD38CwC209Dmip48Quxz/GS3veCMvga6kuMwqyozyerRj
	 IrkL8EnISRrMJi5WVQvGV08xKhM7mijyPtxDFQ0F7TOXScoDYSOZ2052hKEgC8x0qt
	 mWq+sR6zNIzi+O1izgrbYkXINw4AL5mmIHU7V6Nr3UiBX9U+KU6wwXhrk/m31P7HnE
	 Hti7uk0hAm4ctovNkxvBMHR8kC3aWMsLz5snynbczFpZlUpRrwqz+uV93br6OzJ/Lx
	 Mjtmzcx8csmzOK8wqSWXHl5hbg2sE06oJbb8Zk3ADWhn9bC3g7M1KotHN+WxL5FBv7
	 62P6lxI6XNWaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C8C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401459368.31484.14943782331549117273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c894275f561917b545e3e5d27119ba0240e8aaa34afdb5924fa6b6c0bcd4ba3e
Date: Mon, 07 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744014593
