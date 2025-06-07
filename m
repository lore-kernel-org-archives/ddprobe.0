Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371D5CA5A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749301794; cv=none; b=FNkAro5gSiNzC4YeT/9yw5/pGTNf1mm8NzPi94qngTz0ky4Hcr2GqeH5UC100YXK/empMYLr3eWv4IphdCF3ZvBC/YjMZc7mRdm11TVXYLrWlHpdVo+EqeE5zYo780KqIqUZ6J79snDKoPHmYeaQuylGEqYqNnD995542CVWpR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749301794; c=relaxed/simple;
	bh=agLSCWbOAOoC91OFqkMhjk9LVPAmk4LDRZtsizmkwdA=;
	h=To:Subject:From:Message-Id:Date; b=NGd8yhHxrfTZdbHA0+P03c58kHaQhB4Fmm/QqTRrz0rEOmOSwPceMT9L9xT99ayxW92jsTjZzbVmZMinYeQ+itRkMODoDxwuWXSgoLPzX0KezBNSIVBFeGnZKnWsGsOxx9QWqUh56bl7aQRUdsGUJCaz5iDyf5aJDXkVSEFbX+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXH6kQna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXH6kQna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C61C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749301793;
	bh=agLSCWbOAOoC91OFqkMhjk9LVPAmk4LDRZtsizmkwdA=;
	h=To:Subject:From:Date:From;
	b=PXH6kQnaye+1YvoGHoAzkF4P4cwBM9PXI43zAjzbMbsBndiBdjpwV3Pg7E4qhDD/t
	 Qddk3UDsaalTWtA3pcB691xbsAcqx3gkaS2rGAzeoc/2zCoU1MEjjAKoB3ol//CMrE
	 ZJ1KcAI2W303clminDy9vpzWD7j4DH6zpzeHz1lPCYO7v5e6ZON7BUvgc1tgpzNYQn
	 pknDzG5R9LkmtgSmlbbOGGSfn7gN/4NtyyOni0ZTdkcTji9iKhTOUG9cy0MhvXz5wE
	 XKlFE052RCc2hMvM1n6NbwWwsDsB3/XcwavZeMsv6TmWqiPpon+4oqucytRAlNJNnI
	 2uoqlj6ft5hQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93929C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930179357.22053.4265173682491230530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece0aa26c137b5c9e55bc82dce496cd8de15ae33278fe7024cad986ee6a445ab
Date: Sat, 07 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749301793
