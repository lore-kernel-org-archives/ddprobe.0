Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F67028505E
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757192994; cv=none; b=IT0vhU7X3iP4ubdHFmytB+Uk2EQNspCNKs2kdW7ZzsjOT+Ke2tVYlHvgyaljXNvnUQUt2qP36NBdk6qQcYJqnUnewSXT0hFourl23C9S5RB9x07NWJP8mHHzZ7hKUbzre+58kEXD1OdgXmHh740bLM3MYWFDPCN8Ls3LUPYiW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757192994; c=relaxed/simple;
	bh=mFU3l4rRXzSu/hcN8KmW8qVRp3Dt3quu5YYWyB0TXt4=;
	h=To:Subject:From:Message-Id:Date; b=AsT23n4qnbt6jbik3C3bq/qdpkufL0nO5Wvgv/RoZmfujvWB1uQGdRVaVP7gqGCy/J1zDWMim+iZvXalvawCDZJPjBeG3zc4mIQMcp7NteJmnJjQUJmVij+gqXYQNXTk2qFZUa+Z17omh+zxevXRh08U4c+k3eYfmVNE0BTpuRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEJijNi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEJijNi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757192993;
	bh=mFU3l4rRXzSu/hcN8KmW8qVRp3Dt3quu5YYWyB0TXt4=;
	h=To:Subject:From:Date:From;
	b=iEJijNi3RhgZ9lMeC3eBrTk9OE+OHJGBJEFXHW2atRddzqheF8kRKsoF3JuoqQdhP
	 VIjCgALGAgC7A1s4t5mgfUpBi7bSQ/11+UOmxEIJboXHaAoOyR8MVELOt2LgonQ+nH
	 gONdlD+hslYizRPv54buwbPNBGizMUvMT0xou0ywHWeRBCe6HJke2cHBBRv3hl3kyF
	 JcQFH6b0r8xUOjDbRPOrtFP8LXzWPumZMVQfRGMjvNRiZ+XLjdjPSiHaPIGRvL+S5a
	 Mf4SFpNM38ySaC3AV5vtWbutQRDnNO5WVEa2wQ9KNDoOiFtcolyGoGi4amVOZsATfX
	 h2yiN6CazH6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EBCA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719299358.26119.16410993819640878382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4f4be0bf9075dcade54107b99df2dea399503caa876976096996f81cab4354
Date: Sat, 06 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757192993
