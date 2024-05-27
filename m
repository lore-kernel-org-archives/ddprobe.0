Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8875D8801
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716782063; cv=none; b=X8ucMJLaqQQzOJ3Dug7sI+2RuwGOgYaeZdPW8x8d7VPLo1cWhDgUB+2YerTMyKtNunMPuVgT/93kN81GXt1lsoziesQWYo72cjX1S6DQde1ksWHaTPc5i+0D03gGqIqb/n5b0qjewu/El+RLJIgJ4eEzBkoaekJkg3U/J6s00yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716782063; c=relaxed/simple;
	bh=CBjbB+tTB+19LEGEhCItSvC5/GQ/fy0SdzGlNfJGICM=;
	h=To:Subject:From:Message-Id:Date; b=VE6hMub8ox5wHI9NyQI/BJPaH18WWbzYPYZvr8wJ/i/+8hZmDjnS69bslAgE/so5PTi4s70VvnLH7tDpiE42aDX7rwjCK3p+yNm+G2vb8W1XBU23dT3YoRIbQ6X+jnO70fAW6mxNB9w9RpoIZkueC67v79NhTySu/RKNRg3svGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7iZLOZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7iZLOZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04606C32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716782063;
	bh=CBjbB+tTB+19LEGEhCItSvC5/GQ/fy0SdzGlNfJGICM=;
	h=To:Subject:From:Date:From;
	b=e7iZLOZYup537ArCuM3yNAu56MIs89ZJe4fZtOscitMYgAwLHuXoafhUFb5ksluri
	 sKH84e8te4DIb1pQsUnvVyho39SzFOLTCX226IPC3hk4TUXU7U1LwDrWGkZjCWkZCL
	 7PgzcwcQMdr7ITBYm5x+tyF+qq6jDaNuMs8K5YT8HtBOQ73qFjk9VWIZSoomx9vd1O
	 QAoklHRmAmg89MRxmfY8gXeB9lkFdZ+e91+WxtdJMQ8PqT2naMh2+VI7groML9MKbG
	 oJz0+KaKI8s53AmKYsQP22BYFi7V9EAMn82pn+zSEaG7Fm8vUPhkzX9Evd70uJuvMl
	 ByUhgP5/JMxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0A1C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678206278.5705.12378949413965854652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7e4fba589dd312a62e87ad783f8c560d2672ad4013aafc46dc310fd0231558
Date: Mon, 27 May 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716782062
