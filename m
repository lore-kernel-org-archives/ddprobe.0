Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4C413A868
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716905063; cv=none; b=DCc5pMcHqCoiBGErS1rI9rpcLyA4DL6z+HN1CVS7t5b3DjBJRmzJoRjvjkBVbIAQ+A1MLjr9RdBeLb4lc0HwHOHUDmhCBl9mho5DiOTvtWVO6LYaBaRqwtBhN104PrL7xTs+EC+iCOXoVzkGRIhpLtOnQlY71HWcU66ftVVH+o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716905063; c=relaxed/simple;
	bh=ea9Q0g6qAeAAfb7j0/kvbR3gThV8LGH2bsxeduf9Dtk=;
	h=To:Subject:From:Message-Id:Date; b=HLiO4pr1IgGs5tTjMc6yyl0mJxkWRuQm9CWNr4nbX0aOpe80O5dj81Jaf93rIWFc2mrTCHxn/lQjB2/ojJfQ7Jp/zKd37qIPxFsdwFPBw7SK0Jlng9JQQO8gjtGezJ83uov+rNY6XUZgYAcYp0ucRLMVy8oG29XPAVMcezkNpxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B17MMn4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B17MMn4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5220C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716905062;
	bh=ea9Q0g6qAeAAfb7j0/kvbR3gThV8LGH2bsxeduf9Dtk=;
	h=To:Subject:From:Date:From;
	b=B17MMn4IukXpvbt99wD7GpAvvn01J30XXKj8b8r1nkMjlR7LKoezjCE8XXb7sQJM8
	 NYKTElM5ZNaoCoz0d3W2kf4TvDaYPbxRhqsjn29ol94eVvbLVyGGvaF7VaA1Fy3XA8
	 iwMnLMB1sGJYyRfzLtbAHS78FZUohfBofDiD2hW+2p/MtiQKEOLeVBG4bRojmaRM/s
	 qgKoExqlNI0Z/wmtOANImBTW7X+yntV/8uzfPtMTeDkncc24ojUJ4DgLSokFcVOLwK
	 x4R5nCz5pxUu56zY/APlkVax9/c1JqMh/tcK4XzfNZCJl11jqxc9iLrli4dYp8Vf6R
	 6WVyVO8vRVNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57F1C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690506279.578.14680137336905949362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed9ea462467eacbb340d7b416854c4233062928b0604c076fc1c5dea5afa33b
Date: Tue, 28 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716905062
