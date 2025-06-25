Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106FC26E708
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750840195; cv=none; b=HzhyqNbRb+2wD9nAR29h1S5eihQrfzjyGP4v08MwNIMY4GOSNjQuvJemfsH71Q+P7W/qqgTAGuN4KC/vxQcqL/vdpBe6WyRfE9bhqMNp8Z+UfsLAK7grV6zM989SVgEfC3j99Y0trfPhntlau634kqFsCts8VyP7mrwmMQ4tD8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750840195; c=relaxed/simple;
	bh=AuHhe94UNRYVekUKzu9Z/lyDHb78YWbZrdyA4jH6VUY=;
	h=To:Subject:From:Message-Id:Date; b=bD6JSSGoTz+kasiCh88gZrhI7zxI5RDiGWLbGUTY0plGQiED9TKFRrXDNm/VFoEINjcnzWNIdEwpRMXot9HTvD3JBd1ukKJQur4yc1tIJ+hZ8lK8NQkAmnF7v6HpRC6pnhbmV3PGGrvxh/+mi3P2gPocQpt02+dxjBVwd/CLHUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKzW1xCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKzW1xCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6AEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750840193;
	bh=AuHhe94UNRYVekUKzu9Z/lyDHb78YWbZrdyA4jH6VUY=;
	h=To:Subject:From:Date:From;
	b=PKzW1xCjgyAEt7JiJaorPkbYYEEoUSbr3rkdZKxiID4r+YRFueHvixCdPrYY9wMQ4
	 K6ffxI5AzMOHmjjuNIUzN1uNs+wAPjlzqhfBPRD00aDlhlf4zb9kLi5DBTb/XubxnC
	 KYHzb+wzdNfLjMLy0rXBHC9OHJq33X73n4VKVafNOEpchCk1OH/hefrK7D0OQiktMo
	 v2GU7aT36am/57c81d4b4t1xNU8JT7Qf9WaltWSRBt10LVzU0/A4cEK7DqEHeXEAd0
	 mX9NxMKE/m0oYlaTlR/tvThcBkltn1tDGXrdbL+iBV1H9/a02rs0yYGIV4CJrR95iv
	 rHq0lZazWeVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA71C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084019357.27695.16010391844547546081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7f6adcac5d96d47f9f0a7b7fcfb49a7da9145c73e829ebfa76dcce832683f3
Date: Wed, 25 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750840193
