Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341CABE68
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726247754; cv=none; b=bkj4OVLpmLhafIiYSbSz6iP75SzKZwIMlm1A/F90enXfM+FB7oN5ZMKUeRXEaP4pePb4UivztDsGtNWj4vS1kRsGsU3Ubjd9ImRLGcHJcwdpHYq1JDuDmT4l+iJwj89ffZid8xJRuqlIAaWGo+n8Sd0qjVWO9uqxH8FyqupiydA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726247754; c=relaxed/simple;
	bh=ctl5NGKCQebPwq10GdiRUbceIfdUDEyHBZ3Yrs1SQJs=;
	h=To:Subject:From:Message-Id:Date; b=qq1+F1imlhaRHQQ9UOku+cDyRniB79+YzpghgfwsiHIY/pvBHCauudAkmju0CzhusSIoHBPGpjyvispm/jG8mSglM0KuGqYTGwRwrmsgtKj0BONcwlc99NQI0tD0rkYe02ATXbr87DNwCoMQrns8A/GScuxz9DQE+0QisPBr3O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RN4QD2J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RN4QD2J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A562FC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726247753;
	bh=ctl5NGKCQebPwq10GdiRUbceIfdUDEyHBZ3Yrs1SQJs=;
	h=To:Subject:From:Date:From;
	b=RN4QD2J0g7gGwwFWqojT2dzc+eCY+qYxMND6wSCkZT/5P7ZZ76eTXCBbDmImyoXHY
	 CA7TIC4LpIKeOoP2xlweq0YXK2PWoNlqY9qOWD7LHuiZh0M3RzH3MPunEqEKcbX9h3
	 5VS3gG19xW5Zm2Cybj1AHhph7+pSk4head6y0nhMHDM5UhClwOFJxHaj4Y7J8CwfGQ
	 hFzZoFJLiOeGq52q2T4nHPYiXXSvegKi8XIhqXKO7oFlEc5OEM6hIJr2jjniSX0/wO
	 PcgFbs5kVWDAkPNaTzwaFrqweHf2PDopNS07Byh/rhOf2Rm66HXBXAqU73XMdpquRb
	 yEmXFFcwZaJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090AFC6169
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624775358.20368.1168168750052331290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14fc9620cfad120b57b9925f9aa42550685929c47b39648d7bc9b2b35011f1b
Date: Fri, 13 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726247753
