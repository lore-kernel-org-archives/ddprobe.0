Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB391624C5
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746343194; cv=none; b=Czrc3b9xrSob3W9pztR/khGTOqc/e0q16GALhN67upEFlaATLm7kT/QAL6OUU2JMwKDBajUBjAyKQXns0llp/R6RHD1r6zPxu92zQYc909iej7iex8+qI+kSFwESXcqexRLwCuvppBDxHFF5x0QLvOa5yqo5skbfoGNU1aHLuzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746343194; c=relaxed/simple;
	bh=WLKTbD87RUL8banyp7fSzUOQdFIyyCuW8T156e/tsok=;
	h=To:Subject:From:Message-Id:Date; b=cBgvIpJRGw+zdjGdTXyvldkynjUVBmJiTmq/ClBLkYonGj9EyAz+djPmgjxy29DoL7oaLlUDS1O1Aogr8CB8Yi7x0PhN5dgx2ss4459/SPz5dzNHSuKoCFkd1pFwq9B/P5nWDk8zGm6S5kzQT3E5rSwiqhv5c57QuGW8ZWiU1DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRDtXy5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRDtXy5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A12C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746343193;
	bh=WLKTbD87RUL8banyp7fSzUOQdFIyyCuW8T156e/tsok=;
	h=To:Subject:From:Date:From;
	b=FRDtXy5mRjAJ15cI6NeFfnImRocNV2r58tut/4jo767u2ikmHII49N2nvMqiO0zNk
	 L5Swo6qwHhnEgAcmnc/p29rEfOTPCptR50oniPfehYuZoupRxNiVIgWZkPeEXg6zqZ
	 bJi2ptSKLLtkzq1d/cELg4SQqTSuVwf1aMxSBocoLag0jLtUtb+gLmENILkdjqHjcX
	 bJGZ4TmWH/g7ngq7jbYAXuZhIB1FcbJS7hHi6OKJSka01weNVsTVWmuhvNPuOQp4RY
	 t66QyCoAPtZ55WuSzZHRzXjHn/pLzneqSlI4DKQaLTQQRscYWQGpRUuxkq2VTKeP25
	 Wz7ztXVRIuwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A50C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634319357.8178.9228125768539715335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad4aa667a7904fa3cb353e048ee38061de4cdf039d58ce67dba8a55174a6f5a
Date: Sun, 04 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746343193
