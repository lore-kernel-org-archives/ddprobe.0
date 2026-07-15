Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500FE1F7575
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784075314; cv=none; b=ukCO3LjSkAvjQ6cfTO6MC+WY+atyGB2G3CshE+uiw4wmn6a5Nla8b//48bLTEAjaNNvI8QBqx685uurqQKpThSrhYuzXmKySgDrpOr0d35rKkD5Lpj2oB773sM7AG1Kxc4ZqNoq5qid+Je1gO5zOCTYiOeBjg36ZcWp3+U4lYeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784075314; c=relaxed/simple;
	bh=Uaf0p0bK2R7zwVCmfaLPvZUl78TWp4dlM2gYqh970iE=;
	h=To:Subject:From:Message-Id:Date; b=H4cIslOcwQncCE0S4cwDYk5nkjPrcmw678XfuT2KQPP51mX0Rih3hp24aWY97ZmYLHjZ+7XOGJhHyAhtWHQPxhdww9wZZA/c7yz9XwXt9+54fzdtuMpacc6QUnCLh0hq+Hg8YpS/dmLzmSUc6V75qHyQa6Qot68eUvtMmtW/Kfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2yG/mFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2yG/mFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5346C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784075313;
	bh=Uaf0p0bK2R7zwVCmfaLPvZUl78TWp4dlM2gYqh970iE=;
	h=To:Subject:From:Date:From;
	b=B2yG/mFyH7blA5cCswysZ37hljKeF+jnNWq/koBaS1J2MVHdRVLyvmPgkQK6niDk3
	 asj5j98tzJXV69wUd358+/nqq1Vj9VyVRf57+s9qF6UdveM8bJO1Y6PJmXINY52Ok8
	 x9sCxR2tWGuhovAG8F/QvxMNZwdxK8LqYAOHdFZ8HUY8XYnA/fvPk3GonuwjITQX4u
	 2dw/qXHaaAkSRs0R/z9I21FFqd4mcnuGdVA4zh9nFdM8NDcHmjMSglpDiKppMUPwUH
	 WD+2LDSXViOne7sn5sRw/BYDAJKEtFKqQF1AvhTZTdCfX/HofupU4UzRGWGabGYZJu
	 2wLAVGW23E/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA8FC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407531369.21084.9401935620098440685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906e086fb3e3b3fd253e8cd434f6d49f8328bf1c85ad550235ff8b01bcd62f2d
Date: Wed, 15 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784075313
