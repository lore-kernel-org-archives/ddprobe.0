Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409395337F
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723620354; cv=none; b=gKBmH81lWaMgqm86/eQDv+DctPu+bDX2mjC9Fs+s4AusXK64F/JlnvHwMe6QugT2QY5nUhDvMQW6gaaw/jAUA1G46RU5G8ZCXhshTu7JtGF+yp0W4w1J2a30nUKtCjc+FguBdh3C4YHb3IMdmMasgiqx+20Rg12pId4Bw1ab1Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723620354; c=relaxed/simple;
	bh=XrDpGjscO/luim2q3vxRQ9opum9zfGfwSxItQcV+ggo=;
	h=To:Subject:From:Message-Id:Date; b=b291h63EH+DTnpYXLD/2ZA/ICWRht4ZimytpZznnXPJT/4cbrjXgxcHJfGLQEulEhSrf6yXfjmjaGJAL10QObubT4KE4jlUQZKubkM+xVyaVUcLwP9MOMeUYpnYcfw9qmfrKsKcmQR9HhNJgrJaNpw95pdTZLmH319M9rP5P1Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCcFbbqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCcFbbqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8334C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723620353;
	bh=XrDpGjscO/luim2q3vxRQ9opum9zfGfwSxItQcV+ggo=;
	h=To:Subject:From:Date:From;
	b=vCcFbbqMFtdnjNI2Lih18q3R3Tw9yMNO2BPqS0aq7S7na6cK+bqTuR8BYbzkiXwNF
	 u60HYVBk8cplSW1TmEKHxlziqGQLpdfYakojnklyHH0KMED21ESusk3cZquJHkAfAo
	 VVhe7LHZ143QEMG6j7qJHHWANr2WfRKQINOqXrHZRenzx0ocroemHLAXt2VoQK8+hr
	 AGwiTYL1JjkPrxyWOxvtEpXB3vV/YvYRwFDHVyxsCO9weNQzcN1kTbPtJVlIqakAsb
	 y3ujzUbUal0LKMY9SIpd7mu7S0Q56iSlYmPpdELXXThSUJeKus78rJ0kEELmDKbhdB
	 aY+EZUTHftmrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7521C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362035365.3876.3712759231826437520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2840ea4f27e5c7d95255df87c96ab4a2201a608c797741167c6f4d27cf086f5c
Date: Wed, 14 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723620353
