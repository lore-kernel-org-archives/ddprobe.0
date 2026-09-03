Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF9548CFC
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788396034; cv=none; b=gbUUUPgEseXAAyeXdmvikUVoKxwCiGRL8B2Sqo+M8AP1CmWXAVWR98ICxXN7XVAme6jol1zrby5498w4jNaRNJ5ojJsqYznBptR6uY0y+nS0pma0dPri5IVbPoBOVLeBREl81uBlv6bOeilTRHEIJ/HxXuYysGv9bt5AoMdO0OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788396034; c=relaxed/simple;
	bh=TUDRXNlgdEFS6qsO75wtPQs+3a2OEwN1pEXjm+VlHIU=;
	h=To:Subject:From:Message-Id:Date; b=oqN8B3hkAoI8qvntGAdyn/zwiZbP/JofoHvqGa5MavyeoHuHKyDhuj9PNFz0dxR9ju/zSUwxjWK026DS2+ixVtprfleh4xtQErG2MamfnWooSnd+91DzRknwjq60fIEWayeEok0FW48htzP4/xg6NXZYaVAPOEOT+aLuOZA3EuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIFuqaiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIFuqaiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC694C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788396033;
	bh=TUDRXNlgdEFS6qsO75wtPQs+3a2OEwN1pEXjm+VlHIU=;
	h=To:Subject:From:Date:From;
	b=MIFuqaiwc1tRNew4Bi5e+IjS/rr2KqFXfAmfTFJ3bRhTt6RsY9CTD8e3DpHRKN/xl
	 jUNfatMmSYqwyrcvXaZLtwmeLiYRjGUMdhWpoJ8Mt81vI9EEVvPUoTsXGPtFegcOwu
	 R/R+hYJ6sIFa3vZJszYvxf3pA/DJums0iltZ8MLueLbKsjlLFvPPiyX2TPwK9dOMqj
	 MJWtE4kwa4v5H+ZTO1f3HBlzxu1qDsYNfqtRR0tHNM2//EjTFfeyQa4Eyj9f2d3SzR
	 Lc+LywqwrlKU0n1/j+kVWa/iW/p0GBp2Sqv1lQQLH1cTG+0q1V8fr+B9q1akGXUiKT
	 E9UWuP1FEkk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF9C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839603368.8344.5144586035271752537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e3114a214b7b470d580cc98f3ca6c1bee933b87c8f9f8f3464aeaa25b1c0a5
Date: Thu, 03 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788396033
