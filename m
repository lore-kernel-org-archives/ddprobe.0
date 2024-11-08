Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177FD194C90
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731037554; cv=none; b=BvR4Rf74Ao7FcgPS0BtQopxp/mFoH0pnlYQS1g50tdRgzbTYrsAiWq6UIjzAZCw7qR2rT+DpXJYPe6UF5j+huf1Solujp2wd/UeUkdpoiutC07tlf518itmvLFXLPvTH5OnPyIjXq5HNb6jUGRywH2ORUn/mpfwr0zLG9tH9oNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731037554; c=relaxed/simple;
	bh=L3qOtVvwCf9/H8Pe3OpI5eBwWxfsz/jWEiOKPp4UXDg=;
	h=To:Subject:From:Message-Id:Date; b=TQdu04VpI7obZrZ22PinVoqnIkLWYf0kS1gQY0N9piw4/3/s5jRftY49EqWAyurIJ8QWIeneFtdVub12jmXcrR5T1sLeffKUmYMOtlN03N7ps20M+HFjwzLc7b11Av4NVth/XvXyO5yfeMIxfb16xqtzYP7Qi0oXwoP31Y58E5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcL6zACu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcL6zACu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7285C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731037553;
	bh=L3qOtVvwCf9/H8Pe3OpI5eBwWxfsz/jWEiOKPp4UXDg=;
	h=To:Subject:From:Date:From;
	b=FcL6zACuH8fTm+JtfnQG83rF4mhsL/UOe53Wi8tSZT3M9k5pmhjYk+Mnsiiqd6rst
	 Oxcu3KfVMxWRwu26zyL0emNE/k5r6GDVZ2nOTaitxHcOE5aW5dRJKIYx4JCIacHSiW
	 PBIzh8PDmXXGVzdlrMrEOj8Ptadk2Et0w65II0v5u2dSD2vgJaKqftVZ3ZUk2Nh3T7
	 70lWgzxEF/GZi1UdUeLFEFmhU2EUexs9P2/UsqC/QcTwZMG3RsT3UrteiPqj8b/urN
	 q42XZM62qAj3RGWDL5cz5d84Bq3wSeylcGQH3VEpNH9LPclI7OvriSkWpd9IImobo8
	 ZMkKMjHTdlVvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C2D5E124
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173103755360.32728.14592045695908624497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e41bbc59475bfe34c4eb65789cbe2ab02365ad5e9f1c6cc0b83ada9bddb2dd
Date: Fri, 08 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731037553
