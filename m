Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256F719ABC6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760737794; cv=none; b=YvdWZ1YZLiskNjGRa03/gELWExyJBsiwr58qeMXX727obg644zK0dHuK3fCwfiKzuqZz/XFB5mNf70lgLW2LJfoxeOBaNas8XhFa/OF4lHkKtc7Lz85vH7k9fJIEwQXwgQOHnmDRr+RVxRu92d8wiA3GVHVwfy+F80ufyQIBoKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760737794; c=relaxed/simple;
	bh=AILPspXfm5VVQPAGiakcIk2uwa7irNWMCJiuTme402c=;
	h=To:Subject:From:Message-Id:Date; b=FUtw+BW0mfnEFD2s2D40uG7KM93sfAXu0+wFa9g8vp/roRpatSlkfr5fN5tHajyhFex1lJO/6nO0tXeo04o5msUnAaO996BRTxrPh5k2LDzWLv3BhmdqBPjK6fX424qslVRR+AZBKf6nVQyvMhrNG38VArGtQWk2Ve2RKuZdaWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsE9ib1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsE9ib1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227EC113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760737793;
	bh=AILPspXfm5VVQPAGiakcIk2uwa7irNWMCJiuTme402c=;
	h=To:Subject:From:Date:From;
	b=gsE9ib1cq3VYC28uG+fwP7yOYiP/mmoXrezwaP8WKNEAcDLydzjOefULOk/wbZq1z
	 CUdtbfCj2Q24xdKQEMzzHnVqdC6aSbKXnB7otuH0WVh0kY1cml1vmFx3OvWQ29v2Tr
	 ZYmgCi/UEhBQ2+jIf01vdg9N59VtYBPsgE+7vv+vFAV6HrGjH/tyiTuDS1ClGEGB5p
	 +nXLnYy1kvQAA04kMXEbaoCz5UNnFH67SMWhj5VaLsnHgoIobpvlKJZMIsGVO8aiGj
	 vvyPG0zGAoM+WWPA+FQdO7u8MhhXURSIKPwbGisc3lDiqUHepaIEmKc9P8ac0uSr73
	 XbPTIsmpXA2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101BCCD1A4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073779358.13342.10406639242574732628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bd3721eb215b42e15cd563bd52baf1ee7f47387e7ac3d33302f84811242f02
Date: Fri, 17 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760737793
