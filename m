Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780D20C488
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767129834; cv=none; b=eUpLsUkIzb63iqcIrDY2Wo9VvHTc7qhGNlWnVQvhgPdheQ98a8yA3KJ16dZ/Y4Bws6ITFLVXvjWo1AZL4C+oatALjtCssdlGTajjR/VTp4NEYYjVGogKEMc4w5P5s6MovCVyBnOjDT4JuPvBcpNJXkVYmOicv+A32gYrb9IMXDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767129834; c=relaxed/simple;
	bh=rbUlZfHU9ky/dPYtO1GiSEeBgUbi7kXKgvbqbXA+9MY=;
	h=To:Subject:From:Message-Id:Date; b=tNLFgVOxEE2OL8eghX3TCmTRMGQGori1rGPWp8xF+e10v/SGZVyxxF2t2mEmIrz9dxi4BZ1ahPL1rySH8gnXnCyqBWYDR8AbAXHz6GXEsbmaiugOdORtpg+24FIHqj1Ezmqt6mDBf7lT8xrYp0Ku+KfOJK5IYxoMjrImNLJrh6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz6fk5eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz6fk5eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2468C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767129833;
	bh=rbUlZfHU9ky/dPYtO1GiSEeBgUbi7kXKgvbqbXA+9MY=;
	h=To:Subject:From:Date:From;
	b=rz6fk5eLSLgsNbp6SODJAzHCiqXNc0NYondj0PpV7uc8NDid/yMtMnTV5y2wiw83M
	 6w6CS8n3HqZ7UhAkzhvV1qhox1bIgrMraRJo9WD0IuYxqcFuzUaFuGh5B/h/B9Z3Ta
	 X9ycVfApLxGx+LQm1u5tKvidSWc4qNG4zpzP4tM/pg10+HcA+muKmdIPzSVZ5hhT10
	 eAOARrwkuf/FFR1E7VcwZF9E4jZXO2uddH+TMTo2pagcasLEx3XgS+yrV9zhAg6e5X
	 C4NeLQLzICo4bUDZetqIkddOwx3K9/9xlRSql7zjaFfqqz2nr8NVXqHGj4Gw5dQtuE
	 USLHAQBoxoLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B36EE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712983358.24588.1200027618375812943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94fb34a28bb26a9204c26fd7ecd7b72a20a872854b8b2cba900c0dcae5b7b96
Date: Tue, 30 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767129833
