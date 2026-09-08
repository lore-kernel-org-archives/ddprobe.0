Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE21346E55
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788852034; cv=none; b=GBTV0ONak/DFmALICvYOoPuhTBGHnXwuKSlIdU0zsTgX0GjXoydwu2QRtxM6FXxKUzd8e5UbjuDezBTpurVuOIEndwVFVEtZPwRKSvJp6XuUm0keLjd9hpCuj4ZK5X8QRqtzgM0WQRIkhWnv8HVDNIuChTPf6FlBa/ZAhuatpiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788852034; c=relaxed/simple;
	bh=W+plIMnsVfNj7+XaQsQtj8NztmmbzrEXZBSu9d46PZE=;
	h=To:Subject:From:Message-Id:Date; b=elEmcHOOfwpGU5gkl+hWF5Zvvr4dcws5O6Y2QIi7x4HSKuNtVRTDe2jSjZW/QtMBOepnEdHIHWOR2D06SbuYP/xJ4RJJTawdfedK2fUMpkAHoPwAu/W+r5YRCnm7I7hI4xBznKGZzAZOF8Td/31o1Lf4IIbIQIVbMLZXOMTg3Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkomXmpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkomXmpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF941C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788852033;
	bh=W+plIMnsVfNj7+XaQsQtj8NztmmbzrEXZBSu9d46PZE=;
	h=To:Subject:From:Date:From;
	b=LkomXmpSi2RAuFn84hsEReRQN1Fy651bc4Nq60LY5qyESU2RQ7/qjbBzGqac2va5I
	 xfArfq6ikH3uA2dAVfSDG+SWJgswyLgwMFi6ARpAmuwaRnWYTsIdPZIoL1PCDIozEg
	 FaZVYfinlYlTa8rSTO/9uxUkOnP7kQN7u4uheN/MS3Ed+KdSKUt0wv7ENVF9Sgmsn/
	 SfFLyGqtIGYBU4En4o/+TFBCmDlzLWmlDle0HqrHnatvYh9n2a5EcCAKt11eMBGmEk
	 PhotkCshYKWg3ele9xf0ldlh0/q42s9LFlwoWceY9K9UVCkgIyO0wD5ChkQvH/bnfk
	 q56CmZT7a4VDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B08C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885203374.7458.14346214506999268167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f3f7b24286625355765279bf9a24197dd5b0f41a65b70319acb57ecd95e93a
Date: Tue, 08 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788852033
