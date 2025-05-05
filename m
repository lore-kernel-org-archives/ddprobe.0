Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE529186C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746489595; cv=none; b=gSZ2RjovjlowK0OboFMmo4+S9/eQdcj+i6GX95arPYdRf2cGn8R2u6ByTTlS1JrPg9yvj2fb0/1+iRdD9izcea1ZhZFO0PPvubCn+kzrOAWAVl0MCkwPjZdSgntJ/RtBmS1p59jhaKNlcV671R1qHeovvjrfgix3HfCCz7hQ1E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746489595; c=relaxed/simple;
	bh=I76H6jOqdkrd5QIpVJHpPMRCP05Au+l3NCPoStZNuhM=;
	h=To:Subject:From:Message-Id:Date; b=LsGE+IPIqCuVCp6/rmN8kxXNC/7clxAnV8LuTccVSBAyISPvFPtVzxqpuOtGT91C/VjX4fqhrBzcdRRfAfb3wfZ0F5Wa2uUghA0Qe0YIO3M/bWz6QmWBgzOcceZ15YSFOGafawh4ur9P1l9qEVAHO22/NS1zXsVGw3iou6Cvad0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwFc2PXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwFc2PXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9978C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746489593;
	bh=I76H6jOqdkrd5QIpVJHpPMRCP05Au+l3NCPoStZNuhM=;
	h=To:Subject:From:Date:From;
	b=NwFc2PXYmU3le5qnLlALqolOkeSlUXcxkImnAGtLL15kumGdik/A7+7z3/wcCCBH2
	 2/Zr7USx1cRszBQMOnRuBVXbi4DgRvIUkY1A0JVbeW41Q3n0SbecPN16VWyMIKrYps
	 FV4XWKtyNt17L2q4gpaUdqOVbeEUB5LdGBiiQHTVspn08BWtWieS8FGJYTIfhQ3T39
	 TCnlmfnWo0xXIjWY1Lz6UAIb+CFYl8ZDF+5D1DApWJvp+CRfvgbyJfiBRHRxa67uAd
	 8660mhWh/KBCWZo2DR3j7npNeQ/l5+Tjub1SvEYLNJAnlkwct/17pIM0XSP81fItn5
	 Qq5pAQRp9DOkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E842C3ABBF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648959357.21610.18257938792737780439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a651e311fb853f307b4d80c03cf6c51bebf1a1155a921f9e904aa9e8d0da0cfa
Date: Mon, 05 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746489593
