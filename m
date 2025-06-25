Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1731523AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750847994; cv=none; b=k8gD+EB242U+2nlpoh9NSaZ3UQW054+PDvB5qytimiTqGZtNVs2EIs3pCAP0HmtwlVyFIizmpcsLDHaPPXMLpj5QMlBX7VL8a3iTVZG1t1B8/pxrzX8L5160C3Qsnj0E/kiTWxPUGZMP31oaCy2o6fjjV/zbetSWfY964olfRhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750847994; c=relaxed/simple;
	bh=khryhzN2E5cLbAObt5go03iN7gqPeSsqQ5wYIf/NMeE=;
	h=To:Subject:From:Message-Id:Date; b=ksBD42iRL7wvRDnH6Fgzzjrgb+nYI7rSlCBVgwASJYIE/Mmvu7+yGmbmn5fROiNOZ5qxQFqM2ZO8W8rRwnqRfnG6FFZxrQA4tbuRfNJmUp9Ra5uW8G4t4Kg4TgQrAz3BrJFWpd1L5LyGpssFcHQw0j6CfDmnC1VH9Owg6d6I8OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN0Zl9HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN0Zl9HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750847993;
	bh=khryhzN2E5cLbAObt5go03iN7gqPeSsqQ5wYIf/NMeE=;
	h=To:Subject:From:Date:From;
	b=SN0Zl9HLe9n7I3dzjUQ8o4ZAOLQkEDfGbT8UtwmdS3pxC7HxhRQMzK7sBWCFXYxhA
	 U3DC/q0KY/aq50IgFRSHNS//yTfJsILmUxYFRQcGqM6JgJtbYMrGccSmTRN28G9CpG
	 jNZxlQ1tERJCcrxbJxcn9kBk3xkdA9RYgWs2gGyswTM2LqXT+1AT40MMLBOO9JwF22
	 rRm5JuqWsHk3+sE31VzqMbzzyeu9Ydw6CMsHRxIS3WD6L8iAD6O6O9L6oOIVuMvjmu
	 MfCRITKlxIBbcgEbVj28oR4pzUZgzLRIdTw1sWN7gDcZz/iVrJN8jpWHj2PMR3UhRs
	 OPMTNWNLoKZsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054AC7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084799358.8540.11543822010447977168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0958548ee2ca72fe71baaaf558a9e083442b6c42fdca7bd06b67dd501924cfed
Date: Wed, 25 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750847993
