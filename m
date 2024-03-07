Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082917FF
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709815697; cv=none; b=Qlwp4mi3OzEZkplHTXxZWxVEkJPSpQk2txgHobIjhqttp8SXzWLt3PorPnBjTwMDCxBuX5bU7dN6IChM3nGYXvW+OLTX/N7U5JH73SyNEnYOuucjsI8lOxe/BGG1ry4VdVyDtlBmwqJaS1a7q7VN0q6o9txSHkXX+4Mq6ZzWnu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709815697; c=relaxed/simple;
	bh=OJRfOr+fCGmwHnhAfONEzjHDobwp585oCStf1eg7UXs=;
	h=To:Subject:From:Message-Id:Date; b=uUVbBTJqPyJnK6jvbwZ8VVvIdlTCzlVshI3XsztN1yK5uAly1oAJkJ4HlaxMTc8kNO89Dv54TRsQQQDASOY1R+wfo1RaIDqQ8RzAoaVLiTRpePmnsfOoJhXUtUImVQTeZI+oZbUiyW9QojREqVZ2+KbR48cxrrgKiYuzOgbASXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL/aMvsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL/aMvsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778EEC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709815696;
	bh=OJRfOr+fCGmwHnhAfONEzjHDobwp585oCStf1eg7UXs=;
	h=To:Subject:From:Date:From;
	b=LL/aMvsjnzLLuabv08etde1prL164qOFmSpLAsNJ3ZDu+epGFJ/IlZPOOHUoGqWyd
	 2wkwlu3fuki+ZAgGJBew6UVTX2NVApww+oAHJHrLeAiu7+LiZpo/pR3dUtOV2j6mMn
	 Wb8uNEVORtzAbZ2UcQ/83a8/qHc4mwbXxLhza7AAmSuAaZIK+Khica7SuU6OY+Eca1
	 UBK+Hu9JNtn9lNllw9vsFOOet1lY80fD1h2rtwVRADhFK06HMpX/sS51eTGJdIckhH
	 6AEtihcDIDfPNGqUQjWjEU0gHHZm9BebldBurzjv/BbtlOiMaKX/6buVXn87NDZwK0
	 O9F7r5NC23/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C30CC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981569636.4049.17781536487655184492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8189093c5092d2cbebe29126755e87e7e30c5cf38d0e8cdb7c918b6a4e7d14
Date: Thu, 07 Mar 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709815696
