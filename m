Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB213AD05
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765766574; cv=none; b=pcZzMT+0eDfQPMWbBh5rrtJgh7HijLjD252AUINeKW3601DstiNZqrdy22D0PmH2/imAvC5zUUXTJ1joj8E4AI8lNSiZtsyyXY+tQ28XakoiF6w4DsCK7AVW/5K/HMapWE62SJps1pSAyhMBf3N0xspg4nwfRs0acnHQSClZ5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765766574; c=relaxed/simple;
	bh=pv+IPKzedOiPfPfrWnB1tIXnb4oyz7LD3tuhAjpqMig=;
	h=To:Subject:From:Message-Id:Date; b=DqM0owsUxorYx+qdxeuoGkWwRfSYIVq7ufDsYd4vcgIWeQ2YJwfVFADmTpI4MhFNXs24caVgBaX+k8w+UszVpctwu+udw3lS3p4Z8Fwr+pguav5OX2V0p6ncxg/gTPAZERVqRKvdKu6mPx+JEj2cTbfHY9p/swj/geeRDK1+XEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhGsjvgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhGsjvgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C53C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765766573;
	bh=pv+IPKzedOiPfPfrWnB1tIXnb4oyz7LD3tuhAjpqMig=;
	h=To:Subject:From:Date:From;
	b=NhGsjvgyltiBdno1V7CmnJncW5tcmurCT2JQuwSjhGTPhkExuYwHZOHYSyIp/ZRNP
	 naylnuWo+1zBc4XBGBBVb5ST99tMYDhmGu3Qa/SWkeCuuuweT755Uvn31UNlqGIMvn
	 8MdkLCW1jeFggcraDwQSQOeBXgwRVHGKyn7vWPc5DQrbDBi6FLnmBtI+3bw4oqo1PG
	 Z86ALy2N6NXD42YNqWpxfLNmtEzDP+KYr94ZiHGEsDz2lrQ5B6f/L7h6+TXggrxOW0
	 BIZqHVAmZzc4fsii900TJ0yJZfr1R5Kc9S8Cwj87pLL2Mi8FXrjJHdjkCCjJaSYK1P
	 fWSQA0EeULXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A034ED5B16D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576657363.13345.8828949130081474800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5624504caec6d33056a149466d113da26d218daae2a254885724101470a7cf0
Date: Mon, 15 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765766573
