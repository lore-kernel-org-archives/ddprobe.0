Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B672F30
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754393994; cv=none; b=SHQuPaag4dmmYQtP91NxoDcdYU5SlwiA+ORXrty3FvUa2Hu+OGz786foFxXQQ0UiPsm8Wg3Fxy8m+hzu3LYhgu74jgjiC/jSRcgRdJ6VRwg3CHXO22fYuusdPWEx0LJCob7k6V/nQ2tI5OEJyaMH+wKzC5Nv1dS9potGDtb8c8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754393994; c=relaxed/simple;
	bh=zmLqth9D764qIhh1b+xcFBnyRLLOsqla5AYySWJK9lE=;
	h=To:Subject:From:Message-Id:Date; b=NkwkpLi5uqcvNavBnHQgCpqNoYuQ1lpQLLxeevCj/1Feg8FKqgykpBybIyQQimSobAluQ/6/yXctAb4vEKi/nEXf2YCgoNQwm7dlfv97ZDQLiEgu3eA+IyajY2qu5p6uSSU/1AFllTm77Zjuea9+6stuLlrVACCzARzqhQ8fLts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+g0OCpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+g0OCpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754393993;
	bh=zmLqth9D764qIhh1b+xcFBnyRLLOsqla5AYySWJK9lE=;
	h=To:Subject:From:Date:From;
	b=p+g0OCplzSi24xKkdSwV1Rv+KOi5qNCc46ld9uzJOi3HKFYnrli8WJSG43ychbCGh
	 MV7N3ZT8PFN67D0Ez7O09DViB5TRYIJU4dSvqbwBnrsI1pfk4ROCyIBImiGgIbA/EI
	 Zur8b779Oz7I+3Lx8E65BNylhoOWYs3olcnnOrdvTQOV85+Azukejl8ZNvbeKZ3J8z
	 n/uEyjMi0cPFWr7RBq1nUODLW9EGUfkDKKWIfaer0qCEgr1cCXsdTJ7DGEeD07mxlV
	 UvE+BHILHZEsj9++nPcMK70HmsyE7A2r5Kw2d5ZJ6EHeP1dDLURPabEer3dIcn3RXx
	 2r9e37Grv5Mww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB18C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439399357.12792.16651444677536456869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8851a2da57c814024979c6c800180a74741df77914f133f07c6593818cf16bb8
Date: Tue, 05 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754393993
