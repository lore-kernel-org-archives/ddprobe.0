Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A01A00F2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738068954; cv=none; b=q1YaahY2zIoiL9wRSGlxNULxOaoiQW+LhetC8tGrzKgBAInstCj3EfjUGEG2pWI2bU4Q5aMUrOANFWYmEb/qE0QLaQPiM3G0gAValzIIGzFPVDSB/L7Whqk7GCptkcgMYmg8bgJhH2rLXt86J3ua53L92tepNA5teJTYkEI7eE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738068954; c=relaxed/simple;
	bh=YN+Y6JehJn+1gt7FUZxXL5uElkLKovbjoA77hPx1AmA=;
	h=To:Subject:From:Message-Id:Date; b=gqU4TjBrBUQIBjcOl7Waz8xwVjDj9vPMmynCxPPSdIHYDEOxGwcRMtjywNPe81PvOgEJzji9K4vHKnv9LFRKphpznOG8f1gDXN3WE5d6KTMlWmSyLmYp8EaTzpzh/ZWsl5HZgWFMVcr5/iWG9/NW3Hx/OJvHTIMvZo5AN49iq1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyW8RPm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyW8RPm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738068953;
	bh=YN+Y6JehJn+1gt7FUZxXL5uElkLKovbjoA77hPx1AmA=;
	h=To:Subject:From:Date:From;
	b=QyW8RPm+3D/EZuKPsY2pFlV5sQnadEnP0hKuVv8VV/ZY6nNyp+JqUKUdItpULb4ki
	 GqFJU/7rtQ7q0kXil0Xlhod5tXKeC0T5cDezXTeOit7nUUCehocS7a0e59cJaTFp2+
	 5NXj9uWx2F2aBs32PmJhf/iorvlqwz8abtNiqjrawwiETh6QQKmtXMgBlJb3yUVTpk
	 AbaorWSqpBTuxwOay8ETlXMRvt3LFhGLDrCdfc5aTxxyBigo+krYxqEvRFqQATSJTO
	 5o3ncws5tPp5auTBg1n5veYsjEC1XPol3SLwtBS+yj8CF8KsHZcgEeb7iIl8DlbQeJ
	 oUN/sUEvFlcsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A645DC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806895366.8541.2861888501751871827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141c6c0e196d2dc8ac4c7b354d3f0c52b6422e793ab49dddda0a4eb585558b99
Date: Tue, 28 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738068953
