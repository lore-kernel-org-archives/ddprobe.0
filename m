Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C11E573B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744253394; cv=none; b=U+nXnWBKbbAiS20fMCysGJObmJ3oXnmIABJZTVldDP4TKiA+WmFNrjdsqitajBhhxwpxMK5qfWfVq7CCfTPYrptKx28UtIo5Qd6O8maeqEMWnccTtDsmXysVnJcfN5mI08qsZrN+P8vRHhdRnutGXpoJnxsiKz6BEGes2rpS358=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744253394; c=relaxed/simple;
	bh=B5hXfKLlOO4qod5KmhQI3PmAcIOfyyPUSYo+EHl1nWg=;
	h=To:Subject:From:Message-Id:Date; b=rvYDpAABu6m++32PCVz4+5i8lbbK7EryVd9CSO+5Jl57Ff5IkhfytE4/xdt2KL+KO78kPreeNPPQk9AEskXIaR08VQV9un7+N8iq6tAuGbPWew/p7FXhmJh7V16v0f8E0yNYOUn13Ocn2MoZRFjy4UFQx9rgq7X6BK1y64LgkwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWPOCSPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWPOCSPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC57C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744253393;
	bh=B5hXfKLlOO4qod5KmhQI3PmAcIOfyyPUSYo+EHl1nWg=;
	h=To:Subject:From:Date:From;
	b=NWPOCSPtTd3gCZADf1eyxLHfWumGnW5XsB2d9/V/+MUVYQrlYdRYipFuql7SvpgBL
	 60p4fv1a0aOxnaysx/r4bvzITW16HXPZdB6h6LQEeDydAcfdSMBbBEEcsRL/PAPlCz
	 28CuTb03wea/vK2isbhEqQfnEwUJS9DSfFkEbO1ft49f3/mFXlkl3uMaW31Q6BHz44
	 3HU9zZ9ODUN+N+oHa31DufLB/YKxnvEmh4bjz0vDcUBeIWuuzDI9zJM6EzpqLSHFFa
	 sxdnySV004wPrYoNjnWLT70gVJtqN8MRU3ACLva1EVNOnksmUl6OsObNvLT+gs684O
	 cx3yLzw6L+Iyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F380C369A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425339362.15073.12085143341258288446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aecdaa0855e6b967a3a71d846c62e4ebaf1fedc7ebe7ec3013bbeb821c64e3
Date: Thu, 10 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744253393
