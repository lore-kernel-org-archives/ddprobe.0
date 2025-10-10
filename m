Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF28217F55
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117394; cv=none; b=iapYBbDCkf1H8GDX0E9EfLgfut/fRoNnQhmD3/toawGS1H2GEDmRVUkUuXp5TMVpSKczNzl+B5HWkUNoZTpDeETbeGILFowzpfPIFFNSvH4hJfAXo44HzQQYHcZohjcawuxWhhGE6nHjDh+GH+VyJ6+GiU++O6LlLInokcOoIm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117394; c=relaxed/simple;
	bh=NpdQ+y3U066lI2NS4WL5D4xsnp/0xwUKK7PY5PM9Ln4=;
	h=To:Subject:From:Message-Id:Date; b=RlgDqz3jD+g9jsrzZOYZhdbt+5QQl2YhAThZoAUUfy+Vl0Om2ZRd8XmXuwdyjOQZu1c5lBSnVn3ATGzPPGU546d75a/XXlbZiv067mIgesoy/rC2IjHO76RTeVHwZSIqMBfxMp57c7vlhpNr9HgBIbZ+oaz4cF2DMgN810UjgoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoDoLEal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoDoLEal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760117393;
	bh=NpdQ+y3U066lI2NS4WL5D4xsnp/0xwUKK7PY5PM9Ln4=;
	h=To:Subject:From:Date:From;
	b=RoDoLEalMut3yik7IlE9G5vpcjczexyL4xmvboIVT1+UMtMHE+MHGLv9xyMupSk7J
	 RQRTfkhjd0jO0EnEkqWBvzlenoyuG6KZ7PGMhPQHT/b5afVhfwOoJ6p6Yt30pOomEm
	 lb6ilKjIqTdllBinKUPdhssqViTXwAxgJ6KuoKZFfUIkBt4fplno22geIHN21J7DTW
	 n0HM/kZNreV5xZ1a7G9XfK/a7JG5/WAY/eENUiJJjCk0qbVHerqZY6WwdCf7ixij3A
	 dSmWcXuql7fVuBD8o7Ha+tkYJF8VU4G1TVjtEDfelsWzc00hetealXG+/7a674tX9f
	 3zNiR1cWejjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90874CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011739358.2035.12023237864325981604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14f96bda7c3f33b39bb20d360dbae801d44a0ffb90191711577a89026bd00b9
Date: Fri, 10 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760117393
