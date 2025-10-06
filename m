Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C4C1B0437
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759767593; cv=none; b=FWeji+qH0bu+dp/FdfCUoahgze66Z1AwHU28H+9VAROTS0Tvqll6SQT8OxtM7XjX6DYNsKrf/yU3TOGIZpWQbWwCKakirvXuzFz5OmkqYPkk+PVnQpzMWMsSLR65z/kDNCo41oevDaLnm1S57XCUg+VMq5qBxQgiPtiiQ8ICVSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759767593; c=relaxed/simple;
	bh=5fJ8lam15wJRZEamiR3HQWBc5wtuxsXQJFeYw6V2a7Y=;
	h=To:Subject:From:Message-Id:Date; b=svQySN1M1pgBX7WRjJR0sf/lTlhFcBX+AQHQf9Ok5Ic2Ocl5D0cDsqX1HaDJOvVeOU7xwh8Vzh8zIeNoNu15F++0F6a+ADwItD+RAIXY43exbsQAwVIPvhjaB/HnxkFA8+8K7/fazc36RQIXgTBrbGXbcbAsEqanCJ0i4DQtRE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqsh59Vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqsh59Vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B67C4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759767593;
	bh=5fJ8lam15wJRZEamiR3HQWBc5wtuxsXQJFeYw6V2a7Y=;
	h=To:Subject:From:Date:From;
	b=Lqsh59VcciDJxZvYIFPA9/Q9N1DjBmciANATvnGtbhWqgODQ4iLSXiTIwS4oOWv0i
	 jPBNWLqCsNuVpI+Cd6fivuSJZfASxekR2n1NyesEhB0ckNmvla59u2YLGqL0COp/D8
	 Qe6L5amqbffaz8zwAn0GwPptytH7Xhpf6G5Rog5A20NjSjbh4Ayqc0qs/e+sCLv3xm
	 Ytcy+i6in+Rxvjk2F7dpSV/V5D9MHVdO45h3co1Kn5YZgErDX/X16TbaNHoX34VQnv
	 Rohofb0261mGsLsvx92Ouygizid+skYfloM9Jm62MNN2RS9ZDohwwg0lmd7JpYIlnA
	 nWt2KCfz+7SyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABCCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976759358.28231.4957980246967530987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96afddc55559b88ad9ad4fa7178f543bb51410e5b2aca5bccfd7c791e079e2ff
Date: Mon, 06 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759767593
