Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECB41C5F2A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736844954; cv=none; b=qKsR5gJ7mptMJMzyWsmzHy8tNgyGOlPNRCY9rUPrwYAN3WU3feCnH9FE1I1dpZa7qCIaY/fqy4/korUC251D+S0yLCh6wnRb7fwE73BKnnUCLNy7Rcp4geVRwem1uRVU6nCPgUVDyJSUMRKxvusjb9m47T2thdVQPb5eB8fTk9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736844954; c=relaxed/simple;
	bh=QtMe+uXWu5oJYBXNxP9JA2SP/Wgd7e985QcvUerEH/Y=;
	h=To:Subject:From:Message-Id:Date; b=RiuhyxgQHPh4fBE3raf4aCieNmrXXGE0vYJQS5j2p+po6lbZ9+1xeYcYa3tVWGYtLnGWEW2ph7tCjfHlI6tBW4CU9IVxfxIImqXmG7n0zFZJMuRdQeZ8GKfHpI6vRpHc7G4+yfch+1Uq/4fRUTBGesZYiuuu7fHPogk5rA1PVQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ynawqnkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ynawqnkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736844953;
	bh=QtMe+uXWu5oJYBXNxP9JA2SP/Wgd7e985QcvUerEH/Y=;
	h=To:Subject:From:Date:From;
	b=Ynawqnkf3cGNqi4FHjkq0jrl42+DoFB8eCELayDmRBM49WWeCp+VhKObE7g3wMDgw
	 572E1S6APmfog4w27Y1ND658Pi2A+oxC7nqQGRri2rsG4iGBxrfUHaDXDMo9K9ytEg
	 CWn6Iw9Sfu951Ns73ukr9/iQxBuxZYzrXjU4+RVGXitMhOQ2bBTNC2NntSOo84lpHR
	 4Uu2kj3SgYkx1HDSWLQBfyAyIaC/MC5kYIqm7LkzBtt/XNb78rjqE9RiVAMkHceHrK
	 U7QNCYugYALeKezM5yS5jro4gJCey+bJAsFKzs+Dx2AlCKldL7MW9jV4a8SlAd90a1
	 9ze84r3DfD8dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DAE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684495359.14000.12789204742597161760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad07a3fca7b4e9bed05c5a94e281a04984b2bdca117e1e79d53301aaa73bc77d
Date: Tue, 14 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736844953
