Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF41FE44A
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778198254; cv=none; b=c8m5yduoZGjOK+IOvxKuE9yEqH2VKA3fiU62bghHkRsSQ/Q+jbkchcSEIktaiM2bLFjWtbFoe5zazO1eiRDMm4KMJuc+UioXb6m6cujWPFcfHU+sC8APgB3sp6aaiFOA045hhqZ7y5+7R662vruFa8dzpQ6wvUi3t19bciQ7Alg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778198254; c=relaxed/simple;
	bh=/iewCl+7i0tuwA/8K0CFcZ+huLsLeW4fcpIYHrH2LW4=;
	h=To:Subject:From:Message-Id:Date; b=Hw9oqg6M+nQuUjd1wiRM8OnA+KtDCWRCL0xik5MLNvwJ2WBtB6EEB+7rIpb83c8uo3TnCa9rWJR4gILslhxWDnDgsJe5JcDaXtKcEjVRC62eU/lhrxWD8ObHycFoxPMTm9XAGPoYa2e/NCucN/1rbbSix27dPNoNUA4DD9fNuRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvkX22cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvkX22cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF86C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778198253;
	bh=/iewCl+7i0tuwA/8K0CFcZ+huLsLeW4fcpIYHrH2LW4=;
	h=To:Subject:From:Date:From;
	b=HvkX22cs0ljCD5XznfvaX5ynibgJUWuF/yQl1K2tYe2gligarGnm27fX6r8mH/OS/
	 IHkocEDTQLE9gGw89og6kd+9vV8UAEuTOKAWrGo8tf9OSPaK8jbrToceKn/59lFCm4
	 0Py+CXY6walxe70Q3cZluQ2smgEsBYKSgCYo9o5nSbdAtFH0eh2QmU5F5psEnB7iWm
	 TxIaLPcOZTo5e8ziMLV/cBrUYIsKoxXAaTIR61vIZSKH5f33INRORvbvvR3Fc749sV
	 z9OA83PCfqensQ4lYajWnIGJBvOqE7yj9x7LmkfAqVJ3dg5feIn/wvTcUn3NiicnKR
	 0tz3/cLvg3O9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE64CD3445
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819825368.486.2285542258359153904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dfc5b68a91c4ec53b290dff97db0f1f7edef9d7669a49da54c317ab00ac43b
Date: Thu, 07 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778198253
