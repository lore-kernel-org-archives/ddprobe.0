Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E512CDAE
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750538395; cv=none; b=VuTTKaarVmrRWtPeDkP2fh7YI1OPVZw2ur4LRahOH/J6OGgSFfw+dN/XmVc+l1guI5GlrS768u8YU8Od09IHUSq/V6TvSESa3iczMv6o9Xjkysp7jBQ2AJKhqGyDdc3C2LJkeDKHvweWE+bMvCeaj2nyGJbqM5zmg8WvrX716RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750538395; c=relaxed/simple;
	bh=Syz4u1vP1tZCLSSrXUYWifbyacjXOVH0GXnm4NeBfXw=;
	h=To:Subject:From:Message-Id:Date; b=LFWQRfdY2dyZiI6iwfTyGpb/42efIU5dHkApGudf4VHGTou335cir8yZCmSd6xX15cu2liciSW/xJsRXUH1H2wGofuajh+PQ7NbSqLSC9qG2Z1xL5L9Kt5EgrztR200oF9NkSNURM8dmxv+sbUjDVtDekPEdfHq2Cy3rnffftZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXsC2SWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXsC2SWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A711DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750538394;
	bh=Syz4u1vP1tZCLSSrXUYWifbyacjXOVH0GXnm4NeBfXw=;
	h=To:Subject:From:Date:From;
	b=lXsC2SWh+J8dc3+e9ednANRsDovulQEjWXiRGBe03hFiP97Z4rPtTzZMSLz2Mps+7
	 j+l4ZUo9224XDQirDCje38PrWnIMVu2JtU3DmKQpR4qPIcQehBsiodpW7fT+iTnaz8
	 W5WX5VI6XiBheVP18hmnwZKfq5ax0JNJQWD+eKN8UAonxkW89VOylAsnUMneFbGY5v
	 Ue6oY9FrSkfGmK2CgcspB094uy60BtJNB5BpDlO2tt/RG1PcLB6QHzCDRf73vc5O9b
	 X4p0wMScSVOHkKgfjiLGAqhq0KSCfDYIPfWJa7NzrhhjbastlWkK2dBI95nkGxDtHj
	 mDvMzG/pizEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF2C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053839357.19542.17847264743381948182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81f61c4dd0c4c81dcb1be89fbd4900b044e8676115fc0e7d8dd3e7953c5b3c6
Date: Sat, 21 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750538393
