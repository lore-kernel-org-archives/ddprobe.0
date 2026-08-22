Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ECF78C9C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787401234; cv=none; b=d63eLHtEZvFbxH6ZdP2OaPt+mDWWnZUOEN0JszrW5PGhkog1VkgHsUEFuCixibeLJvMYg+6YVnNWiyAgTZWw2KV6bIz5W+X6RtvIMs1YNd3wdKA/YhUbv5KS2CKNueg7BLCy7xkVSQGuZtzdg6ykt53HZxbqeavC3WrZG27JsQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787401234; c=relaxed/simple;
	bh=GAjEZ+zaiLA8GBLMXI/nOd0KFYJx3Txt2v06hF7cTj8=;
	h=To:Subject:From:Message-Id:Date; b=MuM8S/7WWED4ylUnCgV0uEui8LDFXiehKChcdj7Me0aEEb3CNtjeWiCGDFywOkAGI+ePgGNOShtiKMk8GT9mzJVCfjn2J+XvWgXE+6zVW8fZzrGMf7Zin6fUAi1yPCZdc5AuVhNr0BS8JmNBqnw+0SuB/iKd6lkSoZ+F7Zbnd/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1DkRaCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1DkRaCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D021FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787401233;
	bh=GAjEZ+zaiLA8GBLMXI/nOd0KFYJx3Txt2v06hF7cTj8=;
	h=To:Subject:From:Date:From;
	b=e1DkRaCZ6oMNjsj8SHcyNyTIsMSIF4OMNByzjFsK+oZ4P2Hmcw7rNPN1BUjUiQUY3
	 weCCsCZ/RuEu/f2nGTAG59Z6njgjOczSlkVqtHAEJVhxzB044eRAggnh2uYmfjzKIF
	 NDDyrjxc9OJzuGL33hsCfekOQG0ORT5Nni1GxhfWNEa275OAdfcxxhXEth5LlzpGgH
	 aQxOVd0N+dYv4zV92DeprD7TUGPiotIL7tbIdxRklAOCmDhN0iVgfyOEckJIk9gNO5
	 n2/qMxI7DHSAHCO8h+w2YRDj6D56HACLFudVX5zESzVNp+jWURNwNYz9bZL0OR3fl5
	 XA7JO88AI+yWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF66C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740123369.27936.15641737475077873371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eeac281620e4e6412b0132d5bf74dbf98022c1b3dbe941153c7823765b7c47e
Date: Sat, 22 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787401233
