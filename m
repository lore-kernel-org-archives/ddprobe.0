Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505F36A341
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790581234; cv=none; b=orfhZ0XtdRTyxyLsroPMc0Gm5r5K5K/YIKgBs4hwOxpi4cWlvEKm3gtNzFTg8JMD3xe0EflNlnL6JQ1bQ4aMq2KHjVth1Lg9grPebYcP8sS9qLwqyWbCBYXZUM5oBU0xPgXmbloUfJy42c+Uu127px9kzN0A0oGxnsrhf1q9xjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790581234; c=relaxed/simple;
	bh=DPRoWJlS7fnWNe4EURBPyDKfzBchDrPNSzlCyeDl+Rk=;
	h=To:Subject:From:Message-Id:Date; b=iyx6Yvl9l5iYzwdWFWuhqyny5H9WMAds6ezChZytN6BNSPtu+DSe9ajpSHWcgYLOPFlWuo7lSuHdSeW85IG6qYy+Eq8gQ9RRCOnWmwVDo1xe9FNCmxVc3+q/at+3zPIuqb/uPRVQqxvx5Ec58t1/6/6nAw32akYQK2Y0aS/StcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmhQZCAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmhQZCAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B96C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790581233;
	bh=DPRoWJlS7fnWNe4EURBPyDKfzBchDrPNSzlCyeDl+Rk=;
	h=To:Subject:From:Date:From;
	b=HmhQZCAHdQjgXP5jnM23IfYhHkzM2yRjKvw9//tXCj0Z9vuAzw4NYAmHJBeIjvx06
	 rzGeCn8JbAUvSiOOAazqEhxNmt8uECFcaw6ilarTual+SrlfZYahCkF1GGApMByyOt
	 YddJ4H6daeAiqjIOKIJ1fL036RjTizcW40oBj8zuw69ea/JHsr/SdHVOxwKOaacOqR
	 YrUH4aSNL12d57LSlMvw+OcrKfTWTfaBBgBrUoUAknN+w3GBmiPQX07mDMctKoH+fO
	 NKl16M7lwgtHs5EGHXEWRaKjY5MhcUp/m2m6HZ7vAkrKVN/JP42WNea/A2YIAApYgs
	 rvflgKdTv98Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43E6C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058123372.6722.2940379150642267259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a256fc5015128ccec447d3c869ed15292c6b94a3bb2ae1e98813e7543e9dae
Date: Mon, 28 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790581233
