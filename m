Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9602010FD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426154; cv=none; b=W7h5SEYvRFxhNrlw9mnjuMd2Y30jZDR4dLeioGlLO0muR/2l5lFnUJ8ds+tyzITWR+i8QeRE8a5o7FXUBexdJI5yLkwnx2Z5B5GdMjA8rAnqF5T5vrY5hXJyOLsJZxx4A8pWMHLUGr9Lui596u1aMNQ2jWB1Ilps6p4Giss3CVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426154; c=relaxed/simple;
	bh=GxW+1Phy8diYPgUuNaVW9vPFf9eraHXypGJcpoXYlD4=;
	h=To:Subject:From:Message-Id:Date; b=pMXosNa2BsUuRNTmys8wOmCsDmmhVqYlpYZJqHPPStd1Iq9jGri6N/edc1qqc9UhVNdG/7xhI1ZtDWd8YpyIAZYCiq4/aaVHoBrvnUrIpbU/01Du182T7R+/DMNSo38o36Iu+AkrwRyUo5PjjpUW/56Txp/UIzvSiMwGx/ffEE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9oWCN+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9oWCN+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D16C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736426153;
	bh=GxW+1Phy8diYPgUuNaVW9vPFf9eraHXypGJcpoXYlD4=;
	h=To:Subject:From:Date:From;
	b=o9oWCN+FV8Q9oUsQMzI2qAljh+518MFgxE0ANP16OYkjuAZvwBqHDjG1FBksF+Ice
	 /7gH0aUqMqbkg17Mg8sk9kxxrB/OmhNKgqbn8knh0YW5WqCadGVLZ+5TrcbrvWZySH
	 ShGvQj/eM4s4+nVgA8Zqv5JA0Ntsi0zvZSqPnsrWKoRv32kJ4znLmuj9ezFSMSGyT8
	 HKk29ppcvGMdGQ4Dpv9olB7IXFWqPQyggjBr9OOdaQBg77z95qmcbdCmu467dfmUms
	 KUZY1eiFEtMI5O6laD/hfd+/q5sjBzmnhEY65N4zZbRTVwVO2OvoYJh2am9VRbFqqK
	 CmSGhCb3J0YHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C94E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642615361.19714.14456955187625742285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5884d70a3ce59c38541e3e316ef156b9f1baabc9f8e915f8cb12afab9a09c92
Date: Thu, 09 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736426153
