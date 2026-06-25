Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB182E7397
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782359854; cv=none; b=sCwez7BHldmTLN+JrPcQTtJ5FoxvD+FMU2jWzu2q9Psx+XZnoGV/pZ9HSKs2LfVtjNo0d9n09VyeQZGsm25QisSrPe4WBvxR3pr6BRQpW7/UPf0w8w59uIOO750ANPV4hbNQSPVjB/uIqVVx1sCR6zqwHzoXVc0sumMuJJWgEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782359854; c=relaxed/simple;
	bh=3qjIzzNSuvh8Z8ed9lHxY5QT5MElHN+/PM7Z+NVa1z8=;
	h=To:Subject:From:Message-Id:Date; b=JrfCbXWyUGUtHORaReWknrVNZTqdcVBet2B+y2a9DgoQf9nzhrZaj/hExYWVqljDNtkmSxgLIelynLZVBnulWKk5bj6Q+9X+5V+b8XSC6zzsdNCKQxsIQruuD3JLRr1/M+eONo8vPyCy4aXEDIh2n2sxM8PvmwsPOtk9VZ7uGNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgsFMcE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgsFMcE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC17C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782359853;
	bh=3qjIzzNSuvh8Z8ed9lHxY5QT5MElHN+/PM7Z+NVa1z8=;
	h=To:Subject:From:Date:From;
	b=NgsFMcE4zOKjKLZds1oSldUTSkfxwFexbA2Zgjz2PdY40AzFxxSGAp3NBeKlJahgQ
	 8aFQJYzLcwG9Vm5I4thOh/hF41ackKBcT0mLEztQBAibJEftpHBze7APZs08yZSq/A
	 /7x9YkRVxhrPIzerFvGZOBKmJydXc90cbHD+8OJwIINN8cLekaOGhDS9pdrAQP4Jdg
	 yr6xq8TqpWpJS2cPz/ETBYFCtouls1y2HncWmn8iYurkvp1/HH+jFiSZjqLT/TQ7RY
	 e/3hWsYz2kOjzM0qOCvUZ1YGe97RhYtKI4vCd9f4hhy88zWRL75+KIkDBE7xTrNJM2
	 3Daj1yV6loYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17A8CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235985369.26907.3567171729862362635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6068f7a4a1ecdf2db25eda0e77c9670fcb92181af6cfafb1f5c8118d99102e
Date: Thu, 25 Jun 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782359853
