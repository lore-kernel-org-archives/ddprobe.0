Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EA22C18A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753667994; cv=none; b=Wc3JPI5jSpHoxcHRyO7d2YpxeY1eKZ/WpTtuPg9wXE0FLOYgbPizGCX5Xpda/EApHScYHk3MXVGySdvhpAUMe8HX0GIew7cMU/MkYhrxcI4p29kF0HySPpN3hmA1FqKLFesTXI22RtEqS61dkHpHY7TXqOreRyFqiJ+fvXJuefM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753667994; c=relaxed/simple;
	bh=Ti3SooSi//YEYhmFiwjpD78y3zcYyufaGA721hrSccM=;
	h=To:Subject:From:Message-Id:Date; b=E5fnrwqZUEzZnI2NW47PnGfDkXMq8uQON5hb84jHOz9Wvah/5C0/XFHBPiL5wmbCzMFYSgtqw9HCUNLfeHs5sYuK8rG1nkvNqzj9AtHYwpgwpoQMG096+Gsjj1mI16pFHKy2P3UC9OWOSAyDubs9iVjVSnbBh2Lrlob33MReuic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExlLdBv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExlLdBv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77A2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753667993;
	bh=Ti3SooSi//YEYhmFiwjpD78y3zcYyufaGA721hrSccM=;
	h=To:Subject:From:Date:From;
	b=ExlLdBv74VSyWXLh0w5JEmMG/yPJOCIOHvSZeNRwWng6PhXkvmnQCSbUw4cqE24Jx
	 2jmjwJwwfLZ0OsagYbph5dS/UDHPf63MR6cZC9m2wZA4rixkNJDFf4jG9Qxx6+6xPE
	 3uj5NDtznegVqgPW9JvYLB6InzlGUsIfOA6U5WpztA867AmqniuO/MqdQd3hDi+jAj
	 JcGZTJrxqR9RQDE0NsfbzhMxs+WEZKdmD0lMw/JUL1pX70pzh6MlUWZ0B4JZcuCrG+
	 4XpmC+WuKNOJn5xPZYuq3Ib+hILwXfPczg3ewVcwVSht96M369BkSpYIkhsGi9Po3O
	 kQwqIZ4qGVO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94801C87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366799357.12794.16028863697338831728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16a5d124495c84c09c8385886a2888b7f35bf5aded4c7b23cbd48a54e40a0b5
Date: Mon, 28 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753667993
