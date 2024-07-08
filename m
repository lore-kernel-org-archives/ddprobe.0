Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C38F3D76
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720408583; cv=none; b=bNT58GNClIlBv3CwQZPCNJC9pbN+JGKdFsqDN9/Vpa0LhlyTw8PUX9Ieu3cCOjYIP9gnq1gfJNUY5TnIwczXLPafQYEyUr8C5dR0JXCA+EspREEyrEuhkNpl5g1VLNgKAuPrKJcn+15a1ijRZELniWN7PwRujp2RHHb9sjgXSQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720408583; c=relaxed/simple;
	bh=r7N2aoJmdS/LdjvJ2BY+QykVqpJXGvJzESaCxaGu/yY=;
	h=To:Subject:From:Message-Id:Date; b=FqNxO8rRR7cteRSTGs7TlPA8dA6rpDkz+bW9Yj/N3hEcV37ErGaNESZlenCdanFXWsPgL/AG33AtfS5PtCFkR+SBQRjrQT7NXgxOVZHZzQ6ESq4qrKKw87albW3ydNZl/XmyJ6omtH+86x0OCxILUQ2DdwGjvu6XY8Tk2xQqEJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPQaaez7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPQaaez7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD49C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720408582;
	bh=r7N2aoJmdS/LdjvJ2BY+QykVqpJXGvJzESaCxaGu/yY=;
	h=To:Subject:From:Date:From;
	b=XPQaaez7C31eIPsrd+fomGaI9pieeicqENi6MAWxs8dX0sUDby350sTC+n7bh4F9h
	 f6FAg5IFl/ll42MLlnhnUeP/i3i1i5O186F53m/3puZfp78ayT3V3wvSpEZZqN3wkK
	 tSWmbdS9R27PYrqsgfiBkZb6YwgCSrhoQynydi2AUGRZqL8rkxtpfmU+NMgP7F/xM1
	 S36bXzZ4btntRywfxWWTgTeJuWgdhVMAClGYgcQOgvLK0IEdhKa41tXpis5uVi+UoR
	 MvcsvuIVE8tXylmArAGzkOxntkWjgqGeiiY8lQnsGl/8Bwa7tSI7RUVTcyUNjFX/gb
	 5qSgefXmC+baA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69D2C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040858279.2164.15184096203787742367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eef5a01770b86228ed3f4a201b0a9465304e5cf36566e7bb7e4f1a3b9c89f60
Date: Mon, 08 Jul 2024 03:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720408582
