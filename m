Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BF1347DD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754212194; cv=none; b=ZeDi97qgvZvZaQSrH6V1YEJiXGfGs0naHwbys8LD42EPAldx24o/prHPe01dHYuSnUZUjyVyVtPGZb8jmi2NAz3ZPPveJ+sfzohPXdIwYzqudKYR3b8xnj6Qt9WxLpyvu+u75Sl5IysiiH3+2Xyt1p38f60TPI7Xg5/dC2wvin4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754212194; c=relaxed/simple;
	bh=Vj+MrPkEULnXvRXGGm3yzfU7lbTFtoBDF1TpXiMD818=;
	h=To:Subject:From:Message-Id:Date; b=lLM9/u1pRfS5/EQXrJl2YGt2ggurkl/7Z3hdOznU7jWRNs1VttML+EOhzqIv90u1l1EZKS55mYl0SVVtNx4/WYCXWmzH+FToTsIuYCvdWM6jgKfVO4JakuA4NNhwlojgCPFBmqmnJsJ0HCw9KM+aYZAH0UxGarZUr8cfaZKlR9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiZ/iOOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiZ/iOOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3827C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754212193;
	bh=Vj+MrPkEULnXvRXGGm3yzfU7lbTFtoBDF1TpXiMD818=;
	h=To:Subject:From:Date:From;
	b=hiZ/iOOUuCrxZpU5iaogYI4Fw0j5pIaQ0kuQ0dgseWsQ19/SyYOzBuulodpEv+NAN
	 LMh1BkSwV3UH181na5zIhaNNEDqTU16rUWHpIDBZ9K56S38VaZdlnQjWAKBgD0wHbf
	 HwSSBNBSoVZCs9GjndKnlK+Y/c4TlTzpOww+1vrFhkEA0H5JqqZOHFInUS9ft4fKOJ
	 MkiaECbqudW1P1cMn5bjWtDJbSA5VhsAE6JR8neD6d7dyksoEIdYS8/u+0IVoeMKje
	 v0IGA3WL8rx23yHLACOTclqCNy4PBLT/CLmRs7JTwnn8BGVRmDlBStxumHxuSfsYTF
	 ATRHS4wCoyX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD5C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421219357.21077.114933228582012391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8a14ec04da3a57c3490f83e95f7c0b537f74f1160eef24f620c6c6595fedd6
Date: Sun, 03 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754212193
