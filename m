Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EC442FA9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785364234; cv=none; b=cPH2GNlMCXHSTyVw8RkRzwQV9jmvhAjDPVpqlf+AH7vmDLvb5UfX77DsUJLKM/V/YQOSpO7ZSlrbWLZ6KSNJ1IJnbnvCp7lxg0CVVdefKuUnmB/SPbrrKTK8ig5h9oCQlzNir0CIkyMA4g1q2KGm3hUM1xKLiZVcA5RcJQ/itD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785364234; c=relaxed/simple;
	bh=vA0cdRZcES3uFLotGwFtXdVOOspb6XRrI8jZvfp9GCY=;
	h=To:Subject:From:Message-Id:Date; b=iAmQ8IhNfZoqZdWMxr8iRjBsCJ3rOUeSdzoOUV5O1M+ivKLkTmdP3f3jt3sdEBj90mNpqdttSd9JajTb8eAwq1+Fr4iTIsSK7t9Wia9WdBzBxjP1UqQvGxlCW4YxBPOdQRnFZNARwe3q2i0UDuA/QN7C8qBue8yTMpq9uUFaQ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3v4SMGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3v4SMGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD49DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785364233;
	bh=vA0cdRZcES3uFLotGwFtXdVOOspb6XRrI8jZvfp9GCY=;
	h=To:Subject:From:Date:From;
	b=V3v4SMGmTAJVTse19Ox1+EdAKavC7tZLbyVRpbhBABcplxgb4wprra8IiiaUciE32
	 0d92D2WrjjISuPQuA5/rm8xnn2RxZ5V045nW3m++d9ihx4fJPyP42X3MavcSzWXmZb
	 BbM3G4gh+cDQkes6nqy/I3j7BePL+6lxAn7y3lR8KTKQ6UhAVbUlOpgIgUOYQ17Dwd
	 +dZco2PSi0aZu8jpyFGNnD0CG45S/nBzBrKd7ic2JfMDD8CQrlu5OWBVdoCtILyE84
	 aaDLv+gH37w2ZMQgvZXfEVvHAmk8GROh9RiBrd7CNc7GXXnSMGj/w6xHenEebeuwaq
	 gXjtsLUR74MHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8EC54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536423368.28868.16964097690362392709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f9c030b13d56b5d81303a6f6c442c2acc2cabdfda6dd84616d24fb65fad37a
Date: Wed, 29 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785364233
