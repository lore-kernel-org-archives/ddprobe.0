Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD281A9FA4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774230294; cv=none; b=Vfk4klVcdLSVTMfvTV3qGyCh9ifK8nNAVgBzY9XYnlXWCWm5qXeWg23Fn4DVb9o5aiWRTCRz7pnDp29UOmfR4sTWGHyyGRSq/Fw7Rv2NbQCFGYodPaBJiRN+yDmC5I/dHSgrXX6HJkuxqNqNednMDoIS+6HpEldT2hwtoN3jXyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774230294; c=relaxed/simple;
	bh=vnOdYEgJDAOIWAz5vQ+7b6ZiUPvFJECJAqyFC6YjGIU=;
	h=To:Subject:From:Message-Id:Date; b=K3ZMZOILRDaZQOpVYwcjbQKf5/tOpI546f1CcebjCvthPdIfFNw08NesqKBt8+mHZ/GpQbDI5ensnFZWfXlYbNFGdCeOTaTq2QugvSGqREsYtXs3t5BZH7c1KE6a0m9ODFjE3JV22pxcosraYY+gHtBiC+Nr3xTDvkjkzKYJ+qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3JlmnpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3JlmnpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED1C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774230293;
	bh=vnOdYEgJDAOIWAz5vQ+7b6ZiUPvFJECJAqyFC6YjGIU=;
	h=To:Subject:From:Date:From;
	b=S3JlmnpMF+T1Y4LIFNjZ/6ELRJdcz52ULIZA6SAZwyze7iWbv4ALRhLjwLDjAGMXF
	 gIiz5V0QENUcvlVkikvDfdFC8vZCpgiVzhhfl2anw+AxFryZuo0mUE6fZIhFueD9+D
	 dUzXcf4DvyD3oXShKPtrmwe/CJz97XYmtIf1HHWVcbioe8garECzwoqu18foatgIwp
	 UTRXWsVC9EnvWzezKcsEJTDvDQIJWUe3fcevIhVGFJPN+NyBSYVHZ2J6bPfCzvHaX3
	 Jw1QByeYEehfMORCBKVlG4D7LG5cLpOKVBBVULd+ke9EAmQwKhcKE5YwRzRBKD+BCE
	 CnTDvIFeIXGoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97224D58CB0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423029360.1211.17747800504843406525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b3a5a47afc9caad59f4e15b8e5c182cd3a4832ee5ffbc583eb840715b25db1
Date: Mon, 23 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774230293
