Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65891382
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719707663; cv=none; b=GwoWj7hhnhDm/NN+MCQSqHEDRB8ZWEFFzImlYF+v0ry1wG5+9ae0fusrRL+BwxTTPzrdIaUIULP0rhReReHhpUA2HbU5B777tW/GcObJflI05UvGGyDmEB/h6Cr7TLGEwZlAUk4l4gsnoqgAzTlty0MmWT2IabEhJMyH0aNMcpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719707663; c=relaxed/simple;
	bh=f5bc7VmT8px5JT6/YXObRl3ZRboxp+QRv77jwDSWRRs=;
	h=To:Subject:From:Message-Id:Date; b=CNFAj6BiH1Tlu3gp6Hx9ZszcfQSFf6qNIv82WMvIS2PQAzyBgGvjpyfRUqW76goYeIJ1juhHrgjohKrH4AlNbouRUL0rFyd343uhxsFlYJ4S4a4tO+LBWKfGigMFmHuQUDH6aJLG/N+M8Pk78cZ2Q2+v4ppo/TpiM2O8mwA0Lco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZxpyYxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZxpyYxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAC0C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719707662;
	bh=f5bc7VmT8px5JT6/YXObRl3ZRboxp+QRv77jwDSWRRs=;
	h=To:Subject:From:Date:From;
	b=pZxpyYxZ1XPT2XcOE4PAq1/LErj5XE0DGeS2YQok3ZSpR/r/rxVSrVB/Tv3XlgaQl
	 oRhIpfhFU6mn3BLkuRO3DEUY4nQfNCsoxZYt5Dfsu/HuS7os4TN/8QaOgkI3Nouc92
	 eA57BWLU7+mwYOAiWWrng673rxhtZNmDtSdDyoNALoAvXnXGVg+5N3VyjHjp34Pjt/
	 5+qDoam9EU2qfbTZjy8ZuJYJqIMtTp4j07QVmPniPZIIJWt6+FLF8etEsBmgeZTd5B
	 ARe34EHEMPFfK96jcOIGe0GyBCFkoWHgRLF9SjYtRpF1+K28bznNpZKZk8PDLgxtTR
	 oMVJ6+RVwclgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB089C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970766279.21420.6043526600840319747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88ff46857b11307259a4140bddb71576326b3623013184069d330c3e89bdbd1
Date: Sun, 30 Jun 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719707662
