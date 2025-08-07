Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D06264FB2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754581794; cv=none; b=gqUDnT2Z9AI0PbxgvEh4n6/0mu1eMcl9SsEwVLdGyHTQD1lzLyGLzWZpo5Nmxp3yP+0Wl/5cRx9aKQN0GNJe8RQ6jGMFSonfoD8xVt6LSWKWLEt2+NBDDMnObwCkKbhckBwAX9oDffXtT5vYNIOdFIM5YlGIYFkovvUSha6PEJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754581794; c=relaxed/simple;
	bh=cGhtnw2vMbrybcMkVqOtONdWfenFetnSs4CxewFmhO8=;
	h=To:Subject:From:Message-Id:Date; b=hazflojU3tKJEojFU6zrshFo/DHAZue8naeXD3sPLAE7QtXEK1nMsqRoVYeg4K+wu0WnJ02X4uRrWc4EB6gRgvsDvzRZJ7t3YYpJlKaYV5/bnbGNAEmMgcmnLzD33GuO+7Yd3chZUtPk88sR2mGAPrg8f4hOViPwVSoifmGvNAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDUrQYaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDUrQYaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3369C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754581793;
	bh=cGhtnw2vMbrybcMkVqOtONdWfenFetnSs4CxewFmhO8=;
	h=To:Subject:From:Date:From;
	b=aDUrQYaaG3GWMvC+9dzgXvHjhjwTbTK6g7MHm/zwqFEpC4NEO0aZGn9M3hHeYzV2n
	 KD+YtYV948y01t2v9fwAM8oqF5urQBliComL2Zpi2yd+3IDbG8vIGtRhKt84Ra0avK
	 7K4aAvBWkvl9ABlcyNZAn3IFwgjRU2AoCBlN4xuIcxB6y+VjxI2nS5aHIk0lSh9mer
	 MTUwMCTbBrYR8RHZtAFHzh9a9/hwPgIJjYl8m30t6rr94++A9VNUL1UzzNp2DrneMa
	 YpqUcscpVVBP/QNJqIiDauLAe0k4EMuygiWSKWNc4qddx/QaA9FnGKgbK41OaSKOTn
	 2OoFOlqgNBREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924ADC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458179358.15494.16725434812047003218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3adc249182c9d482b90285052d74d206fef874a11adf57b94377eb7262fd7ce9
Date: Thu, 07 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754581793
