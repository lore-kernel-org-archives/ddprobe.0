Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901F937D101
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784893834; cv=none; b=fQ21zj4rJWKK7xkyV7hhygRg+kEb4Rba6Es3pZelI712+hIw9GrVUz3/ezAvK86N3fN9lf4A4pNt51V5agJ/Z1h6ftWChkuF09tYVkQPhPyDFKNppzNgxGBFsXnGUficGGY0vdDMy2Pa7HKuOvfi0hZpO32wmOhMfrA2RiviWFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784893834; c=relaxed/simple;
	bh=HBD3m+IaLQu16mLxFyn0KDgiyCka+uICTuSiiCv4ZE0=;
	h=To:Subject:From:Message-Id:Date; b=tsoK/9Ze8qpGnLkLt7BUkNzkug36xFgBSBGgXQ01b5qhz6mzOC/gnIR09bLD5tOOM76HNvexchsygOFwq5QcndXuydbz4Y4sx/uAmvCN7fazTG4OSIRiM4aatVIBGA+1JddoHFSnMs3fuQm6DrAvyBaiJNY9DR7/nNyQIzBaG/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne500jji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne500jji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784893833;
	bh=HBD3m+IaLQu16mLxFyn0KDgiyCka+uICTuSiiCv4ZE0=;
	h=To:Subject:From:Date:From;
	b=ne500jjiCeAi170k9QTXpTzsyRJVWx+CTqMOTbsWNKpluaLZsCmytydPGIv0gXTWr
	 RCtTA2AFIX37IdP1u9zsxFMYAbxHWY3MOI6D4G32bJYgHYJ+PbrkoZMUxD0pSdARhV
	 CFDmgGyQdC3wq7f1kMeIiHX902ClSOGrQdczFGDbaDw5EqSCN6lisAbQcyNwGzsFv2
	 sda6midPviWgNJ5RUjnjMuhna26tT76WOiBVUwJufSVFE96GU/CYOb2H73tnvApxQU
	 W4wCr9G1LSWosJXuTnrClXnBqy+rblQHE5HDS32dx1O60k5gtfMm9hSwtRzbodmvLQ
	 ULM5QRTPml4SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F8C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489383368.25653.5118096879814281411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496069407ed80797283631a5edbb6033ece1ce24fb042931aca2b99a2c4c60d2
Date: Fri, 24 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784893833
