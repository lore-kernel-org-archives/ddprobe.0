Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC111FBEA6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790733034; cv=none; b=qtpiILQEcWyBj6hc14m058DzX0POcFZ8bHaTreTPCDf6Ox6zrQAsA8QCmmCGydpmo+tsZk8KC34DvrbJUS8CshyCmR9mvdRGmtnSPC5WY71uXl2ytPJ6FQmhc6Sd+IxHpgTdSKPg4GCHIBfLOJV8YUZBUYeGtPt10iBOrpLg3jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790733034; c=relaxed/simple;
	bh=HH5hD/t038PUZ3C5WScacmS++qjsXutW3f9zjjvhdzw=;
	h=To:Subject:From:Message-Id:Date; b=DFlR7rPKqe95F1R9NiORB4pODchw7qimvkv2lpjRbnGg/5xDBHDltRw6e8iqeUEShy4TUC4YDJRlPPWt2dervohZ/vrwEcTqLle9dq7yjjKrLh+aS6w6r8njgg4hvaOMyy6TUICTmf9vn2L/5QRabSXmjZSmIDMw/WEULgX2NpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYBRaY0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYBRaY0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F33C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790733033;
	bh=HH5hD/t038PUZ3C5WScacmS++qjsXutW3f9zjjvhdzw=;
	h=To:Subject:From:Date:From;
	b=NYBRaY0kCHSLRXmOWYK0c59LlAR6maaQcz2hZITtDrODrN05s7SlEprw4zuzYwhQw
	 oIhbF7QOLgwUq0rpUetWOnRx8V2jN2i29OvHNqTq3VtP2NIvCmv3JuHkUO88emRtIz
	 zJsZkDJ7fEvBO2UWrcOC1sLIVUX8trhMFKa8qVcgh7/1e6szh33E57ZHZg5QSMIdp1
	 r4GZl/SPhBE59Zz9ekEr+u0Xshls3u9mNfECyQrYLIW6FThULP++RHuhXxk49xk9gf
	 zJoXvubvIl9xj4pjvcLx+J4yOOPKcgzSk6YArhDRrZtqGs77d4G5hdpuQvGloNOue6
	 LzW08L+sIYv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9509CA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073303368.9196.13802756215319054724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce00d96c8c42e79dd416f2a9b2ffd0ee68560c32576af951c945d87f12ed382e
Date: Wed, 30 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790733033
