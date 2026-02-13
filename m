Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E3C30C614
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771021494; cv=none; b=la8bw3FTHlnwXfZh+b26OpD/4h6UK/I60EWW810dWwtVgdd+VHOu/SwxKlICeDnplDNZpKiCN2oWjb8jouO2DedQNFmn/7VezMS7NQrdUe/BlNVp9KkX1u+u6OL8K82fJ2uNaOrBdiZfJ9s7lJlCX1U801+SfMvrsstvF7Wx6Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771021494; c=relaxed/simple;
	bh=hwNeJep+S+YA0Qnvn8FON1Lms1V5W27dfQuIu5yiK2o=;
	h=To:Subject:From:Message-Id:Date; b=kYZgh6+cUUheg5V1Wv+QEbXU50b9/iMFqbdL1620wiaxbgGG9EMwxjgnuAsjmW+LJZNFjSo5WbSqxwmrQaPbXaQRdm1QP4POr9lDk1hSYivHNMSv2H1gnx8EpSZlanNtE1uVL2S7EX/Zkk6TIqZudBFCnR22AWSZv1StzA+D4L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkpzw+ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkpzw+ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF76C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771021493;
	bh=hwNeJep+S+YA0Qnvn8FON1Lms1V5W27dfQuIu5yiK2o=;
	h=To:Subject:From:Date:From;
	b=gkpzw+axjeK1ENVHQjhnML7YoVqX4Q332Haq/18GcRA+70GbYn47GfJW5ZyYTryEp
	 qo019nNusOh5HO0c0rbAhtgPlBWO+rs/11xJ57fjGVIFynV2CKsn1SG73hKNM8SI6b
	 92OLwx0gidNZU0ez9NMSZSxaiQw/5sQR7+rP7ehEnQ11H0icqIFvSmu2LmOKgvyu8s
	 V4esTVtStlB5GLa2mqMoDEH9P9lfr38g06XjkEHGopvDzMhl5L7EKIUHcpc0BNhEJG
	 w2RIO7bckefJTrCts8dPLMYrdBBRxHGg2YKLppr9oOVR/x21TmNqp3zj3di2fkYF0y
	 EmKpfYMdzEbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF2EF99E0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102149360.29856.1753173162797772629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23181d3353ba89d25b55c502c0eb7e601680553a8058df96de59d9cfb9b20d7
Date: Fri, 13 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771021493
