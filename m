Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976E33086
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750006794; cv=none; b=ZJZGNvQO3rIRXznRapWdG2+kmCLzpXxnXSaCO9p3IF82WdQtEwti3xRqDeYa674q9sX4nbFyIOtg0jL+prjit99rM1Ww5VRqZ2wvJ5JXeoZUhjOrmWfPZgjRyDipoHOG1zZkioorFMDjYAySp14KAg2lLUc/C4IHfFsNSlb+J3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750006794; c=relaxed/simple;
	bh=4SkDZH4JEK0+lYZnr6YN8/lke7ceYnCBfTGKy+zfhNo=;
	h=To:Subject:From:Message-Id:Date; b=tFAAZdaRrqQaDQ38CTi4AYnb7QUPD2DXqRmGsIRurzSzq3mNVvo/CNXRTfDpM45sjG5DMcOOD0DNf077oadOeveN3kGpC/moJCZEbUKohrAAQzQu6ha7XTfyp2Jmz9iT3ndNVA/OleIfS2ly1fUBKldUyCK7v8ajdt5SRIldSig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8y2yiR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8y2yiR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE928C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006793;
	bh=4SkDZH4JEK0+lYZnr6YN8/lke7ceYnCBfTGKy+zfhNo=;
	h=To:Subject:From:Date:From;
	b=W8y2yiR5gLfG0s5iq0n3jMptQ23uIsackmRrGdDjf8pQrUXl3OY5S7fllyDtaW+zs
	 NP8hriENIEowgybkaEavMYBEO9nlsgXZFCjiXfWDsY3R5cXhaCPNkmEpchNi530u7z
	 GDa9j0U2MkAhvkMGeN548q80tUq1yyn3Q5M6kEwnPkuVyUPkxuOVJmMhqaUjZ+ZTA1
	 JyveevBNLTY5NhUPOLSs6GvrfBLwi4MNJSNVZuFzxUSH6093OMtaM00DZMGckflslj
	 NH8EPQE3elCjwnPpvGOVaIfBYfXvzje9DrSLE25LM5aodJaGDEyIeZJuTxsQspZ1Z8
	 laocw7SQbRBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F04C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000679360.27023.13804157668997053552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e26b65af5ab7c00c8a9f9f0285017c9b2e774347942ef06a54a81aca4aa59ce
Date: Sun, 15 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750006793
