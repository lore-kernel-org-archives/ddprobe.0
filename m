Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20976367
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745952594; cv=none; b=FbI28lBpRFVy7RvasJXbf5gmKjbpKQlu2T0eWYZS5iFwx+kDPd2UBbZER0HrJ0fnDW75zcQWXKpm96I/pEGJ7rCa0hZYf5iScWrUc5bAoKPycIiUitDhpwxvf5bNqwCd7ZK/kRCpDdfU6XVFhPOh0aisVLvxWg5XXaeM4rzbI9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745952594; c=relaxed/simple;
	bh=Q6sqI8lJxthExv//OgzFy0UQ/sx6iGnAdND02iHS5PY=;
	h=To:Subject:From:Message-Id:Date; b=eoCXCaDQxGPSt8lc005OdRN+/Xk9XuOtpXRwtVDiNfZ+z1M5gSATogvVxYJNAgjZsvPpk80oq9CMRlifYviTgckDTJQi45wp6k/kbFwKNf1Ca8G/XzFtdlbrnIfhUQ79GN7u+LTdlyrNAtKuBFRv6MrnOJ0VQqRAnRXrBxtuFTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5+gLnGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5+gLnGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D484C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745952593;
	bh=Q6sqI8lJxthExv//OgzFy0UQ/sx6iGnAdND02iHS5PY=;
	h=To:Subject:From:Date:From;
	b=Q5+gLnGbb/tY0Y8updQ32Mq+4Z1AAUkBYgVJBNUuvQCvLkYmwQaNFMwMvxqH3CGhC
	 279IEXEaMQ5Xym8oqQqMUHFz45n4qTzB3HAo8uswYrLRhY/j/340I/6UpDpmkhRrEc
	 PxAvRsG3XmB+7158KDeEe1dA62e//YYMK8BroIVENkDS2MOUUmYm3r/w6w2dR2qd6W
	 qK8TiT/IhtT914crhI67Ois2kiAHCxoq1jqRmbEkVMZYTo9dyj093WnZH8GnTTHLyI
	 Mq4NS0DBosPkItUcgOH/1caY05LtUOdz337l1VowhkrEsR4uAjzqUn9m/bxIgGJs6t
	 xSDVy1lZmQX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E723C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595259357.21155.11903232487634664061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8eb810620d15f1fcf03bb52e0b045506bd5a54b7041551d2b229bb3ecab9d75
Date: Tue, 29 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745952593
