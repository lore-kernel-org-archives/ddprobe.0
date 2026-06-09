Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3161014A4F0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780972474; cv=none; b=JpnVSmTz+hbu66uEdN8Apkrpko/OP14LSugDSl+d4Nx2Pkp7YUQIeibcoK6lpEszQoorCd4rOZ8s1fApak+cpE4TEPS8Xwy9eISEM7Vb6K8Ijb43zGLdwBcqC6Uk9VAjC9MO1mps8HGw06nyxMJKcS/lTf6wEBeYpbN813f0mlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780972474; c=relaxed/simple;
	bh=BzjrVWJXZ2QXSs2MGG+pHdN7C6sx+nfdicgI0413JDg=;
	h=To:Subject:From:Message-Id:Date; b=OQB7hYVL5NgmWEY93gYyqz3fmW91DT++Oy3u9Z80meR5ruC5CFWGpG7kmWmNngyEen/hc6OSy/n/PDkxeYxVgnOCguLRE6Yk65GB9ir+mEXtwRKmhi/xh8REJDQJnRFmlGAgUpvGiL2MzJCvquFsFAIGeq08MccXNx1iQzBXH3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRHEU3tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRHEU3tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE47C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780972473;
	bh=BzjrVWJXZ2QXSs2MGG+pHdN7C6sx+nfdicgI0413JDg=;
	h=To:Subject:From:Date:From;
	b=KRHEU3tqzsLVuXMdI7Jr8iRi6OmWbcZWkWPZd4mZQQv5CSHD3V2ryJNLeO/xT+7zT
	 Pno613G09zLkBACYUwTtavO5OLvObMaLrAu4bxVf/aBfI/U6P9zexzx5i6hcXMSDz9
	 2jowyQkaRbbLxvcliUFcvxgrfHiJaQdMwFc2mG9p4U357CiUGKJjw22PHxm7KCZYyO
	 QYu+D10mDp/SEEf4htnjCHyznieK2yH6MszF+WvUtNXGby6N4QXB5UBvAh0jkAJMVL
	 cIK/eJniFBJ9dkrSTv8nFyYaIVnBcGWwpo2X3mOo4nk1Wrg8sC4LoP8oCIfnsGJxOA
	 uyLysx1h+DXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4067CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097247369.23542.12967872009975260568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640f9bfd1b07983943f3510757e559767fbf27036ae3ef7b92f2b4045e476716
Date: Tue, 09 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780972473
