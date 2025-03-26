Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AA61F16B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742969394; cv=none; b=uJYzDK5Nhf6J0eo6pOuLkJH+OA8o13k1scuK6DlA7UtZnKS5nVj4li5oxEqAEw3RCTyDzi70hgiF/rnTzze8XAegj/WRacbLodiC4aVFsv6pKtEuCf2wOBZ7ycOOK0Q+fndG+b1Ad1FRI5GWiUG1fIiKrBtSI9Wb05baTDvrtC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742969394; c=relaxed/simple;
	bh=Ie7anUDwrMVM4B7uORu3qGHH1vC3TBn9o9XAqcevf38=;
	h=To:Subject:From:Message-Id:Date; b=VgtI+duxuNHAnPNtckXq25QLffSD82fwT0yRAz1x/r9nbskHJNP7BPUNUdZBQziS1JYosvFfW+vX74oC9r8heus9F0xIpr0NIKCi6lba9NRnL0wPHJas+1XIcB7xvvNl5ln1KVIyhQwsgYIAiS3a7kcntU9T1+tUnSQHyQVm2SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/IN31yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/IN31yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE98AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742969393;
	bh=Ie7anUDwrMVM4B7uORu3qGHH1vC3TBn9o9XAqcevf38=;
	h=To:Subject:From:Date:From;
	b=l/IN31ycGtx5FdQTMVpknQD+WBN3/Ft35IYc5d/RYoYEg9Z1x0PsjPSu/0+u2Ot+O
	 s/Bx2m7MsGUW71YL/9GGoGHw39Rp+pYvDtQR/X/MdlD6Bhsari97a5eqfy7VQBRy9x
	 DQ6Bn06cM3EXIPzyj1XdY4cLqOHqvNRnglj1QzWql79IwXPETCeGnyfpvtBI7Pyi/J
	 BUO/7eAg3+0lvRwSfwbv0cXkuTweQVRw53QNjXugyrTFcGsL5Yeq89yKgtllFVFJyt
	 OOn6101k2Cnz5JN9ijvqf28X+f9Mg4xsb5bPr5HYbjtaEAkp1A3dIOCExp4qUySRZW
	 PNvNVZgUCLLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BDCC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296939360.27278.10221852021070004441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d0cbe2f99ee5e7535d8d13559a19f1acf4b95820a5ac9e57a2efc321d2b25a
Date: Wed, 26 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742969393
