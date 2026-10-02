Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B14E3E2AD8
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790979034; cv=none; b=DYt6k6FPllxhCBelYJ9FeJ0S05p104tCgvlWbbPne05jcZbsMKLv6x/LFckD2i3u72+8r8sq3lh10HjQc4yHgEYNA7+ElRLqoxHJWrm9vnyhC1jwN81oQ7Rf1C2jWz//ns8BZwqJJFxIjl8i+qmQs4uNRgyl0X6BMeExxy01T5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790979034; c=relaxed/simple;
	bh=SDkKZjAdgLk7De7qlcP5N2mOhEh0WwrGJNm06U7WzoI=;
	h=To:Subject:From:Message-Id:Date; b=jAqoLFBJRnpX2f9FJfwcGP8+0tGjaxIwHK/hM0VYnsZGrqfiLiTHTZUUTD837ALshPqxM49hkPFbj0m2EqLJb36CnEl+SgzZMxZ7SI1VkSyXU0YKsYaEwivWSuFvux7sXzNavInk0BkM5JzjuN/4pRArIraAGlgGlYvl9qVofAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIMR9UwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIMR9UwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7C0C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790979033;
	bh=SDkKZjAdgLk7De7qlcP5N2mOhEh0WwrGJNm06U7WzoI=;
	h=To:Subject:From:Date:From;
	b=AIMR9UwAF/3xOErQogIV0YhOnoBVTKh61lt9sCbl91gSyE1MtI/mgVAEofsb4/w1w
	 lAZsHj+ZV3CSl+ljGldYY2wki7c4OpEYl+fdAtdiihab3PW675FxRCfAMZ0H2HVr/7
	 /2GS5YiKNXicldpRDl1wSXcYiPHVMrrLcQaFweWR/67ey0n4A3rQgenlyBHpIMfity
	 bS2iqHl8oNcydzPOdeMR4+tpdQFxvvnFV+kp8KnQ56SAfP/n+S+ii+XHadkmbMKLvD
	 SUkLYRC0JWHD7eZzsHYSfxFfrclN3lrc+QWlfcq5+2fjWSJw5IRJHzYsGzy7MyZwbt
	 pLXT+e5At/Z7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C3FCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097903368.15989.15171564315502505326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe49e912c861e5a94135002f3a55d077553596e19dcbf48e27e322d2aaba937
Date: Fri, 02 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790979033
