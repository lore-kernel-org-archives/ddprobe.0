Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0691E5B8B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743673194; cv=none; b=UYHulanf4yCAHz1Ia9f5EnYvqcqtJzvKUEmUNyrAXyELd8qZnFOcSn1CHuFz08Mq2sAiY/QG1e+4PuGpu01zKQM7DVu00jwwlVTAjYsnSeyaT4TmD64leENjIM5FQLlXfDW+9rLqzBNY+izs6P1cuuISh/R5OPB/oLR4/IaO2S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743673194; c=relaxed/simple;
	bh=Xw78lKey4hyA8KMGFWHo3w3qDTyJGvfjJle86ut8PF8=;
	h=To:Subject:From:Message-Id:Date; b=gMQAwDsGVpojbkV6lcukXDGbURMWUeANX5NHpn1vgZigYCHYVnqVr+HMQyp/jY026jBJ1rVr31VFW75q1l75s93khWvoYhu8fF22/CB9neDRu2RWnvXgwZlEtL+AffoyVIAXgjkZeT9ZFfonvnkvEYE6OSMRuaLtkKndQk2HFLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogq4h0Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogq4h0Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2078C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743673193;
	bh=Xw78lKey4hyA8KMGFWHo3w3qDTyJGvfjJle86ut8PF8=;
	h=To:Subject:From:Date:From;
	b=Ogq4h0SnZLwd4vIcSehTEwmR8vFf5bygxIsSi4SJaP258g8hOzvkZUisQezZJwzBD
	 Ma1PUaPxEMwjvekj7ef9B3rhAg/3d5PHE/8Zf4/5b0h77DLy4ARlbAObi79igZ6DIU
	 iWROZ6kuWaWcPICzJsmBEIlcPOXD5J+B+gblYbXGC1MMN6kRRwc+Kg66LNWmXGyaFU
	 O4e7Q308dYjGdmiekbSjIQMECB43Hnt1STLiRq6AgdCDcGQPvZ56H+nvnl/wTlseP7
	 cdUjoxhdrl9tzbj7Jpb3fN0e6SUqaOZd3nV6cul85vyhEIuubslz4ZyZihTmeR0lIU
	 EirsxPKF9Dx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEA6C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367319363.2329.9443080197512525080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f6469091832718ee2b962fa945589237ad886d5adb36028b251f8a96ab0411
Date: Thu, 03 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743673193
