Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B9D3DA7E0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774610094; cv=none; b=odiJj0qeGObdFPj3ZwVsUlyWfWXRCHD0pNmX1jXgG8gfyDj+z0bOzaYH6b0BxEgfKgONcUlDI/aQHZQD149tNHp7HKfhkwp2floKzeVzu79L8uD58RsQha65TiaL9KL3XIXTfB2bySoQ+F0DvdDByIV5rxKHZWgF4SFl11+qvqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774610094; c=relaxed/simple;
	bh=8CxoEdvksqlV0PHfX9zjDf6ff/0ZvpVT3+Po1MrY1VQ=;
	h=To:Subject:From:Message-Id:Date; b=rFlx8KgYm1hI6Qo13LmiCExPk6CVpl2UWFfrJ0Vdx5V3cuRKxy7o9e6nIDG1auAVFFPeJ45CIqOrXO2eI6HXmlRLudm0OEGgqtrzFbLYWr908tU3VJ3/Ol3boT4q0CZKs/A6vEdWkn+gbF97gNFI1ldDU59nGYFGFtJ1F4m3CnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ8t4/lR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ8t4/lR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774610093;
	bh=8CxoEdvksqlV0PHfX9zjDf6ff/0ZvpVT3+Po1MrY1VQ=;
	h=To:Subject:From:Date:From;
	b=DZ8t4/lRLd57PSekv714k9UYQj6v86dfwEUbWWx9JgOH3pVgaGF9kdss1i1N/D4aa
	 H/ZcDwt7NLVSr5RZ3i476B/22s3ouF0azsDhj+f0OGAKeeL+a0LKLtEdCJoUT+LGMZ
	 RTZdGhVtErxW300vme4fYTfGhK9cS9iV08MNDO0RetJz64kfFLK71LAAv6sEmGPSxo
	 Rk0ReDuPsaJmIjFa7Fvs5hU6nmPRi8sJYKmgfs/Gh5axUkvqQsQV+q/WegRhOAtFnK
	 neGKeRHMG8BqI5ozj3i58LKzua+aYgxldgVSrNesAyLjlDpPxtniXy5kAwaamiTu2/
	 FpMB7qMLd/3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0110ED64A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461009358.19993.15700852276935267957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc9657daf3add44a47d2964a49b23d57dbc4280c136107c39fba312d22f861d
Date: Fri, 27 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774610093
