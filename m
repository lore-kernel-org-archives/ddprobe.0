Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599423BBE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717408523; cv=none; b=pkjElLabMw9g0XeFZVwBhNuSNMt1Hb6qNmyWMacBWMSa4uY1hQ/zl3AwOsjQ7nGx9TKLfy7flpaiYfvQcqeL1jljVx+z1kjlW4RHPoEDQO3B2++FaJiZAAF+i6q2GyRc+lPdCf/EicLt/VxTwFbywzHe41YZ0/d29h0iUsql12U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717408523; c=relaxed/simple;
	bh=0LwQVNB/0JchEaplBrYqZrli3bCiXWwkZ7dOj7qIRpA=;
	h=To:Subject:From:Message-Id:Date; b=I5ZNcnbd2df0TYSZ9Gi5YV5MnV9zWA5q0iT0Z4T/Ho6qORfFZcliFay9i+KgKaWcg6saTvyCXmNLsHUtXIgnOB0/KQ71lQT3qxaBJ0EktIz+vWSqEih9GpqfxjbdEDhwdRAgwBepraMnV5NhIZlnwSwMbYQR77aj8Vsc098uhyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw1Si3YE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw1Si3YE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95A2C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717408522;
	bh=0LwQVNB/0JchEaplBrYqZrli3bCiXWwkZ7dOj7qIRpA=;
	h=To:Subject:From:Date:From;
	b=uw1Si3YEcIS4PiDcJcap/yK8lnBiS1OTT5W5SCH0RXO08fdPzWHC7FrnJqmsmATPD
	 fSNlCSS3zPc7seLX4xE4vx7sgQ1Yn8LEfJ9EBT2F49QGqrw2MXGb4uTvblfn0+gcEF
	 uevi89C7aq5XqcXcVula4NfmD5riNkAcci3bphVWGA1neutC+dyDUWWViPbLbz1Ovf
	 xr++TudhrCp2wXC/XqbdVLXt5fyeQq2igB6DWoZl9awIKd9RfT9bSFhk+eh5IulMAX
	 ZaMB+XI+6igT31RxGkhHGyVntUudmwiO82/4AuzPMLYLxfzqdXBUhZ/dGTqhfM6Jry
	 KgDvrnnX3uGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4744C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740852279.23583.4139050494217240412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2584f4ba2ae22c8ce358184f39161e30d24910a25b108acf4c52d8118975227d
Date: Mon, 03 Jun 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717408522
