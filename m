Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148D63AC0FE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774863294; cv=none; b=jgn7+mYKk7r7UBt9BvTk8UJfOf6BHXZx0zAhG5NwpgWkwGTo/sputG57FnioqijCpfldqOBtjqXX5tAK6kL4MhIMocOdGozHmn+13uUfOWUY/xi7yYZ4LiEgHTTpZ44NV8uGfdviDvR5hfN0mtgubYsysWx+0A3Tt2XbbsBGJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774863294; c=relaxed/simple;
	bh=UOmMplAZ16/oU28Xkn40f8a9UtoIwPotE80VNMzQtyU=;
	h=To:Subject:From:Message-Id:Date; b=leTOplV/zJkTYaySNOjyBPh5fyXnQxlIpiuRSnIeqDgu2X5cGAtvFMuRSpFCFBxCnlfDcN9XKeEm9H/urPcFDoKm9cclJBjt1zXfXbvksfm1kvt6f9KRDigPm1uRkdK91DQuClJO1LsIrpI8Sgh0LRjjlxGVbFLiy1woQd+IStU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp1Kisab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp1Kisab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C0C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774863293;
	bh=UOmMplAZ16/oU28Xkn40f8a9UtoIwPotE80VNMzQtyU=;
	h=To:Subject:From:Date:From;
	b=cp1KisabN58+pSLFO5eBTGGO4Ov9ckuoaBWDpSY3fsLuuHRgKRTlGBPXyVxK3mabK
	 /qAW47nwDUEFJ7lscdsTb8Fv0xBQlResdwmw7nDShhEqR3JXzKYALm3iG58ILK+OvO
	 /Tm4fry0vwEwUg/K5T+kWKVpEdYYfr3EbsatwrVEVvZ+DOUxw3wjnRK3Q5sN1i00C6
	 Hvyk1BDFxl684n76iwMtSS4rfMfDIEzgeYD25ogESocxyHkmZyZBXfJHm303/1V1Jq
	 5Qwg6nNZlqEB7bmQkZj3zq8X1H/oV6ZokZhJsTh3sytfgdnZIvjbX4VksujUdONuvJ
	 986MLdinxsGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92125FB3CE2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486329358.19189.3299684557284623488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beee0b757eb29de05f0fbf9e09359611742b0f1934a728a6c6cc28a8943ff87f
Date: Mon, 30 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774863293
