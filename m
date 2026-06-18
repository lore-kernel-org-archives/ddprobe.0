Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A262BB17
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781768194; cv=none; b=D8bFZhG2Liexet33CKouv2ZNL7MvS7IOco/aVLSR0bWji1U7XAGWlFjxLF6P1fC1Z0bDBJtVJhX+ajuMPFi+Wx235KE2IEa6tI++tQtNlf1PUxIRKo6lBc0iNyXGMTYBoUv2pyJAOSe+F3Tp4rfkLURq0ekebQQlmdlrclGfgZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781768194; c=relaxed/simple;
	bh=ff2TIpNkZJUvz7LhoxpJC/0M0Dodkq1b7GcudubtqTk=;
	h=To:Subject:From:Message-Id:Date; b=Zjp1D6l3dDNczZk+lvRTwVBiVwzzf3M3+FqCdQzSaZhagnT3yZCMjBLehl8869IedVB8PfV0RoORDDnfBmz069dPPHKeQPJpldzYnA5nX3WKFeKNWWu6r3DeqigVAptSJtz2Mo7gT7ReKEXESLaW/bWugf9ak50+aTLgStBQKTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8Wy+aEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8Wy+aEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FE3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781768193;
	bh=ff2TIpNkZJUvz7LhoxpJC/0M0Dodkq1b7GcudubtqTk=;
	h=To:Subject:From:Date:From;
	b=f8Wy+aEsdEn55uZE2RJ98ofE8O4MYFEmPe4/jTvvglPPVC2uuhjWetum5GavwqXsz
	 tv3Y6sCpG9JOy4anholBdaYexyEb/oo24lBrSHxMAfN0hHH6beEBprCYfL2wgAqRv8
	 2m2hwZcIvHcl1uDeuIJjbPYqrzK6X9fQT57+Z+SjmY6jZ3FJP7Y9AeejhhIO34QNEz
	 ifoonWo4VFboN9RBFU8aS9RbLe/9BkilNLhxwWFsFbPg4PT3d0lBRiZeC/vn53sKzk
	 xETuHBWBbq9W5mr2UH+6YMPxsG7VCpJt+1FN58QLTT98HpWzeY6AgeFydI9b89/Nm4
	 tp0MPl8iXBr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BB3CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176819375.27902.8501292092240240494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d80245d1365e2befddac0abbfc39a0a07d76e6b426e297e36948599727a7f2
Date: Thu, 18 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781768193
