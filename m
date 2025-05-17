Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6410E9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747486194; cv=none; b=f/mip5H0OP1lfp3I54Gm6mFBIivsfL9+z/N8D7epv1BnRVKbHCo8Hp4DYpqqx6DIjFS+W4hyZF3q5Mc6zpvkITQ6xB4G1LQ1x32J3GNn0WnJ6eEO2BRorwCylvjNYfRGF3WgdPVPS5yQ8lG4+ndF/6nOMv8NWhq9E0G0XO95pck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747486194; c=relaxed/simple;
	bh=oqeX/RxbrdFFrImXS5KAgPj+YoPylJq3iB/41M/Th5s=;
	h=To:Subject:From:Message-Id:Date; b=gTpUptJrtvpyVxt6vYjM5nXD/019L0wuB14TUnV38TI+nsr53EFcvJTy+YwqsVaHUIi2GctyK7zx2d4QWAUVmxfrMxR7ZwQ9ioB8bWC208HAUEPu7gE3l6RpHrkCeHlnq70GZe2Up+vTXTHV5ZGtyBoiA7Uc8wiFMt3joPM0s20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANJEjomy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANJEjomy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747486193;
	bh=oqeX/RxbrdFFrImXS5KAgPj+YoPylJq3iB/41M/Th5s=;
	h=To:Subject:From:Date:From;
	b=ANJEjomypBigM0JxqB78S2Ceh9zgEnmFBIPbTC+16YPpJh6FtYP+HdV60EB41pCst
	 G6CjS+WciLmoQO0cg95LAwpzRWt/AHhZ7M/1SeZ3Tgo3AeaX2Av6uNFxoynteXJSHv
	 Pb3ukPN2KQ5T12DNkl1DG6mFvlL7Obq+LItyumdN8e1xjyE0usYqC11vDBClM3dtEx
	 qw9gfce7n+KlOdq4WPrCWAQta0JCALGbrBE16i/BFDuJaRIm9aMgyo7ne3rsOgfnhi
	 JpbiSN3N6xYWHabwuTqUlI8/Ob0uErcoDF3x4bZM1qvYtFaNlgaLuoEo6wnj1wPfbt
	 hBsoq0kAMR5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A26C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748619357.14795.2431231287612385429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188d61481e61c0c05a09228ab6565f0ba9bc5690368849ebe86d69e2b1d75356
Date: Sat, 17 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747486193
