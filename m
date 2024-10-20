Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BF87FD
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729394154; cv=none; b=EtIIulyEi3Sw/qF0WoODWXeijBr54D1IqQIp8cN1ADE2uP0mrShCt+1BbJRFKdNsl6/03jI5EsIOp2hgD8NhwA+umZDSNa2JUdNyXFLzMfQShwyhm+//pFi9xgubJejaOKUwMyneiFBLWri/Kx9RlJ5tvkhsHywjO/UFILc7/W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729394154; c=relaxed/simple;
	bh=7zX97J2LGGaLW2mBd7WxrW4Oiun/zt89Unv16ZiaUjw=;
	h=To:Subject:From:Message-Id:Date; b=jTnyS4mmfYKY/Dryeg63jhWmKKwvDnv5iWXAz0CIDxsp1uCSq7xU/VOKaPoqCOfmsnvoqLxxYMfVOZmDkY2vZgIJmd4cyRIaqYw2rEdb1IJSlyL33DB7olmG6Z8tDzj+O+Wv7giZRuXcB/G6FygtC0RRRF7FemNKNMuJHRCe0fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmJz853L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmJz853L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C110BC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729394153;
	bh=7zX97J2LGGaLW2mBd7WxrW4Oiun/zt89Unv16ZiaUjw=;
	h=To:Subject:From:Date:From;
	b=NmJz853LbmFKP0Z/k6E0IlUcpTAo3h/3r6RCMLhsNKss2iNc5yBp1+HEFR94jpch/
	 P0u88C53KdkRr+zf1TfRBOqKM90kRcia3TGvj7yhjBEXsUN+AvFxwJXEznTpksJMQi
	 6ANOVwd9YDi8lnsZG9xzmyq/CCFicHCL2pLZZLuCIOXbLC9LFF+n2ou3b1qrx5PjEC
	 3M6UXApmpzGM5VFTR5kmGhDzziseeUF/GFtWxeemLvbx2Mv8n/VFcc4tHFPDe2LVQK
	 MBNDku3Hptlmxna/DvCuGhJM1LyzAhK1kJfhby+RXzoVJALkVq5Rw1Xt5nnAEC9JQ7
	 +o9OGGLt+T16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7740D3C931
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939415362.510.15866229229319792292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e6f3a25e592c46d886d5f61734e00d0d90a641ef722b02f0d43c9114209106
Date: Sun, 20 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729394153
