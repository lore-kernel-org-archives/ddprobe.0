Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364CE351C2B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775165134; cv=none; b=AdKsCX16oZfQ34XicZptfUdgZitvgSZRgBmXaPD90vmjSQI257EJBK7g/1XdB+AhJIxSiBB3x+LYXE6aQACpmH0QBQfAheDyhNFmYupeAKBHNjLCSy9PmzEfKeE/d+IgOTpTUS5cbovhx+q3h6MiNLezJcKsLjUHaulRD5l981c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775165134; c=relaxed/simple;
	bh=qSj+hwUuSBsrmbWKljwUo4UVN31WBCKg+V7bAybK47k=;
	h=To:Subject:From:Message-Id:Date; b=FRyEcwN1idAR4ouyel+hlzKcfKE5b6vo0sjtCWKsWqSp71psPk8sQBBzFnmgpxoBKbIcYK0kJ7WIbhq+9/UM8KMclrABMIkO0eHnvQD5G0iZxuPSYKb0Nwk+m8U7eiS1u/OITJlEsPOd16dqiiqh8E0LdbAjIgsyKATqVb8YwiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSzznlSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSzznlSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B67C19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775165133;
	bh=qSj+hwUuSBsrmbWKljwUo4UVN31WBCKg+V7bAybK47k=;
	h=To:Subject:From:Date:From;
	b=RSzznlSp/UvHFzU6r2PBJJ6gmLkbPuyhdyfM33R+kXQGbkSfqWF8cheCPjXamx5cS
	 0LyXMLBEoYg206upze42pNOiyos5TGG+zZkHUzrzuJGSnR2ZsxpeIZ7qGbKqRSRkZX
	 36w4TAEUvVN5I5rwlrABMQDu8czFr+Q6VIrk2drxh7R0eNR5zgD5T4WuZ4mljdmUqM
	 EX6XDsYRgpyKpHiAJef3QUVGq79k0NJflfxZNg+PC/msgFZKct9BV7G92k4DLnmeAa
	 YmTFeabjiH7eYGbsVp/5tJ3lVCUDRmorn+b9TTJKZO+8A2BnPFYvuikBnk5r83LIS9
	 9qgfWQKvcNvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43CDD6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516513370.9124.18089172535468924750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39733fdaf112964f050171a0ccf5758ae8de58b718ca493eb7ddd9f60f2ccb2
Date: Thu, 02 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775165133
