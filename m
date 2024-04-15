Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B2D5D74E
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713187163; cv=none; b=XHnAGQ1wJ8ekSmJnRBCknpegPfUeu6xrhFsMjuhZFGKKIsaMqeluWzT+iYrSaoDqtZ8Lqys7HL+ybI4IpgSTQeVErFcOZ6zboQNFPIXaOFcTnbrgxdNUMP60VWctQiC3FnhN25b9gA5CM95OKdI2yTuLKP/yMFgCQnFrTlGRHjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713187163; c=relaxed/simple;
	bh=vA1l2u9MFE55sGH6I6GlBDE3w9+yFLgX5Uxqp7U5i5E=;
	h=To:Subject:From:Message-Id:Date; b=a7OqZuUT6LUqPH8KMnRHfdgnVxwUOP7NXNV4VFbQJ+LyIuwUI4gXc5ru0lAmi0OTo4ZQP50piDUEiUBoelZHhGet83l/nTdEFgSRhzZ/IyME5uEYgqxKyPKbkGdrNuMmF9OEJbCblQI74niIsOeviA+E/ASTn3OT5zpNShJLAvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvFZhTGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvFZhTGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B3CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713187162;
	bh=vA1l2u9MFE55sGH6I6GlBDE3w9+yFLgX5Uxqp7U5i5E=;
	h=To:Subject:From:Date:From;
	b=ZvFZhTGJ3I4foPEK3QVvdmIgJWjFlw3IULo79WHOiwr9zktgwIUHjHsC6ETnDay+z
	 yrGC5vROtBZ0BRQWYFMNI8g9KWL29jmWnsZ9vekXsUenWt0SqV67XsHLaD/k0JufTY
	 Szxd7DUrg1H7z1d8ozYaXfZFuH7OKBI1tDrDqLkOyJpt7Uvtr0nnmOy3i5tBMXljTk
	 +bTaeQ7zJ4XY/u+jylCatfBLzsg/Nlv7Vu5ojvZaVA0p4DlcYNE5lfSBbhESGTmV1y
	 NYOyJe/lcYWYGyXKfl5ODZtbd8pUTWgl268Tv6zAvSfxgrazG2ehL1NjXqEkgVkG+e
	 v8BoxZlY5wtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F99C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318716275.23747.5257254373591482386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6be547cca36007c165ad8e086225e59b9f8399158b3d7461f3176fc2d1516d
Date: Mon, 15 Apr 2024 13:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713187162
