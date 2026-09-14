Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632F646C848
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789396834; cv=none; b=H2HH8n6LBB9CuGai8EGWAeXgWgiw0xZcdJcbduC2xLiLTkDeVQCAXhoIWTa0L6RP7QEr9DiHT7Bo0Cp+QPx/Sjb0/DI3l4+UBmx3L7ZLYv3F0xnpfq+XJPTOzseAR98+MAROC/n04tJ6f5an3NDy1Y9qTgSNKb/w0IKMz8bVuxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789396834; c=relaxed/simple;
	bh=H9c5C8Z8OwsiBosECTGxX7oK6FyjgLuu+f27HBeEEkA=;
	h=To:Subject:From:Message-Id:Date; b=IWUI372gdCh/JtSfAomxw3r6tlgJxQDBMavugwoJma931XyEnvUZZlb7ZJkLD2DeRMVlzJzumXwXwGaIY1tEQvaQVQaPlwvL4UUmmDhiPIRIRCtI0rp27a84KM5ck8oVE85aqy8ypdo76vKiXql+7ucb6ppDzgdkV0pHMpxmVHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glz/XPS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glz/XPS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26C7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789396833;
	bh=H9c5C8Z8OwsiBosECTGxX7oK6FyjgLuu+f27HBeEEkA=;
	h=To:Subject:From:Date:From;
	b=glz/XPS5nGmNExzjfEhdwSsTRsMJoml9SyQwyJM/JuPWnO6tq9cHxmzcvtf2gg6Vd
	 aLPdFtTEYR9ftHuJ+6bSp5xtvANVOBW8XcSviHcrDIymtL5XrrV2+gEFs5VgmjE05e
	 qwwzuF1uoOIw5NekKGOpXlJjHIx1mrcpw0ssQmiQKSvnV87IclOKSaYYuqEKXF5fOl
	 UFfX47hgxZdZd2UXfNxvlQlx0dXyQG4iTt5mSSBFXuarFhdi49Ctl/SDz9KhD5dRCk
	 JLd5cvKWP3GSfl3jExwq5qe2vhu5BJOmYp3YkazQimaH9Yndm7lLlXzvvohbezr21f
	 Za1K5o0bx2sfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B4AC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939683374.4268.17195646221455194087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f555d3dc4cbdfd4f8d0f57638133f97ab1dde36cb60d8830e6f86a50fdf6964b
Date: Mon, 14 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789396833
