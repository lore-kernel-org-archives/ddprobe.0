Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ADB1D0E27
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736982354; cv=none; b=VxVN45tASUuwKao2Jy9h0gp0VIyItMAKuhArXBFHjjwfLHn0D5bg8N/Ci3eyxFC6Xz7c877SKT9Zi84Y8Rrcn/8xvUB+UOPsawg1zZ5JA3knIg5Y9wzf1UTxO5wCcJDsNxkQy59yE+R4fcl8dzjEy9bxeHp5DM9AegQUpOzcQEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736982354; c=relaxed/simple;
	bh=f9V6znnW+vgcBEPD478grLA5ypErETor5oWCQMYGHfQ=;
	h=To:Subject:From:Message-Id:Date; b=QShEs0pu6W7nq/tXBndo4ZlhY/0VTY/i3ogbVFT6/LEh1qYZo+uJidV27fgQDqu5swQPtQPzRqPsjz3+c6759OW2b2koKwrrHj00T1onfSBWy1LFO+JgMxamaRKeFcHfh/1XCnyY6NW4OYj6JS+YPStY6HPTud2d90N8mLUUlW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqlbu1qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqlbu1qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C33C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736982353;
	bh=f9V6znnW+vgcBEPD478grLA5ypErETor5oWCQMYGHfQ=;
	h=To:Subject:From:Date:From;
	b=eqlbu1qntzDOyoqPRqaFJpAnHIdTMU4FW4Ex0gnSXbOYLMkDD67tshytjDrih+i5t
	 ztaAV+fBJc08lz67U+nl8i1a+l/bpj3b2VtUZLtPBIh+O/lDt0aBP1bFym5bRLRsCg
	 HhbqbYQbFVv1iN67uqEWnRlmNep9c5O77TpGNlNU8WV7rImwqcWDpGTMl5Mss5VQdH
	 VhdvCOHCIyoCGbpkS9RAd5TkiK7f7+4idnqk9LsqT43Zjt6kxCBSg6SAQzmQ9YpT4O
	 twwpKcdr38RUoN1d5f6/9lwbXFhT/VM45KhOY7K8X8LKXgHKbxGEm5vzeHYKc0zytN
	 5kiqH0VymITyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928AAC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698235359.24469.2669330652604014340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7cec71c042a6861e461940c90638ca9d3180d953e675206748ed2d3dd20e9c
Date: Wed, 15 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736982353
