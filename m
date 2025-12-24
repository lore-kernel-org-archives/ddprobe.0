Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0B1A00F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766566434; cv=none; b=DKKWNLXcGb4Ccb20sTb3SB90JS6QTZ731Hkw6ykksxoHT/n8jhxg6NrZJsH3UFRqzDf7Lz0RzGTj9dyM/nhrqzrsWWFGqxW+k4VBPV+1YtM6Rbs65uoc0MlxIkXBV27F25UvOR3iOF+EPf+CSy//c9H2WK82+AzfbAFQaUJ6yBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766566434; c=relaxed/simple;
	bh=zU6OcOBTNznS2mK27MSM2yyUGE8qt+IHTq7oVv99E4o=;
	h=To:Subject:From:Message-Id:Date; b=qcBGJaBXAqPP6xRU8gOlVf6cMzOBNfKQzstTU54eVctE06xCCHGPzvqrY7N/kTqTTweU2bPwg9V/1muH1MjYHn9qgNED/HnHSVGEFlKgYgo4Jn+0XUZ+OzaiIAC4oI+eZ+ZIwtqwI27QJyIQ6+sASi9KLaMHVr3qMF3ipEoFdSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzEGfwqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzEGfwqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766566433;
	bh=zU6OcOBTNznS2mK27MSM2yyUGE8qt+IHTq7oVv99E4o=;
	h=To:Subject:From:Date:From;
	b=fzEGfwqzf8auPAF0UnbFDQ98pmkQev1AKwM8tAL2Cr7Fs3IjNk3JvtZOzbQ5OMN2Q
	 QF65ogRewLiR6w+aRkmLVaUDMxRRqBWG8j9RlPepmdGBVB7K7JAf/WSeuzOrxpVs3R
	 IEfGeL2C3uczHxQkPwRDQHN5vULbaPK/rUi7lvluf8ag8hzCOFHoatD9zMtONYhH1i
	 Ut1O3K4RfcL17K8r2TqQJahtFR9OVvyrBCd9j7YD7uTpJ7zvfa2gRW4Li6hQKtFNlF
	 5L5Wx/MeTutTQR8bdQdl9kxcovGTK5RNW1+GKmRmGMCS607A/fO5UUMMHwEOYlaobT
	 ZQGKBYOlbXdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ABE7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656643357.22257.13655882803014059882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082f4e2555cbf6265e66dd0c98806073e42aab891191b5d2fc00eafdb57f87e6
Date: Wed, 24 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766566433
