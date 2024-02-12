Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6084C627
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707781697; cv=none; b=U+CtE/tNh4jkxiWhUsALAiJcG2iwiAg+q1dKbEuWiA00R4DoEUEnewy42Xra4eDpFFPf4oCjmPnO+NclHxBH+XcgxccdjtJplyvj0ujHWCPqgisSSEfegxFP65/615zf9jLT8Yan9GcxFcYLERnJTVqnu4r26iGb5iHenQ7xMMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707781697; c=relaxed/simple;
	bh=w3CTDYXLgOz++E1o3TmDCJr51H+vup6K5gWYnULpcOs=;
	h=To:Subject:From:Message-Id:Date; b=Y+nnpycDphRazlWlF1wxqVoKyiJ/UXv3RIdk+68YO7L0ZqeRoYJy/kqXlaqMVKTaIH9L2AJpPAY347030jV4tINVUGlUHphBrYpVi052sjd+amfJpoFM85bUnmJUuGeAHM84wvqZXSkhA8BXQuaMl2VUweTkEHp18jismyg6E00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdn7TodM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdn7TodM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D04C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707781696;
	bh=w3CTDYXLgOz++E1o3TmDCJr51H+vup6K5gWYnULpcOs=;
	h=To:Subject:From:Date:From;
	b=tdn7TodM5jZgtjcS7EpDNHXkj1oEf8wWDgP+DG1l1F39iqJQQ1JSV+eeK9nrMVIU+
	 AhBDG9Uo86vEYOv9DJPHhW326TFP58vPu1qClHF4BMFkLfG6kpWzsOfQBzud/buDO8
	 FNV+il6tj4C/Tcp0IetT5mzdfQw0OjBEk16S3zm2UdRB5S2IcnEN8Ew36/zDpCK7gI
	 0f5ljUlNysafMscKOSaBdtKtFNpC0mPxj4fvk3h2DrKsT7hl9J572MHTiT7nrPEKmK
	 D88/sfQqU7jNG6z+gbT57ZyZ4AuEbdaf9PD2Z4EBV86fPXbWjdOEKZDVKOv8kR3D6Y
	 /RujEtdYvvQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C17FC4829D
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170778169642.8748.13380461180361452312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4289820fc53dc034b49933d6a4cf2695303e1452c2e5b67c2b395d8457ebbebd
Date: Mon, 12 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707781696
