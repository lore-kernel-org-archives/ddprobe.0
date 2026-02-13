Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E1A3375AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770977693; cv=none; b=XhmpCIhces7L44Rj4yZUmpcwRCzy+ZQYOIZTUwPeGNLcfuBnDHd4VjqaxI/VaQv26pXBEw56VElVSKDWVRB1s1VuzQb9ANmx7WeHiLS6yDber4HlKNX8ISNA+i+RwMDQU8xleX1hAQYieQjGS85IqFtZ0R1+WzsLNA4KAB+gaSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770977693; c=relaxed/simple;
	bh=6rEY39ijlfCvnOm5NpvT+Od5bc6pBUcTyAaRZAWDjY0=;
	h=To:Subject:From:Message-Id:Date; b=VDyhvyEdIZ0FLOG5vYt7xaeXIgYJJ2NMVzfdueN7GCDcUQjpnqZwGZ8XUtk5doNLxhZt7VXH1pDeit8dRCm8uYVAYacrR8ZUpCvoy+0ihtiNapfUzmAnVNZuVFCujr54CXJl+B95wl/TICrSmM3g88A8d0/DUiwWtCbC3GIhelQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3hl3sDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3hl3sDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD5CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770977693;
	bh=6rEY39ijlfCvnOm5NpvT+Od5bc6pBUcTyAaRZAWDjY0=;
	h=To:Subject:From:Date:From;
	b=F3hl3sDvQO+oKlFbq7C8/z9AzPIwIQA43DTjT1tyzm+sj4K20442gvmRR39RcTr6T
	 nSeSOySuidhGgsmDWBZOOco7hPMsl3taKaPCM6qwyciB+qOICMOib1BvINEj25qRrJ
	 dyA2SDg8fKKf9EPGD4/CTLAXjcpRDQMsvv3GKNduMPsUQMfuSikxt4AUZXUSBzIEk2
	 /gsMWSiR9KpezxjCP28kSAQiVAsNJu8VtLodTGy8zIeqnR6zjOUhoTxu+Wb6BIE0w9
	 SJMDkIXlZKWO0lrDzWRNgx4zmgEBjH7j36jxW8mrSIzmzWSEdbDm7In4WeESoTQGq+
	 r3JI+km7RZNVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B5AEDF14D
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097769360.17582.12955759867759952997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7347eafb05cb72652e71de0d9717456309caecd32d176313fb1e99164c35eec
Date: Fri, 13 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770977693
