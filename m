Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B56A1CC880
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732757754; cv=none; b=TBvy2/7FUUIgiDGOddmYynLj3S6buB22ci8Hvl6zQu3dff1gbXcXYgtDvBvshSwekgF2lJF/5Q9VdxFTokj+G/+9p2lYEIkvfteSmHFOJHRAG8iFuOyj3zR5fV2rdgIFmytqFONp66QWw8g5iboQ8vRaFhZsIqpUGtGGTjYmGSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732757754; c=relaxed/simple;
	bh=DquqCfaXpwDI+fKgcMIVdcbeUhHDyxkKv7DcUJdj0mM=;
	h=To:Subject:From:Message-Id:Date; b=dMKoRLDMRnMMtfOqYv3/RSDnPLWXrEjEcJzlFDag0FT/AyhIivKAwxRmawJDd+WLRtKbLUnPeM6qpwDvPEK/+qmw6C8RCCJ1YThOqifq0lwxqHa5sXgHz5636G0zPR7EmgT2D0Fe8LfNa9ZvV2t//MbJWHN9q8LQfsG8SQ2fVjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmGY29QD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmGY29QD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72EEC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732757753;
	bh=DquqCfaXpwDI+fKgcMIVdcbeUhHDyxkKv7DcUJdj0mM=;
	h=To:Subject:From:Date:From;
	b=SmGY29QDUxHdUHtC6CJwDsSCMehUckwlEQhEb7GBFO00RzV92vfu/7tJ/IIMhIcZV
	 qGs/Fj8Oj6cZgPTA4Gg+4bpXncmS0pBMWDAzukazcgY3ZGSmaI/ovoLkgb1ESA3ycx
	 jqgoAAnzhS0xx55TVq6ywFUaI3a/ek5Nu/AfjwXTKpkJ7LSjasm3Ic4STrcf4wyNoW
	 2Gz1UFmRm6hWdNeKy3q0/CmO6+oRysFL/8jEEsPext4KvxNnj6jECjReJ3/c0795rc
	 ShfaaETS5UGsBij2fiwx+LxMAy//ellLQ/BuGedTG+S7lJo+DrQ/Rdd1ft4X57gW0N
	 QRehigwTbhtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972D7D6D253
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275775360.12468.10973810646748703634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f4d9626e5fff2f3fbaf3f2caef8a16322f6199e9401256fe58fda823330121
Date: Thu, 28 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732757753
