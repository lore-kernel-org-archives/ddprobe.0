Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D989355F4E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782329254; cv=none; b=BL7BYV5JCzhcpW2FUKtxuJkHlKAhNAoSHX5SpHxhu8xR+rKb5+ebDzeIkxx+n/Lxxo/efK8IgKXPQGECTD8G/Jy3kgYZ3qKuo1nHtqfKdosR18tzl+stw1aEAk9KEJ9XhoLSL5TIcuyDiPIbpgT5iht20d7PtFsSFIOQxKo+W+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782329254; c=relaxed/simple;
	bh=QVKOf42dJburOb73aX0SN2YB5woi+RM52pNI9yYA+oY=;
	h=To:Subject:From:Message-Id:Date; b=PTOsywzDShJdo89rxyTB+j2me43VGkw7Nq2evtk9Dz2B53S9mnBf/2EWXfqYcB24qrDZk0RluFXJccEFY4SF7BYWYtM2ABjrvCtP1xBo0h/DK43Fz2XWPEdf5r1cwdijr7AORZ2d8e4QtVTXffL5L5b8miK9M2CLbYtKLPe0zD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXI3kCNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXI3kCNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFCAC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782329253;
	bh=QVKOf42dJburOb73aX0SN2YB5woi+RM52pNI9yYA+oY=;
	h=To:Subject:From:Date:From;
	b=mXI3kCNQuo4WXVJzBpg/stLc1mCY+wE8qWhMVxJKjPsgNX9xMy3EuGGR5vALAnH5X
	 2+o3oDtJnoO783xxBPiOIPg8rFg/XnljVqwDaOh6nGpSl4lDEdZcEh8+URmBOg78w/
	 dSgD138TaGhwzm5rIUI6WzYspWid/8XP5acp+LnvbONCEhVWmhcgAbNyXhYV0+0aMa
	 g6jlLbc80mufiCi1Zv4GoZQ6f7cd5nNeRy2oB7KSt8mFKs1tXusQTSgnpGaqZf4VX1
	 rSWmu8Z8DVJNMjOugBGbcbGoxcV3qkMJOnuvDh8qM5ORaCGHt8QePje5rKPBFVIk6S
	 7dIp4G/uHfMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD134CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232925369.27013.14256200212221312712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe81079ba48d49c896791a6d0d9220ef4e9870c30d46d7cbac9c6d33f0faf42
Date: Wed, 24 Jun 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782329253
