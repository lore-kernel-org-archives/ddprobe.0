Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4474024C67A
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747433394; cv=none; b=I9/jfL38g3emJMe5Xe0SCcBAUOj+rvizOJEE06458mxmANWRlzQJkhjanacnMaDJ5u49lTdV4nVad8WA7RjBYwRbiVDSLYd+BR1zAtUf41SBtwk37J4GQds1pcbMmKxUM4qS/QWeTiRiXa+JwQcVaQqgIx8zmkshIpZnYuPsu/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747433394; c=relaxed/simple;
	bh=umT2hMwX2l2Yqyp0iXJ3Qt7BDUaTHFdCM1jLFyAl68c=;
	h=To:Subject:From:Message-Id:Date; b=qGp8PS9Du/JZc4hOpgmV0rOMK7d4131SyEiUJ7IAJB6mUZ4m7pk7bPHvshOpbbR5xGQGHWVpeaTz/zIo5CAiXvUl4JHICPwuZvY8sFG3E1faHsTlTZXJQ835SQ2tLgA5PqIIJwVlq4p2t21VitcV7i2cpl1znqcUPVx3NGgLm84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS/8Rv1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS/8Rv1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747433393;
	bh=umT2hMwX2l2Yqyp0iXJ3Qt7BDUaTHFdCM1jLFyAl68c=;
	h=To:Subject:From:Date:From;
	b=TS/8Rv1A72lDSMD9LAuryyGadn8fk/4Z86tJ7cE9PkJrS/st79xya1DUPhlhAWpfv
	 iNmhj4Oi7cHeebDc6h1FlCzEkTNPWFlgoqzgT/gzYfRdvOK4FC0yB5GZ0a96W7ovHy
	 RtJWxwumq3Z8/ly0uawhhTQpZT5pjJVOc/DH49DoK0Zh3mSl/U1DS9PkB2R3rDtilN
	 xEHJ5ARYpicL5JC6s6/+nHPqcAiMvtk2/i+4ArJgPA0/ZHpnzZL9ltqT2Yw9kH95xH
	 7UGjK26V3QIuwej6eUsf3cnsJBWcxCZGCzU5iIFH502blS0uScib0l+1DJD+NQfIKN
	 tZahLjRP5Cepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC3C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743339358.17265.1770181640211441600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148b2a93beb0b7d2ee3b05472e6a7346ff0b1263d179520f8bebe68878bfdae8
Date: Fri, 16 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747433393
