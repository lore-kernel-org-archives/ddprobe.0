Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC54364C4
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708349896; cv=none; b=SfgoTA9CVhSqpVcL8CVNxuQtMJRISUmODN/gpv4jaASmf8Qf8F+TDRWz84kj0efI+YO6oyNN1LGBTopVIhO0mvOZJ1LUPOC+tSnGLjGaUsLTmD1MgtgSpWtSROEoyQTSDaqS4MUGfyEZNG+sPdhSpbEHokADmHbVV2yqvVemNu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708349896; c=relaxed/simple;
	bh=UIxh3YGHr6xTjWj83uiTqq3ZxWZXiZth246vJZuZtII=;
	h=To:Subject:From:Message-Id:Date; b=jAK4y/n8qMPDIjAaBryrIGgeVBEWkdzZSSPy+ZCG1C3XitfZ/20cBebwvFwtIARJth/Kp0Ysw0dpYvI3KXLA68Zpmjz9GoyG57dnMvv22qhnF0Abw2DlXDkGk1zF9HrbU1VibS3Ki7/dS06AIyJst+Nd/8Y9htGVY8TZm2m26S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3DRjPnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3DRjPnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DA1C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708349896;
	bh=UIxh3YGHr6xTjWj83uiTqq3ZxWZXiZth246vJZuZtII=;
	h=To:Subject:From:Date:From;
	b=V3DRjPnIm+rMJpVyIiSQ5MiV7yTApG7+5JaGfYKMH5nbWHXW7H6XZIqjx1w8EmVo1
	 E/nxWmn7kJsJYhW7xwuoxFORKUbS4A8w4jJdENwNcYcr4eXqWm1afEF0A1VGzPNebA
	 yDT4iw8K/o49EOO3pHZKH6w8nm6DBX0bGe9FoQzQFLbVhwJUO1e8eDkYGupGkxR5q1
	 u/xRIFRw9HW5k28xVve+9AZsRWXrQZHQydog9G1tqyHCFpV8P9LUyC/pZEnYNSMjIs
	 WoI5ieX8Y3MyqPVw50fVveHGafvknZcNSZisnJRa8JeTxGolBgT9b2h+QlwdXuZyjv
	 ZsPousXMIrd1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A21C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170834989638.22258.4762565211837327536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47159292211c5a256bb54b4a0b1c0b3d7b0a812ebdcee088175fc9adda64b01b
Date: Mon, 19 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708349896
