Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC691A9FA0
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772357094; cv=none; b=eg146utl4hUDzKbE254pqlkNWideNgzuwUWH8Nyb2lLGyear1YNj6kPvDvyh/fBDuF4BiGb/aTfR9cypXW91dg2nZ7w7SiG/lL5fT2+PpJ3IJuosj8mzYyRd5FlKZ7Fglwc1lGtxt68YIuAwFEXx82cM4Rb16HGuZQoTDOHZ2DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772357094; c=relaxed/simple;
	bh=UjH+dGvf+T0lUZca7sDBepDn7c+aQIDlXuAxmgCUmX8=;
	h=To:Subject:From:Message-Id:Date; b=NPAbbM/VB0Su1Rj1RlQzafI39RKLn5HEhI/xRydv8NPJUj0OqmwTtEs56koTVIhs8eSFwbZAA+hgAEQSSI7FK5KTLycYu6Wv3LbXko4r2Oh+OuzCSsCXgm8ydq5TI6dc72QxdJ2AGaIqdm8M7xLk/MI+nq6GscKd59BPB/sxqhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upn77Ifq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upn77Ifq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC21C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772357093;
	bh=UjH+dGvf+T0lUZca7sDBepDn7c+aQIDlXuAxmgCUmX8=;
	h=To:Subject:From:Date:From;
	b=upn77IfqQLrbwyCmrAuep06F46csYho7NybnALA9ufXyFpHPU3YnsfldsnCZXVNH4
	 S0Z5Y/LQsjastDvuHThetMlzk0Co7u/ANa8en3v40PKgsNFIErLPMwuy1cuwtAT0yc
	 Ccx6fWEdXzmwHZCPtmjdC2H7f0Haed/JKqYgY6QHzKWNk1br6fKwbMcHd3pqrjgMuG
	 FZCOnfXccqGGU9g89tCfS6jZbo2Pvh0GF5WUU23UxuhsjNkoK+ng5b+0EKPtgHdkkN
	 QgGwYq1y7gndzV9bOuiXpU7ak+wTUSPtYxz1bouGZN/FiU0KAGdETFHikVrzFY5a0L
	 84Xj9KDzfKS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AEAFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235709359.19141.7397092520387728305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f41279bc10af88e68ff4ca3fbb33d1b308ca15749c05c94e094dc7e31ef11b2
Date: Sun, 01 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772357093
