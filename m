Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F212FF164
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777562853; cv=none; b=fp0hxrMx85bmh3MS/EqoNNAHcYPOplD2vfod0iZKj+8oebTOSuwI62tGy6Wenjupe0IjSpfC4gn7QvkC+nBxYNEy3W2kGiVeER3+a/+t/oYdv7IGXiU5LKFG3xW2cFZ3dt5ZeRuZ3cGaA5Wc74e+CXH4iY16erbPT0rE3gi1AZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777562853; c=relaxed/simple;
	bh=w8K7ghIbR70itfKI3al55NiSKYGd+O+DVu1osyG3V7A=;
	h=To:Subject:From:Message-Id:Date; b=TfbUb7Yr68nhMIhZRAjBrhM5sXO/wwKyXLuuTWpxbelRoboeF0gG8gEP6dWklD/SjWv6W49oCTI+AJUFdLYdc/Giz03dpm1WPLW5Ierwjdmjebfy9+qIT250v3T4AkPbKlqgaSZ+FEHnczulqGBSkRQDiosBywnWdQAixD1K+wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCDOi5n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCDOi5n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B5EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777562853;
	bh=w8K7ghIbR70itfKI3al55NiSKYGd+O+DVu1osyG3V7A=;
	h=To:Subject:From:Date:From;
	b=aCDOi5n2K2MlL8rqq1lbFnPzFO4YY1rMzDndXZZU/Z7FGmZ8OB7z8YnPVe6Ki9/Dj
	 4bHXM/KlAL94YSLTLxyRrm7NZs2mb20zdmSWjX47ncYfKvxxBzsPk7kojuJCIFMNbL
	 WDLbdStgeteUiPlVY2FHXi6c00ruzZxF1SY0gvQmRWtNeTN7sVWfsJc9y9RAwILUqm
	 fS7QmJml9S9KRUWBc5T/86BWfCRfYJKFgSr4On1Wf+bSOjTHaAtrB0xIR6o2ocXjDl
	 pp8691nLtFuv/QEDE6y/V1AFowilnTIM3/81TOPrWw57m9Up+ckczSesr0wQuxXJjt
	 hx2I//UyQ9slg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C5CD13DE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756285368.1039.16657326842745091816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c64a752a1787f487c1a947b181579d1128110dfc6db69906750e4dc46dbb432
Date: Thu, 30 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777562853
