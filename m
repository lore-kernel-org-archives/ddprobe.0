Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68594A23
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716689663; cv=none; b=gp7eGpb3vp2C8tCF0EK2qPebBZUGEHoQX4P9VXDahz02aefowosLJ51KIIWQdDSIJxWIIcg1g1CnrK3c4nFCdzFHGRgKisDI1XLY5M8MEr657Mqom2GtKv5ZQLdjh5llVFbSySTzQ0kU7l0+nV6rjhiziugAlHdJSDKnnbvS55w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716689663; c=relaxed/simple;
	bh=L/DkX4U5ta0t5aqWa1HEP7ZEaxjlN8/dzLamCuo8Flk=;
	h=To:Subject:From:Message-Id:Date; b=avbbW8VwlR1HSGLeMF9Ffd8ZoTCFDKX8ZVcaoYw94ImrJ7IyJIDVm4i76tA9j4SymOnGC/ktxrrCXRM1ZC2dX6jKn+jDpYHn3fv6N/5GNqJHcHe89iLEHQMs7Q2Osv5+cNDJHMB+XKbAPpxjzfKvd7gbBhzEdlz1llrHgjAb4Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkuF3oCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkuF3oCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB079C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716689663;
	bh=L/DkX4U5ta0t5aqWa1HEP7ZEaxjlN8/dzLamCuo8Flk=;
	h=To:Subject:From:Date:From;
	b=KkuF3oCbC+vLiKzQUoLYKeYaZfWxoMSCySQZ2B0yXen4zDdgDGTgsD3ilSbueVe5j
	 UbaiRjzI1al7fTTf1IkrXfV9ZPEXk63sS9ctxi9OZro0edDw9I98IF7HsTn6ir6lAt
	 4ZeWWvv89zPJp80stjXzeMuUVDjtkg3yNHk9p43rjc36USUL39Uk+f2pvRGj18gUXO
	 3Lz03o6scFq0VoeQDO9j/glymLR4brsMFPVqhZi5KDfpeTojAZP/Sk1QGUyclUN3yJ
	 yPU4Po232wmti7U9pQ9ULy675AzIPfibzeMTgsNG65m2yrgJUIqsgtqJ2uuiWcON0t
	 XmKMe9jskBd3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF01CC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668966282.7129.11409247594099972830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b5d8eb7ad23c91a794266559206370cc558a956203b0361c11e505e8e24838
Date: Sun, 26 May 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716689662
