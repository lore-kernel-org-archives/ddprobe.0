Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211DF31FECD
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758301194; cv=none; b=XobVCAEKTi0niV2rGuNqKX7PbpfgojNt1cZoG1vCL3n4Sb+gRe1VFJCNwnUGHTTm5htJtYsofYomzg8DkBEWSFxakNwBKou8TBtJASQBZnpsgER3M+p4Z5PK01dt1zKwPBved2xZjU0fmIxKRCyn+Zhra1tMadyejt4rnGPSCJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758301194; c=relaxed/simple;
	bh=nYKTZ4f/qYw0davHglMNqC45SYNYkXXxpfu3BEHysW4=;
	h=To:Subject:From:Message-Id:Date; b=mp52dvMjvTIlOoPjEEiOUlqOkYZS6oxRZc00Eft1c3gni4H6Uf0C47kbesLF546dqzZtQ4pvV4z52nNG/lvVUerK2zEYSRPFvT1tNJxNCAYPhFr4DQBPKcyOQrnBIAyxXOmPA3jU9NJICH9efHDII6VxWkM1ZH7ryhdDdBKnQ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or9OTzWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or9OTzWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1202C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758301193;
	bh=nYKTZ4f/qYw0davHglMNqC45SYNYkXXxpfu3BEHysW4=;
	h=To:Subject:From:Date:From;
	b=or9OTzWtQC7GjEHvps9NgRvrhnYbQ3uXvUZYv1iYYjbqfJbNBVV0YqNFkzqysma9I
	 ty32MA29ZOVkluqAjYjcoUsNf8lV7bjols4WiOjNwXJdDwJctl/nfGbOi8D3pa+4/b
	 z9y8p9zR3/E4CxCDOJeD9WmNH8q4n8lQ48UcUIqtZhmk+lGDb1wpX+rCI8IcZoZTnu
	 78bfXWAdyUJN+YUwBLtNJMvCQEP1yKmmtxQ8zAy/ZrxBFQ+YNVOrBPrdV0levCAw16
	 xVT3aEuXDQE49nAZgAY9FyUj9ydSjpPTbjGzH+yfPexbnb6BArQlgtflQgloLGrl+Y
	 QQ2S4t4PgRvQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE6CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830119363.8029.12087783109257185330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4913689ab009b2b21f6b15c99d7899c2c8542bcf4ce5a45a01216fd6bbd9e4d8
Date: Fri, 19 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758301193
