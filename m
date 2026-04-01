Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1283E13DDAE
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775087134; cv=none; b=XCb9ZOG7FsC6ssoPLFqe0AdyJ3SMCGUJWGiPFlSbzNRTtk8dxXe4iTLZ91WA9Sx2GZR4JXmU5c/gixSkZLO791du+hPoFmS7KcfjedGB7VDo21TuperHtgi+nmFibUK4bGkGDBbel8jDqyjlM/mxr85wFKGy6LZzXd0wo3PbBLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775087134; c=relaxed/simple;
	bh=Hul9iXWM7gpAzukBMJz0g56OlAUOjPH7tNcMP1ZbZOw=;
	h=To:Subject:From:Message-Id:Date; b=Ptk7KlEJO1vSNV+u2FV/nf5p9yTe/kGvNWyFVbn/9iYzD2Pk34Y8Agvx/TieY0AFabO/jbX76MJqDUFaMGYbaLfj2nFeDj3t4xXQnszMiX7OeDePC6nchYMtbQ1H5rmhBAW8v6BDWNoA/Z1+2JlvtTf6YJfW1LRWi6VwHpFduL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pP4q1IRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pP4q1IRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C191FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775087133;
	bh=Hul9iXWM7gpAzukBMJz0g56OlAUOjPH7tNcMP1ZbZOw=;
	h=To:Subject:From:Date:From;
	b=pP4q1IRBrjJTAjcuvMDCyjFlnZ0gvPEW0XqZ1cuCl/jEHuZOwHg/G2MVjuCsp53br
	 ewOJqL1QsrqJKSiQMvdyb553aEXY60pE7r2U6/NxBBc9IlUls0OE5raDLUp3XTTjxN
	 UKIMSrSJZLHczqPZcI/bE7ce5o+7R3sd/JPAUManU+9ueNQ7j21iPMnkVpeUOTurTY
	 v2PoBI+1LnYcBHccgA3QmdgsnVuRqXM9Esnu1jwcx1PVMfKWmfgAb0nuHhcdUex3N6
	 NCXC1TxOxEk922c67DuoAajMSJ2Ed1UNOJwuMFW+pmWsVZKYEPMnhWcf4SaUVWAATa
	 5aVZNCCBnp5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9FC1112240
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508713370.11592.1941528737210115381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338f5ef4afd16aff5fa03f25beb6261d0d3744591a12226639903c506b2cb172
Date: Wed, 01 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775087133
