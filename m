Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4555B2D5412
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788309034; cv=none; b=XwFGA+LlHD+mCbsoj2uj6oTteSe1+dwqvenD9wQ+nD7CFZiZ20xxnHTkk+0NbnsuJaNwHnxcLQUtLBmhSUiOgJYts/yj0uJ2HMqTXAvQL3VPSRU5WA9IQeOiYVsUQaKOW5uX6/hrNk/8h6YeCSTKH2XuCKqNFlaXbZ/SaYJ7YO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788309034; c=relaxed/simple;
	bh=2S2OWX8IOJcB2KPVJs+KXCDaVXsAtqKuEDvPSEQB9dc=;
	h=To:Subject:From:Message-Id:Date; b=AiwRoE01Lhq9welQnGrinVNrl2CCwJBqvpyACPZ8QuaZGmCFKqc7ayCsSoOOlh4vRSrnk7w3K6guiykShaTaL7xrPfIr8H3QOiBZG0BjeWuRbltd8ZXZ/hroXpnsJQgcfAyrGCbfePLRIfRQBjgqj0+ikpjLtAIJw6RGzZXYoDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJdd/l/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJdd/l/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA44C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788309033;
	bh=2S2OWX8IOJcB2KPVJs+KXCDaVXsAtqKuEDvPSEQB9dc=;
	h=To:Subject:From:Date:From;
	b=IJdd/l/elVtfBy+fqIstBD9RqtpG4OB40sYH4LXQpTK6E/AKg1CgW7+lOl4hDR19o
	 WBrIXGY+7AwYZRwjEUhVp1Eczd/2m2P8YALqK7LmjSt6s8kEUbkCLZ4fbUwQObHrhT
	 IZWHle/C1yTMqCAf8v5QqduuK6Df4tQ9PDKGOt1Pj4ko/G7KdrNaWlBKwPcwUMoNiU
	 xGsw7IHGGy+23ivyzS33jtHFwbDEuEhepC1SRavx4EAaZ63xJs8mp7C1nqSXJxuwZ9
	 NXSYRVd55oX2Xynj5CqzzRIoyE3PRCMwjdqjQMJTnYcztgvkNd0BHMmtKpzmGXy91z
	 3mtVjRoiA9WIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9726C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830903368.7558.3187250428584812091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f75feaa07a6a0d0bcefdb74666752b78ad11433bc3b8e8d685c67c150e7448
Date: Wed, 02 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788309033
