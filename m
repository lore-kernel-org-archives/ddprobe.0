Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336F13D669B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786365634; cv=none; b=nWhngzAgv6nqz9ZWESnE+qvkUd+7nNRD1wAj7LpvVVd8+ZesZmb6x5DhirMHEdwfH0OSh2KKTHERx6342qJxjBdHmyJnGcx2yoY/slMP1gTTkJkSzufdyvl6PIQrrOvqACco//IR+KKl+1Z9Z4aB3/t8QKuU5Hu8tIWi7q/dcsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786365634; c=relaxed/simple;
	bh=2AQdinbkzNuz3mMT/XnYY4Cb7n1q3e4Tu72jXQ2xbKk=;
	h=To:Subject:From:Message-Id:Date; b=m+YzAV2lfQdrdNIdaMNei9F5de9W27VcWncWNy6ODT9edfWH9CTp86E4zRvrahZVWB3EJ+FlJaethNZFrqq34GgMVWCmJ5nk/k2AOrKUNf3wyPIvA/X9bUYn68yLmg6Q4ZjPrl3wVK7kCI5as97WiisjsUBYO2UoZagLXdFYk6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg3/Ztdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg3/Ztdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DF4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786365633;
	bh=2AQdinbkzNuz3mMT/XnYY4Cb7n1q3e4Tu72jXQ2xbKk=;
	h=To:Subject:From:Date:From;
	b=mg3/ZtdvqIPIZfqVzBnk6e17ZSRZACdABMvbpSRTa3burKEp6zGO/QklVxKFthXCi
	 +PZ0vY5/JbV+VH4WrioFHOlOB3hbkxQsVp/dSlEHcQN8j1pqU/gMakby/eXb2Trse2
	 zLWhEaDzeKJb/swejJa5/WKrbKATmsi9T3L1w4PZR7umKSxaNfKCU0V5k6KJE5R7gE
	 seW/I+yNspPwaxjUGNyopkqZzTnPrOjM4djYensEhpEBAy1EHSBZauhlwbBu8pE/CK
	 jmO0JEGPdXoWEwlLGJqgEpXl+uHpj7NXnJ1CExIuCMxUh8VcMtVhFKwmyz29ZZxMUl
	 UM9EPfUofkWYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1358C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636563371.21761.13402436505915448148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2581a28773132f390dfc47a02b1c51f9e6743b6537ca41557ef287aac3dbed2a
Date: Mon, 10 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786365633
