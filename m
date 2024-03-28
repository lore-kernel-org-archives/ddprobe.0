Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6FD63B9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711586296; cv=none; b=lTKXOQKccH9mrqYyV0kexw5VmGeRJYyW1tGPhDsNiAUNoumGcgqDHpXrMy4ISjOB5v/kBhsZkEmvfyoo7pdgmUw43eaeFe7XZ245aSUCxM953TUJSl7+eCPADYzVLGb0vvKCEbnn0zLDxULcTwnL1HmWzQZmFwpjuUm4CfbnfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711586296; c=relaxed/simple;
	bh=T2Mst+eRBZBoXlPaneXizFNcOhnG6gUWnzQTFM4YH+M=;
	h=To:Subject:From:Message-Id:Date; b=KJRE+/CcNJr7zybkwWjAMi9kpxY3tCe+G+eCQpdPT/lrVhuAUVwNiZD0AI1NJZZb8eosYjoL+ayCjGXOdX7NT4QDiMC6fyh+TGbDhrKkwSlprV9ZnWQzrwu7xfoICvf8KN3v2hSjJ4vqmM1WO9sitxvR4ZuiN8jj13os/UChF24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNbUv0da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNbUv0da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF22C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711586296;
	bh=T2Mst+eRBZBoXlPaneXizFNcOhnG6gUWnzQTFM4YH+M=;
	h=To:Subject:From:Date:From;
	b=QNbUv0daa5Ko5fjqqgoA43rx9071SpIHcwQm4NS5vwSFvZF9J76NBBFBCkLXZt4qz
	 ++uRMzSP0bsphM2qTsEpg8Iqr3wQU7D4bK9TxpI1etiGDsSezbSms8whkLbgvIw5nY
	 QyUULa+MGvh4/P9FxItyZY527dOkiEvNk+aJSOAk2cFFJQva0ICTqDURsyEyGewQMx
	 EoQyauFXOcAk/m/hPc+4KkiWqCX7TwPlv3uXaoIdc3FhdMXPYvKUEdUZgsdOzppnqW
	 LGM8YR6aNPEpHYfgY59EqFrISnwzSL45cvp3ilgEqLu7vc/1BSCPoUPYXcYRcpMg31
	 JZfEd24rrmDcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB7AC47DD9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171158629637.7212.1260668746992867493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f4d93017763c3f5bc8b9c1b098f14b9be36e86c31d92ab238dbf5ac2e0314d
Date: Thu, 28 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711586296
