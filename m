Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015EC1FCFEF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774805694; cv=none; b=oIBsJxLStfVWoS6qSj3bvczVt0m2nigKDp/mBKi8wZZfOiFPKvuqszeRCXsHlYo0m0RyreoDHTo+qd6QQccV5avBKGrVIR90K/1Q4B9g1reCdTE5nyDub2S3k7gFGHqmLY2N14XqHrPgAJo9Qe+6v3AMP2wwef3Q3wTgypB4Bf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774805694; c=relaxed/simple;
	bh=96VOyFBbtWWMuwQzTGfBfJHCiZJdGevsPP9NitvcCZ8=;
	h=To:Subject:From:Message-Id:Date; b=InX1ScQI+OqTJWRQ4iQ/9S29ZHZTRg7f3HUdko69WzoQc06urTt8CeekGjNEZUE63U0EW1A245SlC7CglFXPuDZ5CIjm3YU3Zgt2hegM8kS0ywrTujHK97+yPaK6Cva5DsqHeKbchRBDoHnww6VtQt3XSGxpQwnt0ZnrWMi9DQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alXr7S+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alXr7S+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774805693;
	bh=96VOyFBbtWWMuwQzTGfBfJHCiZJdGevsPP9NitvcCZ8=;
	h=To:Subject:From:Date:From;
	b=alXr7S+Ki2AjNC8tboIzgvunhWxmYvdvpCi+P26DFGATnEgVAJKeFcTYlhPRGe2yy
	 d1Mi8ghVqVYMyPzDkI3LO3cTMXf/86WPAr2P5ddmPMAh6vZUyckPDxNLVS431A+ptd
	 YSs7p5GYyrhk3b8uTYwbgj29CmfGYiRBZmfvJ/x2/9SpK/fcdmOpT6AFG/CVNSDDie
	 umdc8dcIULJV23zWqcaaPEi3XrIgY9CW2TrZKKkcpA02A30dmy60zY71L1B8tN8WM0
	 vEB5jFkmVevXt/cvlyfWt2t4pBrDkcIO0/CoLf3ziDgFNwwesLm94ZrWfYnsAZnAcp
	 IpPQX00cc/V1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90276F3D616
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480569358.27884.7918797557175214451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cefa01ec763af0945792513dd82202bdefb0fa43486c87297524d6562c1581
Date: Sun, 29 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774805693
