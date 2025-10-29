Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370ED1C5F10
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761701394; cv=none; b=s69z2DydTCFsWp1I6AwPrcMlqe5OmGC2C5UeXds0ZIy0rnza0cLGUdNFqyblVXhvl6sElb7WAZ1UOl/+wdyi/mXnS2UfQZPq+1poXtx+ZmdXG07SQHtJbtQ7txw9PaUwOsYq1mqsqSW1ChzmHd2vYiCzm4am43MqdJE+CM57j/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761701394; c=relaxed/simple;
	bh=purpAw5vxKo2k9UwL96KC9oAjmqM8JYxK66NSqOoxkM=;
	h=To:Subject:From:Message-Id:Date; b=YqoRbXxmjygG0/D5PohyiR9tefFJY7TAJL9hjTsRAoLVXeMzLf53841WRKM+q73BFuoqSDX8/O4/GTVY1fcwV5QypHFj/cXd0a8Rbl0yln7fC/BrKUtbIdlcn3k4QL1jJb3PvbAVNdXXJmg68Zx4QxbG1f2q648gmgccYMTFv1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGeu6r3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGeu6r3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761701393;
	bh=purpAw5vxKo2k9UwL96KC9oAjmqM8JYxK66NSqOoxkM=;
	h=To:Subject:From:Date:From;
	b=YGeu6r3SmLArW/VkiZz5E8XbrVZZAUS8S93wbozaHH4tGbBFi6QhA3ATkCE7LjE5t
	 9sOqAb5tdnchkS2yKO+Spe3dm00wrB4fX1abVC/c2E6fPiNljmyylvgXXlkXcl2Ki3
	 SJNnOU0mliWhGyfOrNIj9JoBSxstintaWHRdTtF0RDR78EhHUeiDyiJENtt4PKfpzM
	 OHiCfD1kFSO3WaJaSSpPoUOpp1nhg/vWOQ05I2fdfqimejoBFgc639V/s/5aCosXgk
	 tsJjsc8pvkgTmtYzmqJKt1Kxx36+WG/B6pIODfhJr+vL31CpU+SZPEvu0JM71RMGDS
	 guLklUCU7JYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170139358.29550.16525084557406074938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f08a10612ca72c09890cf4ba7ae1184833b7fbcf232f727af3346b7e280182
Date: Wed, 29 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761701393
