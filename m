Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335CF15A874
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720523783; cv=none; b=YYc48tAoazcAWIlXlfhuCBdC4Icoihm1ZEO7fl4H1ZqUWwAuskAM8oT0XBr986kctzCvMRbRLIZmyhwF2L7QmmxhNCQDYfUZAo2uQt9SAQLbj+2RpY1ylFvhv/hyBdngOvtXKtfZrK4lEoeAUV36WzZD6tJLaBGeqbOe6jpOZGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720523783; c=relaxed/simple;
	bh=UvZPn8141p863/TLBIzOUaWcmbwQIY/3RGkSOH1qP+k=;
	h=To:Subject:From:Message-Id:Date; b=c9EFIWRKNEaKNJWYfel1vLCG+dmdcHL25GkcOmg14Lhjlabu5LqEQ0Kbfl0NTx9iYjSLgUBS3oi+8KdRiKyQACovHLoxPOlP3dRketASHKRwg2PSouTNpLT/lJESHlw9Vc9wo+XrtVGKsMLURGA1V18kF2Z9+Ys0GJvKzoXjitI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYoX+o2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYoX+o2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E381EC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720523782;
	bh=UvZPn8141p863/TLBIzOUaWcmbwQIY/3RGkSOH1qP+k=;
	h=To:Subject:From:Date:From;
	b=mYoX+o2WNmkRRRLuslCXH2l3a0Txt9BM/uIlNUlL25OB7R3cCSh5eM90NHT8AVYTV
	 xG8fugC4F0n6OOnybYjd32FxImt6L/MmoGcj/WIZIvJshDz/s8eZoJ2v7WMBAnW/A9
	 F73T1/bZqn37jq5SLB/qeqRPHux9qfyPmGArphg+ssNZqFWCtvZ1bpq4ZfRs76rDla
	 LxNPXoH1P3HXkPFj2P3D9NYjj1097AjjVEtlYFjIHzXnpY+mNmwqcWJSxTpkP+xZvs
	 lwloS94MDWWJiI/htkT0kqRXdouh+R3l8rnUc2xvWn0+XVHDRnvI86NUMABxmFXfhn
	 cVFJ/sOH232JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF990C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052378283.27155.12412398580967582061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742dc00c0b0a6c5ddfc3ae1230fc5247ae1ae9fc2bde26bc203059ff4b855b00
Date: Tue, 09 Jul 2024 11:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720523782
