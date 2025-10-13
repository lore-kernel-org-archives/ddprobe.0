Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280AB2DAFAE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760385594; cv=none; b=OHIZWnVgFbC6ftC+lI5ZWyonSzb8h72xpTWuUwZ0aegd8Gd5TJlJ9QC7ktvePrzZnDZ7F8cdCw3IAG+a3okqERtr616ev21+UNQ3mMeWF+HEXB4PfZOcvqUsakcq3vAfJ9T2uXL4zm7pPtJHuCl9n18XisRL6C74FS8QQXWSHXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760385594; c=relaxed/simple;
	bh=kazKQrkz0CxLI0atMDc4WCuDu2L7Up7t85tqf6n0FJ4=;
	h=To:Subject:From:Message-Id:Date; b=if+xEM+jNPMGscemILjIJ3QqiGS6Lr4JJwmPO/x0GM9afqKvwPYbIWqI4lS6VIXjMAf531ujeKXXqDnIfCxrmomj8e8gQ5s1KckqZQiBtlHsvzdADb9ksTFTwtDr1Hn8SUjs1Y29Ro3JdoX0JAT63Py0yebGX0nBThsAVKX+aNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr5wBLFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr5wBLFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A319CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760385593;
	bh=kazKQrkz0CxLI0atMDc4WCuDu2L7Up7t85tqf6n0FJ4=;
	h=To:Subject:From:Date:From;
	b=dr5wBLFKIjXmFwaIiHBVFN10ZBrF5qiBtSUlD9oUlx3QDIa1iD8ekQjTdjKsibiee
	 Ih/C7y2JZb36LbsMpMNNQekFKNcCutd0qhGrWkq0f10qHHP4t7PeVddNzV8UEz66AL
	 I0X7ejQrtg9rBcgLDfSw30cuzf7rXEwmO6E+sLPGam4usKn1RV3YHaTWsEuFParJa4
	 /PH7LyywjjpJlJyfhsSwXZCcVn8xpFJN2KmPR6Exh8WrnyUjPVwW7kmpm2TwCmoiLp
	 uZ1BPvvgx4E1RCTCYQRRp3pi1cVh6andqn886f0hGA9S06BEPY6WHDmj/oinWnBD8s
	 LaODFIMOcwNFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB98CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038559358.30481.7601412462597697442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd39d412e61c83620aac5457d53ceae121456ce38af8c18a815a109381bf043
Date: Mon, 13 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760385593
