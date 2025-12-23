Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3C433FE08
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766515434; cv=none; b=nNx07dyX0lnn8SwSGbbS8iHMNR27ERqsQiGp/nyuQWX+ReHT9Dy98mL2ue1JctFgJip66TgqFoL+8uMEVeV5rJIpFj8w5lIcvRe7ko8OM+cidB0LhZR1f2PphMTQTCEdITk4up6XDUPhCU5eCGNlSNFsgkJ2vJPGunw7Xo7mwjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766515434; c=relaxed/simple;
	bh=biIRGhMAFPrq0US8vCCogeCrWpkxygAwQswhV7WHXQU=;
	h=To:Subject:From:Message-Id:Date; b=aZk6OvtdonFS1VwpBYvg5+2AA36Zy1gCpOQ4hctca84IPr9sxSKCyS1CHq39V3nu4AvMH8k6PXoYbvA5QcSk05To8Du5Y7RK78oCk9BqOY+qhg8uFuiv8TM3yrQex00gC+i3T3sh+O7G3J0wUifAJyMvhoSFGZx55HgmUcatkvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsC8z3fP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsC8z3fP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766515433;
	bh=biIRGhMAFPrq0US8vCCogeCrWpkxygAwQswhV7WHXQU=;
	h=To:Subject:From:Date:From;
	b=QsC8z3fPjInl31mrqYEbdBKIqXr7Vm6fgdPzKp3fVM7Q3xGVkj6Hli+togzHFALJL
	 dMukLoiJg7HIs6qS8eXkarbgAx0wnVbGek6s1S6AgZgkQhVjnvx+v7A+Xp22EAmiml
	 qnAfTeB+L/gao04YeFX5nf46ib394dcGHRT9ksaAFbhLUwmojjLFeJw7SUFqFO80kC
	 N53kpw1baGODcU5SHjugCNHnOwZcsO/yH+1AfQT8GN6pgUNHKcTGJa8wEXrh+hvJLS
	 UKh6FETuBRznhaI2emilvxzz5CWRZ7HGyvYVll2sMn/eICD+/wo7dNsYbd38g0Og5j
	 L1cgL2FhFqfzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C43E6FE23
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651543358.6104.11388750171235647515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda798f083cc1113199d4b79fa84c83a2687d937b9dd4e4023e9ae205f671192
Date: Tue, 23 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766515433
