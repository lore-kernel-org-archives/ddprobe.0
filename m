Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308962AE97
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757179794; cv=none; b=HrZB+2+Pq2fOeC8DPFwr1IEy4cTqz0hZmuSV2JXDWAcswF4YpdV3mtMT9DTUMq4zwi2edJjUfQ4C3Ln1NOBWzmUKxG49UY70slqCYj+ncaFWOi4/vEgP+AhbLCivcl+8T3CqfOYxXGW61BQJfdFXXCYLU6uuhRYhU3DEgUCp3SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757179794; c=relaxed/simple;
	bh=mRh+NIu1E4A4sakEWnBtyeXQbRLu5LLSc7JmuTsJRTE=;
	h=To:Subject:From:Message-Id:Date; b=eeNu4O9Yf3muZ/kxcIvDXaggIbukaQOTcrWcXJU2dUuDckmmkPoAThnpXc9/j885XAsmOyDZMp51pgFn+DnYK+889BOFjakrEmn3vDT42uMmCVqlL8iKrNSuoTOFs/arBcDBCUNHszBj6+K2LiW0xf5CK/1Sn3PwF2hRTjheZkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F88jMVVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F88jMVVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D4FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757179793;
	bh=mRh+NIu1E4A4sakEWnBtyeXQbRLu5LLSc7JmuTsJRTE=;
	h=To:Subject:From:Date:From;
	b=F88jMVVy1tMd2q4oL8ZfFbqsbe8e9j5whDViPXFBd3i0pu4SYNo54oPUPG2vajh3n
	 18jVFyW8lMj/N6ma7+0w8lMu6PTX9rhPgnvE0YSua+FZZd1kOp2Tt5/zUCPDpx6qR9
	 zhW9LKmRMIaWSOKMhkENs4lJM71qfrOQK0EbEX3kwong/9qAdc2yQeZBgmSY0guiJb
	 /jHv7F1qedLqcS1l3VUNjMCSvL9KNA179YDX9RFyOCNk8dO9CZHCqtlxr5UZZJ6Z3U
	 GYYRi3K/ZIkFPXhoYnqoCzQpopPOe/RIvSxclcxl19sx2llQxtaSP3hwl+qGjHTN8V
	 vz8BY7tltbxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471DCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717979357.2625.5809340415413627069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6158dbd7cc44a8182978d0d9807bbcc3a3f500dd1b3e02a8d91ae94ffce71c
Date: Sat, 06 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757179793
