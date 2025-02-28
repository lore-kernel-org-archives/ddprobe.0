Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3EF23F38A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740778734; cv=none; b=Rra4IAZKOODUdT0MHihgd+frTvZhGR3vtXSSBMy76HdsnKRmggiuUvUq9qjUwtHUs7phm/DafqdkNkPtyNrp0M7i2iLaBrj+JJ/QqQQQZa0wUMUTj9C13Fwu1sqHlawMkKMJaVC78kbjFoH7RwaIYnNbPKdoGnmzTLI4NwYhlQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740778734; c=relaxed/simple;
	bh=x3fJMPcBmLJxH5lnUYb+xerk+mVtbDP2MOMM4VC1fuw=;
	h=To:Subject:From:Message-Id:Date; b=L5c5CQ6Vf50xAcH/Njrd4nusPNB9Vr12ha8sGPENcm6J6z2AMlT9ZjoXCK9gasgLWH608wE/8ktu7vf7jQCQAZ8Q5OR+FGOMTHhre2qjVRqwIWYx4Qbbbg3UYIjUf4YzkdeAAn4ySnPpPcLhf1//wHYT7fplJyC73mPYIBPP1W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIFesFn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIFesFn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B60C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740778733;
	bh=x3fJMPcBmLJxH5lnUYb+xerk+mVtbDP2MOMM4VC1fuw=;
	h=To:Subject:From:Date:From;
	b=AIFesFn5oW57UZkNIBCNnBB1tzJNfhnwwELTQW7IJtXV6x2aVDAzTRXzBbmcFoq9Z
	 2+BjA/WUU3cASWi08hByb+FwoQuHjT4IKD5NFzvriSTnYFi1++cO5ry9R4vGtg75Wv
	 4pPRWFzReusIBaab4nohiu2opnEiA0Hrl+wbTsG6CHpZs0b2b43wYD5fG1NrhcijtG
	 wkAJsrU6gvguUusemc7bMFbGWbhH4DTZtZMGiFOS78LtOmoNcQtT2ovAqBXvWinQoz
	 Wuv+21KqRD8n5IVwg6ecSlnPtdSHm7lVExPEuKuw6d2X+WhaXdzWK6Y9vEY5DNp93k
	 ws/XhbjdlwT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDBC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077873358.14718.8324350153853783825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f479f9cc2397596d833e42a6f207b3dec392f3ac200753308e1d32a2fd1b1977
Date: Fri, 28 Feb 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740778733
