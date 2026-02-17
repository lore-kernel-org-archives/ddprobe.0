Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DD715E8B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286693; cv=none; b=Ic3q1pt36wnKSMJSVHN6GPLRfeykqxWWf21SobhCWih+oEi93pz2t4sCMedZSzg5W5unxjYnFipec3XEIPXjYJZNkA56DdPfNFSN0hqgnvjqVtYjdpweJlzAQhEWnWijgS2u3ATmDOi7aFsCfxuuc8dgl5qcUM+ztVl4uvF5OIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286693; c=relaxed/simple;
	bh=qauuUuAD3epQ6zARptOdZZuA+VDU3sOWqmQ6AzGTr6g=;
	h=To:Subject:From:Message-Id:Date; b=swiFlWJe+Dno+sd5ZptLBkjo2krT62Zt6p1BAd3jchV3ESmzmIneMk9NkvpNnPL7jO3Aal6MlNFdS0OiYttUhdq0vsI0Cx8OZPrUK0ntoZWvW+1KOgBbGf55UO0mZC377zdYzroGEO6Jt0vgXtBLxIRmWNpTN2MWIwNsq8QGH+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkk1/SIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkk1/SIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF595C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771286693;
	bh=qauuUuAD3epQ6zARptOdZZuA+VDU3sOWqmQ6AzGTr6g=;
	h=To:Subject:From:Date:From;
	b=rkk1/SIOpkbHnclU/IizBUf0YdIAHKrvF84YdP0/kwlhgUH3kYGguBKem4lqloJ2o
	 zp49HQWB5UJo7iLhmnVgOT0HcDkkEOpuKeuwO3UgPks1kPuNbZCxjHDBW2CBqLSWEO
	 uf/S351EkfgfuvIYsqxoMB8h6/zAPBIbLXKtOSGuyWHIdOzTd7gL99J3pzL+HHdMzS
	 zxYOmcNxFtS9egVR1NnSIUG8MgAFjB1yH52XH8U6TI2z+VCQZ6n6GfRl7Uk03B+HlB
	 KS/L4V09lTYl4tVKqWKsZLWvuMY954/bJNIzNcEpMx+svfhwpmR7UubZC20YgBKiqj
	 4CkjoKAZYvLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A965E83844
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128669362.32038.4555892399209472487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144c2f0cd1756f2ad31dfd9df4b1345beaceb95db6a008c0b63a45669bb4d34f
Date: Tue, 17 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771286693
