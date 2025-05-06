Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2C44683
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746505194; cv=none; b=OTa9KclYThKpDeRRPaZ5XOStghp8VdbMyIOgMYCnQpkSeLMVdHAcAOG6H+vtk2+2Xx7vLSZOL6sirOhocn5qkqzo7mrQKkmpqVNxyHKfLSctX8zpKfKQ5KdI8EVbAvngfAswfFBdAmhXq5wSYrR1oAlfEYYcbprvb7l8zchtmZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746505194; c=relaxed/simple;
	bh=TV1HfwNQCFgU4c74jUQd0K83Lkhpqj7StpgoUF0ubdg=;
	h=To:Subject:From:Message-Id:Date; b=t15Yo95aMVUX1wIRELssDW5qf9bUMPIRBWIKJJ6lA5oWzWv/abd5Ok4SvY4ADcfk8Z9rGjFTRo/4BURoyqEeoF6o8ZOiEIy+ohvStwC61T+IE8yeCNEFs9ZrAsGxuDMe2DMnsVjkIdcUPIC3e9GRAXljAWZd4ixMccKBnbwf+/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/skd3sB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/skd3sB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E4C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746505193;
	bh=TV1HfwNQCFgU4c74jUQd0K83Lkhpqj7StpgoUF0ubdg=;
	h=To:Subject:From:Date:From;
	b=P/skd3sBia7o42+tQw/ySr5pwlCSKFcyZhgfwdvp7h+JRapgpAqHkhXNxNyV/K1b6
	 fUsoKHpKS7RN0F5Ux0FjukJ2+WQrooW0h1SrJfj9xApD/36z/SQWU9ABb0dW28HOsx
	 kfPrdukeMSnNQioYhf2YfZkWq0d9kxp/iJWlDMjUM6PuMiP+h8qB1qwcPfNjQjWVvz
	 uCPelxyGc9xB1vjVqsvYjhHF4HOen3EBElF5Ju/0J3o0ikNQ7daLSjjT1cdXkUYlIm
	 YVGPdowANmCa3PB18SRskmFLkshZhWLtJln+z0sX4TYbmcm3wsXv3IYPEgviUotRly
	 WY/jj0VT8vwLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90819C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650519358.23919.7629803573550307094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21066df02eac400bfd1d1dd219ee1cd03e4fbdb6dc7ef21c609f5fad22aaa023
Date: Tue, 06 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746505193
