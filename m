Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420C9426426
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782996514; cv=none; b=OBBNx4bD6p4i5HMJw6ZBpizv85OJRjBNV+PS9XvQIGp5A7zIpCMbL9966bw/sc0A5T8h2Xa0ovjAu4JMvXtueuGneT+oHaySolmF1DwblHqjwxukfhVMqDsHkBzXlSmrDsMZ7OXfHLow8RUc8oCZ/3jfusDZkfm4FND0NERYofA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782996514; c=relaxed/simple;
	bh=nxUchjDjsD60X0cicZHP9Gbua/zN5HbtLMv5A+93NEA=;
	h=To:Subject:From:Message-Id:Date; b=UVdd2k1Z5tIBKeINUgJ1oV8o9rZnookwAa3DIEQ5iFYsESNIXobuUWeN+ediPvEwUHyLNuzf6gmuTKczoONKtL5BTcfB37QSc/aSDy2XSl/i2Y3ei7Nw8CF2EgkDuWCfLqEVMlY06LzWXnr1EGFRuW7n534YvSdRqCZ7wYzLGzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvQqk5G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvQqk5G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96FDC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782996513;
	bh=nxUchjDjsD60X0cicZHP9Gbua/zN5HbtLMv5A+93NEA=;
	h=To:Subject:From:Date:From;
	b=JvQqk5G8yavdT1TawzSJ1BiZRvtDJNRbsMKNALAllgG5DfQGY85OLKL/EdNLtx/Xs
	 4De4WBT4MltDwbH6ENp9zQz9mR+3d/IWE7GzteNIBNA/V0Pd+XPMK3DzUD39w/bDVB
	 q0OnHbZt9T3yoDUhPVKirhjeil9n2iuczOiggRNtabVJ6GCdwx5vIf2fYNslZ9GC/Z
	 XZVaQUUIg86pgj0PPF3sUrFiv62eexeEWnFMBM+okfs0nawh9f5O2GA42GuPX8q3Ye
	 9KM02MuJMkVCmdPqZs57q/KLdy1sbebl4qnlthx5mv7Pxy9NutolAJH7uBjpRk4a0m
	 cc8btYTjNRYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80D0C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299651368.15096.2388304944639917330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27fab8b5ed59b82b9e9b22be0ac79edad3faaceec7eda2d4589d0ba1a9167e2
Date: Thu, 02 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782996513
