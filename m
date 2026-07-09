Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AAB1D5160
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783632514; cv=none; b=OVAE2d30jLOJHu5Af8wzxd7ArwR38/1QY+4WPLw0Xak3a+Xgt94W6gBfdskYfUMubCcadmV8Ich5LKM0WKouX7ROA2Fgus2RkmzNnbr3Hnq6M81im1HjiAu1OXAB1iQly8e2st7bPt8pjtQznk2LNG5vDwdGljDVXdJGxaBi2Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783632514; c=relaxed/simple;
	bh=0YCMsu6/H7wK4FYr5XhDFHc4+7td1xdKVBQy6t0w+yc=;
	h=To:Subject:From:Message-Id:Date; b=fHR4R4of8hKfBEHPCOIoeMScJvBSuVpLt2vQ4+4pvHBptaM5cPh0fGPSdo6/Udl0BfjbZ3k6IVjT+8MyKNSnYwQjXENpoWuubcsjxxhQ0ZtxqcgDlKKc1iPdGqpgqhyza9VEVZcXwD6YWg4O8eLj7JvARi+QSF4gPvDCjDSrRLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INjllSHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INjllSHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA43EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783632513;
	bh=0YCMsu6/H7wK4FYr5XhDFHc4+7td1xdKVBQy6t0w+yc=;
	h=To:Subject:From:Date:From;
	b=INjllSHeX9tVV8aHqucmlAvigxVx7dBdNw4wM24NXTNac/l3IvAgzAJmL5QIkwK89
	 uiDhc0i7l6OKCfcHQQ3QDa/QineiE4U4Nih1DtSJCXCy8fE8jRGnO4qtucZkR11oKB
	 MbPX1db4YmRiBrz+cH8q7ODRgOTFuJZA0Q6f4jkd5p4X1tuKKgYOTz9Q7giBR0t7vg
	 C20EfpVafKPyyIDbLqyS7nseuve8445Z45tUhEmlcO8vrT4TEX2wwyeDC/mXkRkIq3
	 D3bdIKUTNzorHUtlTLlo1PboWdwU2VSv3TV6d/NV9H6y8Av+GwmPdND24x8ZYrOgcY
	 14aezc5I2c9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8859C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363251368.16566.8983652738865662894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedff9a6110a20c85fdcaaa31918c10561419bc00f295a93c6379e4ba0d508d2
Date: Thu, 09 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783632513
