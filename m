Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47122156E4
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718045903; cv=none; b=pX8mTQ6GvZ2HojBYuSTbk73weCDlGGxjRsV2L9qzVHiXLn6pOXLVtgJw96HyUUmHAHtDhljXNqlpVV1qpWd4kQ8PxuKbcvdAg+X9YC7OjoMEaIjgaxVQPsLy8BpPE9VddL5yjhwYyFyJoGBAMAmRdKPDGd2BEfwg3tMuY4kyUpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718045903; c=relaxed/simple;
	bh=rhpkErsEpNslgUpIsU4iHxpSdU3UMbHDacuRYAY9c4o=;
	h=To:Subject:From:Message-Id:Date; b=kjyjKRn2tQwo3NvcEdkMDJpC9B6Hh/NhIz2lU64bD7m+Nbl7i9GN2D8e137En2OBVUltvJ59P8qZs0BWxcrurno5Lbvu9IkMQ+yK9d3+hx2Z+ge34Tt5m8da3DtXJK0WlyZitQqaJ7guEzxVcU2tTB3QsaumTwPGpdIiTqCEuM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkI2sO5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkI2sO5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EB5C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718045902;
	bh=rhpkErsEpNslgUpIsU4iHxpSdU3UMbHDacuRYAY9c4o=;
	h=To:Subject:From:Date:From;
	b=AkI2sO5gsJEDTwOhuFBK6Ck0G8owXFxneRcLjvN2L++G2AL7CUy12fTyalg3y2wUU
	 bksSM9H+ACfX3OyWi5RCny9vdfgHE/4tyfzLk12QnClwQiP61Jtz4XbIV+nHV7PoH3
	 9ICEgBZNI8gpAQrTamhA+Zdguer+wmwQYHxyXY743n2OU75zY7nN9N1y0cUAEr7/3P
	 /77ecRevqNfWXcEyaGWgRvc/WRHbvamltwupFcPmPCSwLK1N2JEuAFcg8K5u7yDMzN
	 LXgI9dSOrpbOryA0nz9QY2eU81/90TlXIVw2UoiTwM35W/kvwP0GixPHkSzknglJXk
	 JPUUb36JnV3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A1CC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804590279.28579.15036260729668166601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d81203e85fd700af68f991cc9c60a6d7eec4d62c8cac9a2dc157ecf60b8cd6a
Date: Mon, 10 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718045902
