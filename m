Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD282DB794
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789989634; cv=none; b=RyL1ShMrFW55g+DV05JXmTToDB1Z0tJagiFkOel0YrWEvv+RGokt1fgW4VkR+A39mJJnpgtmLtssaa5/fz0xPL0+aK1OTBy434xhjcENHDydFSSdPmYiGaNz4RFNFdzVm9ELvzpkSV6fKL9hV835ScgTksvvEJdebBuw6bD0Pnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789989634; c=relaxed/simple;
	bh=bU27ghkOpLzlLTjKTMJQjZMxxIBeDvymW4ZT+GIFqQ4=;
	h=To:Subject:From:Message-Id:Date; b=oDXB/oAAiRgDc109SPLpwgSawM+QCmjGvzEX1lrA5NrBA9485TbIc30e0bYgJ42UemlFi41621P3K6brxlZZbIKjwo3O8bsoKHcWoywJOUA8sSMHTrTk737ti6dN27TsEkq1nJfQthTs1ArLfzefZodXqIc4O6EaeEkVeYEjuAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6ZjP5bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6ZjP5bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBC4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789989633;
	bh=bU27ghkOpLzlLTjKTMJQjZMxxIBeDvymW4ZT+GIFqQ4=;
	h=To:Subject:From:Date:From;
	b=S6ZjP5bqLh770PCee4VumPgzNHQBeebM7tDvWCMvC/UrenWhKqqS4wcPWNl4Enbvy
	 MntHGkvgSCQSoXJNy4gA4ErwLTUk5RdS5aEoeethT2gH05YFu3ZOhR8+9rkmM8vZaY
	 Xdp3Me7J9s9UOhGZmk8oXvz54bw8ViDCHVhZdDKFN3vabsdowzXRSqszPZ4zGqTJny
	 uE8Q7vMd9xoX8x0MT3ZAa8Di9U1BVhx6F/uD/w9St/9ejxZH4cJlE5KNTONPuulln8
	 jbtcFThIBQ81kRyXUJZK90QPcydnKspwFZTkjuiNdRk6ZfTyOa79lvRmm51i+9YNTL
	 LjUIysMgB8gRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF8FC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998963369.22987.7699740030648808044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91ed82bbcbd0125ee07d3001b6efb122de5987e458b3f413b87201e733d5045
Date: Mon, 21 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789989633
