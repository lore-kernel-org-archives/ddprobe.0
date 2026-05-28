Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322533F9298
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779987754; cv=none; b=sBGywbiYSLgYDJbGSRY990dPSP3ihIKLsNvtAPRkCeSIfv64gHWLSJ9AtONIdWSmnAe+1HJIGZ1xuvgIr08QCuCJQFv2IbbXw+CpW8kEc3gDZDmdnJvqN4EK8PzPqNN7ncG4VaY+eqXAchpZvoNrYGuiY5ZQ88rstXgkl5iXIYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779987754; c=relaxed/simple;
	bh=YSF7w23TfJzciODApZBKkVKeHJWSm/HcOdrYijfY/sE=;
	h=To:Subject:From:Message-Id:Date; b=BjGblwGbRWPafL2uDPqw/uwd9tbWU+aDp28YGu2FRbcXW66siM+mtD6DDZvIZ1kNg6/l61UsZ94s3O/EtVs0X4VTUPLpqY53DKMOYEqFX2J4/YWU1SYx0HZ5Z7op+l2gw/s1mOUfqy9gSZUKOxWGdj5AnR2HXwcOUqS+qZkaQgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmEpvQUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmEpvQUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C128BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779987753;
	bh=YSF7w23TfJzciODApZBKkVKeHJWSm/HcOdrYijfY/sE=;
	h=To:Subject:From:Date:From;
	b=hmEpvQUtylc6bHZJvf7S8he8X0pKK0vwMP4kBQJFgDwBejkiiNzfgESblZV1o98PD
	 H2ZYk4JsTc5tLty6ls3v8AUPPKMTcai6Nc+lzuIsGMcFaSM7O5j4Xmb46QGL+lDaAq
	 Ca7Z0n9zOkBdzNiO+SIvi9UbW94p6T9Sg7J1RaE5kz+Yg5QNIoAQec9qkvZeu8LrrU
	 KRz4dhrVVqtz/9aH99p0GZK4OgwYV9VLvCpgoBsaYwojclAWgWctHekx4qfaQwHjL+
	 IFV5+21WMtSmufhPuGDya67FGhiTr7MPJUbwFCpCUejwt5HzrD1vzwBWaobOM3Qixv
	 6HZqnHDVuuTDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ECCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998775368.19093.4541555551814399795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f882c03868301fa6b285ab860971e5756449cbb0a1d44e0015fbcc84cb2939c3
Date: Thu, 28 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779987753
