Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596BC37B03E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781760994; cv=none; b=rgf/w4O5Xavb0U2JBSEWb+cVEiv2HNmoVY8/9uDsbt/0yp/+xi+B0fmIViomhJO68agFg1BFOo2MJqqKZepZL+b7lUTNxhSDV6W//8Gi0GiHzUs9CW1+PO4hbnVpOm0HbsO08jNZdbbgE9ytrofwLN/I0Ji1S81VvkeO64cC4Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781760994; c=relaxed/simple;
	bh=01whjKAJoxW7y90x42u6whv6aXwayVxmJbKSSalURM4=;
	h=To:Subject:From:Message-Id:Date; b=Qgkwq8j+GH2WxIqm+DNPcdFPdBp3CstpjOggs4JL9XdkP9J3fPW4x+czMUK2ZlCLIBWH7weYOm7bJBZy0WtbWh83O7DW1XWIE6k/EqZY8X1n3RgEYKuofBp+NphbbOvUa54sm45n/5vv297aLqeEPT6pSnjWvqBx6doV10iAjVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1+qoZ2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1+qoZ2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6891C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781760993;
	bh=01whjKAJoxW7y90x42u6whv6aXwayVxmJbKSSalURM4=;
	h=To:Subject:From:Date:From;
	b=m1+qoZ2N7/g4LFm9bp+GO1cxoRzujKSHmO43rrerQQApD3VOB5RuuPOxurQM4Rfb3
	 fXM6kAerSuHgHVSMSA7+w9kfYT3YPwubGhQvtadKmS2MKcwO3yK0+Jhgx6DxmjETso
	 Ztoc346zx2PKw9Cj+fY1Eeudt/M33a3/XNjNsWNuitlfwqHCsmdnMtEXn2SitO36OL
	 xd3BhQf5cckQ46ahB/y/626tm6d5JuNOPhj9TeJaArYs3ZZ+CIPzHTzoFy9Jx9dtLV
	 VYS29wLHM6dFK6MkzvH0CYSb4HDSAI6ptVNZSpkdjnEdla3ZtyUm4tt55vyHGFtEg4
	 V3TWzxzEnBx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0146CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176099369.14337.211844546615313307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea393b2c21351de546a7c4bce3f818da11118a6d6e946a524d2e160bebd9860
Date: Thu, 18 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781760993
