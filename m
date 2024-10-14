Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B2D17BECA
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728903954; cv=none; b=SAAQI0dfMYTrYO2Ico5vbLIoku9pk1Z3tTvf0jKK0rXjXT0jiJWKNePjlz4qzhOpB30aAZXmr60Jl4nTPTtH/KAcOi/i/VCXVXDk5MvubPeEk7xafG/Q3D8mqi9Zfz+l77Nhg6R+P5hOwO54qPh7gsoZoyhAhjhOmEjW+Ax2PFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728903954; c=relaxed/simple;
	bh=lzlL+z2PAdE5YMGUyIgWChsSMznDxxyh0gRRtPC2seI=;
	h=To:Subject:From:Message-Id:Date; b=P9eB56IRuqZHjYgXOmjDa8zO683GsZH2XzQaM8OpvwNke/KjhnFx256bADdzE6z8v6/9/bW0uDga9VYx0Sipc4FBXI+K7ysY3y2SNyM3iRqjlj5jbBafNbxuPBHt/dfKUccZ35zY2DybC7dWbFiR+PKH8S/upNPVH1zeYHMOQSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA0DRimn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA0DRimn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB5C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728903953;
	bh=lzlL+z2PAdE5YMGUyIgWChsSMznDxxyh0gRRtPC2seI=;
	h=To:Subject:From:Date:From;
	b=tA0DRimnKrqGzZfCFe6p8a7RDaKc/LF9n4edWyRKMwO3IPSLcqkzYoU4Xax3Qdzef
	 hP3ls2UL6eqgGLQmR5NrXR4/fppsd1L3HneyRVy5aS6lz5exRokdQx8xB80/8tLXNA
	 kiYDpW3Bb6/YQm+zLi7RvbIvdwJnoXNX75L6L4a1LJOgWSAVoEr3IVjbQc7s+DUsCB
	 ldCVTGg5oWLtdp7NF/XCPFVwk0wdrapm6G0kJZTwxZAmU4X7PgDTX0abcqQNYHy3dC
	 amU/T6b3ws5H3fkECBkITw/1lQIkFxJEokgcLkOzGpJLguKUnIqBWS5xK9+jFtrIfX
	 QpFd4YTyf+rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94578D16240
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890395360.4069.14254578534422316102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6de4eb17a57b4b46808b390582b4949320080ab5905b1bf2028ee602a86aa7
Date: Mon, 14 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728903953
