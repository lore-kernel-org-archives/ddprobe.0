Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17597353A66
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788926434; cv=none; b=MnocDjgk5HBvaI+GgZHL3/KWBM9DGiT17yWacPGBq8p/N70ejdXpxDweip0r6BHzP3xT/GK1zchR27gAQpkxAWR9rJBs/93mr6Nbxd5RML6L2vzEv96SoxCRaFLRBVRKHzQ3SuaNgmxv7FQj+hSk9EsuuCO0jqrCHriynyKqDaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788926434; c=relaxed/simple;
	bh=C+NvJBtbSSO8mxTK352Om6rG3FCPGXM5Vkj6i+dekYE=;
	h=To:Subject:From:Message-Id:Date; b=s9PDxh1cwAA3o39Bv0LJWD01pJPTAj7R5wMeAoK1CnlqtuwgHdguUa+ePm//wDahsMf+WMd/vqeLDUMN5bw4UWdj+Ng7q6MA+4/So73WzMIcAc0JBlEbfzboxVSPZIh/RM2+opMSg4CnH9BF1AyRKSQJpY1qhuvXLYQQW8cVhmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbymgSzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbymgSzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DC8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788926433;
	bh=C+NvJBtbSSO8mxTK352Om6rG3FCPGXM5Vkj6i+dekYE=;
	h=To:Subject:From:Date:From;
	b=lbymgSzPQMOFct4qoTqkA/DodnVi7aDlAysXraCyU0W1KyuYSnvGSKyCEPB74rB4u
	 ze6OxSEdytC99LZ3wg06bVDORIYW/pOLBHt+Wlf88X1vzq5yi720a6Z6yV6MUKdYgi
	 1krEkJidJFndK560pM5hY4Ll/1mA3v3M+4udgznP2dqlgkbgpM4IOl62CA1Q2E6rBU
	 /sVQSutSrJKvE1oawN4n5GYDJGYPfyHAq373Uuii/yOnCBWTs304R8MYBvutA3Tc25
	 G9GsdVLbyH4KDPabogEkG6l5pt8HUE5Gpb6Qdi+uIICF7FFDejG8r+sxKbsHg1MANe
	 TAkUAsH6qDdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22FC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892643368.11460.15528604022758566978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d990a8732475375533356dc3757c7833c4336494eb31af0e5d9f7c3b186a1d68
Date: Wed, 09 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788926433
