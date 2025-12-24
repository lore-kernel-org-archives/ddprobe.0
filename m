Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0F5286897
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766568234; cv=none; b=BqjMuR7eAuW2sHd+/5hDtKLv15kQ6c1d1A/O/xUhf3ibAHCvIhA02mVaGLBC21Gss6Snzk+OYs4sQksoaS8LCPllGSpsUelmw2zOcA/5Pl1xBJkk3T6l/2JhXIk+sBSyxkVdMfnkcx7CUlIsfQvJ44TVPSancG+gTtY4VPAWAmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766568234; c=relaxed/simple;
	bh=TyVISR/CaIA1dDmagNGb16f5bZLMDarjMvS6alkAetY=;
	h=To:Subject:From:Message-Id:Date; b=YBPChIcnd9gAYhV+yuSVQSpFWY87PN0qg14kBzWeHE0IvEN6tF2ZSMejfNmee0g+GOAT29UE6MAnHQANKdKNhLSr3wkNKRSNDYuXzjzAEfNzsFLVoj6zmA4CoTHwSCAlrYvUUP0Qm6/nUkHyNT89/CBxIhOJ3oQVvKIEciuNSi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T737PD1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T737PD1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766568233;
	bh=TyVISR/CaIA1dDmagNGb16f5bZLMDarjMvS6alkAetY=;
	h=To:Subject:From:Date:From;
	b=T737PD1tHxVCXwY9jZIiZ2oUe/gdcnI2FbQvHMbqfXBrxh13KjwxcXKqt69q7AEni
	 kCR8keEqpOz2ZIsCzORs2dAxn96jmthl7Pp2YSRgtZSHpounonMWrh9MdqhyWxcEVb
	 z+r/2U9+mukUph0l9R1AAbhybjqzjkqv3uFXkFSx/2w0ZXY4uj+gXXFBKwl+ZQAW1V
	 UHXOFDjhrp3uJ4j0JTIB/a2OdDmAhkOfQSS7TnDWDmeH82Z5x8hWrDZpZ1C8n+mA/W
	 a1Tm6FkrHTnFA1sDFWUyC4wOfEQ2ROMaTkbvEdCL/3Z9uA39Uk4TAX6I5c2N3oZjda
	 v1aB0GlBZapxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90389E7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656823358.11777.13292941476131314200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3a529bfa8a3498ad8111f55ff3d631fce3ba5273c96cbffa92c46449abf51a
Date: Wed, 24 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766568233
