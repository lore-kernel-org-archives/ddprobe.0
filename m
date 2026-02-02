Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEA12EC56D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770019434; cv=none; b=H8g9WGw7AoUiE7vkbuP4H6HpGyLM+dtr6/IgqIimNFe6o+ZSbJG+9XMBnCmjULg1D3cCMUGrP6mwbjPOd3GNC9h2CCy+u98zZZtviK3WFmyTUAids3Pxa2mcHETkxyUmJ8V03mOgP7r3U3XQYTSIA5cKK5EjjIE1HbpwPJe3vwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770019434; c=relaxed/simple;
	bh=GGKbhxNvzR5v4hOHqnSX301/DPh9QnewuvvbsalREug=;
	h=To:Subject:From:Message-Id:Date; b=fWfjbsfkcBltNXaenqD4NinUzO0OYJm/no4sfxkFk7gDJ8kaOYcp7Lg9PZnT+op8BHq9tIV1jWOfwsufJAqW35XkWzedlWyOU8fJCoSABKhPzxfVLd2R78+sUGkw2KC4Rp1AlCyc7jIMiIcCCFaK/ejPs74P/QNTmURLREWUhAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVO03rH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVO03rH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF170C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770019433;
	bh=GGKbhxNvzR5v4hOHqnSX301/DPh9QnewuvvbsalREug=;
	h=To:Subject:From:Date:From;
	b=LVO03rH0msGYFQZ8XAqsrwyWoHkR4VRMx4IN0e0LEedR+xya+8b7VfBzlXoC7Tw3q
	 HX1KMm7N8dFNTSzN2PBM9EWys3j1b5azb6ancnsArNv9dzDVo9AuIeHwE2DVwDnyX2
	 uzevsLZDzh4GrID2LP2jE2/6CpQo3psJUa8ZbyUDcqwcUmWpmpi7Cud0NzU0ZWMK7O
	 uTkF7UQAO/yfGIKHMZOb1Pf9HXLGNZL7zjozX7jhEFjz2aYw3qS9Wkut04rUWh9s1u
	 bhPqWRNufKdelLoI0AgFsK1G306iWj32CmmaOohMDDskuZi16JRNraui87TEklY77G
	 dGz/axYRXMKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A6E73144
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001943361.27638.11058847094525091216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710cab008b30b8f01b5a5c8bd4a367b7ad402c3ba7b31e91b5d67aece5cf46cb
Date: Mon, 02 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770019433
