Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5366A139D
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760908794; cv=none; b=hSamuNSc8iPrj4sbQaonGh+dMl6/3rUx/rtJD+mPyL+3LLHnCj2tKIICSBiqG2nLyPghdhBxykmR6fp5cDPFEo14O6mPKHfhJS8i4+tGUT39gwRxqR0olTlRtMmwDFnVFBRddho3cZEJt2Mm6F4rPvgPKEVzEC0PWFALoM/PwEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760908794; c=relaxed/simple;
	bh=sLuWOTZVfB+cSHONAol8VGqosjlNtyePDdR5ejw63ug=;
	h=To:Subject:From:Message-Id:Date; b=kE352KHCs+PCiuR/tx4AWp/gU7MISTjPfywfJ4uyrOaiw/KJ0OKRC74DBYCEtqi3BsXyw6nIRPOrNY7DlcPv5VCPtLZvo47qheACvR3ii3/tQoIacGr/i9Y937WwWtx4xTfUEqdCWuM9KZ6bGJwvhvnxjyQBbl4XKdTojtoB3ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2+LTAl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2+LTAl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67BFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760908793;
	bh=sLuWOTZVfB+cSHONAol8VGqosjlNtyePDdR5ejw63ug=;
	h=To:Subject:From:Date:From;
	b=X2+LTAl0Ve4S2q0Is+/W07C280q9czqEHnJVXohUL2MT4/92HERmpFhmntgUrOriJ
	 fhScPXtzCTWGn52CyOAA6Pjb+3YiNJlNp7vCTsF535beuQwnKF1NTEfGq+c1xgibmc
	 S4Q8Xc5NQN0IWIcKYcxLfZ9Vr5ZRCU5qUzDdFySeKyxwoDwCb7tsl4R0s6kGzKOw28
	 tRMiZjb7xAaYMwA8sy1DuXFAX1Df4QCd0K9eHAFj1jeqZ1bpsZtbvoOxvEkxjoMykn
	 6aIg8W+NMTd7IatvrdN/f1+RRCzpDbdBZto/muqbbzshXd3nOos02+SCUTlavU/irW
	 b8OTvoCL1WFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93705CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090879358.28006.11487793007390309895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209326841c2e3486075b78632a0ba39f197939cffc8a01f63a14022f783bbf13
Date: Sun, 19 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760908793
