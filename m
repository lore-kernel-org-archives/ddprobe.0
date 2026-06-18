Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AC0548EE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781771794; cv=none; b=HmMJYNvn2b4+0C9tipSiiSMk7lpEUYzF25LJVMkMtxaKpH7lpc7SHNWt+tsf9HBtsdS7VI5vA/UFezNZdM1dARucjTsmRqTOLIqacJMfo60S0EzM76kBxNwyso4yEP8+ALewT5K8m/7rfSKEvtW1R0LF3IaYau8Clos5XlGcIpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781771794; c=relaxed/simple;
	bh=1axSaelp6icwIjokKxDqFMvBRsHJlaWsDw8gUO4JXIk=;
	h=To:Subject:From:Message-Id:Date; b=FfAWNWF0HxqmckIciu9kGQByQz7GB4MbrugbBQhwpE8LNdZ6M3K10SlK+THH1S0h/XkoAer5z8f3AiPXsum+53R0zDOW6wsnMDem+uwbRE6TjivZ1fEPNiKEVkJPBGkzzpT0qq2fnaisq4Pr5NgFadk7UDf28tZ8VJzd4FPejgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjKC2TGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjKC2TGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C20C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781771793;
	bh=1axSaelp6icwIjokKxDqFMvBRsHJlaWsDw8gUO4JXIk=;
	h=To:Subject:From:Date:From;
	b=gjKC2TGgjw8oAP6vckpSZSd0PWu4kIExzR1TGaXxPXLw1FXp398hdeFCFMqf06wFs
	 NuBgYtwZ9YaEgQYnkniYwgEnq/JsLxqviCyRHAWq4+fdI/GrjhWYKjCG336CRDMANM
	 mj+fXd1oBXcQE1Nf8Zie3vMwPrindD+0maMsjTDVbhe4aXJ1aozXxAvW//vG9RyoTu
	 QrdG/9NI7vCEkmK3VI1LZ6uwoYWI1l/4Oe5JrN67ntv9zzX1OvfV0lOZfC1ckYenug
	 uwORFLjHIwfI5f81uKFqIFwnan6NRZ3GSqXFO0dA5W8zLp2YLvxTJiQQm1r+rDj3O9
	 1hw/voh7T4ZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFB2CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177179376.10381.169480032405798799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d5da94397c5fcf998998beed5789f43bc4843dc7fbeb40dd61d6a259d9c6a2
Date: Thu, 18 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781771793
