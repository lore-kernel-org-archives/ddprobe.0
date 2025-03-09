Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D474C83
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741487334; cv=none; b=j4oOOJzfh3VRQUDrKDlTQ4gC2qWZYLCoRwjMA/RDgiexFkreZwAID+6DDhUnREN47vV64g92ctlZLW1rxscN53xu2pFvt5SUXJ3zXzNSPIUDIQqwpPhcRGPuV5qqApkcB0I1IL3vJvQSif0U6BBj3hew8SEantcgITLA1PcTe1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741487334; c=relaxed/simple;
	bh=2qIFXXJVBDXX3xJT3aSWwa07FiZ4Pne5PS2YUr1rUvo=;
	h=To:Subject:From:Message-Id:Date; b=tR0vMc2unE34WVMj19q6AvinObb69c0A3FxfKW61wDU/cdTqh7yGb6a5JunyoDPljtmOJDH05lgava4iwIqoda5RBQe2QF+iAyk3cDoQuhGik4J3/LdYvl90kl67D5uu8sOJNJ3vzP2yXLH87wi0L9ua6lkut9OpQekBqp2utn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7Yx/z4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7Yx/z4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5624C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741487333;
	bh=2qIFXXJVBDXX3xJT3aSWwa07FiZ4Pne5PS2YUr1rUvo=;
	h=To:Subject:From:Date:From;
	b=G7Yx/z4gCbPrGYrswPcd9K/Z4YaptSmY0EEX/BP48sVc1ty4YksdFl+0tT12v7BUp
	 GZB1+Oj2tm14FyBSeIwNjJPXlsITXdyp00NVmtxGQ6rcYg91fBd8593q9LYLK13nJU
	 RivkxEvqK+B5KyFCBif/gds1mBl2m2MOKQChgPlBGUKYab+CEhAkQJovhTrT5Fv4m6
	 ZmuDsNn8RTHMFH6Z6IwglxwjUGHrmiFt5YlYQmf9/LVtkAXoXP3jr9rOfaIfgEiXPs
	 TI1oDavXUDv7F6ujyN+NypBQypOQMRMk+L530pkI/GQ9nFAfY7xlYNo5yUprfMJF2o
	 EjOYpc8hDFjqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E280C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148733362.27677.14074917507099073964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6103a5b7c1807df99addd2900387b9e23da1226d0cbf84633e4c38292ff984f2
Date: Sun, 09 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741487333
