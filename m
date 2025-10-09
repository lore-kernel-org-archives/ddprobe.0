Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8C62D0625
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760016593; cv=none; b=JWtJy0yUnJ4qcMQPOI77d6cCrB6ap6WdcEZMRh5DsEoLYRYkRi0zb4eCWv3h7yAb0pAI2DX+ovU68re+8Px3+vL3pujFwiGlTwVlGaP7jS9ZyzgmLbqtuNk8X6hj7JArqncOweczJtnSIk/d6edec9xw5oEZhU/nTXGgvSrqPdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760016593; c=relaxed/simple;
	bh=zLKjy30Q1geea0U8hZQQvmIm9zNVIKKSROq57/CrpgU=;
	h=To:Subject:From:Message-Id:Date; b=cdgD6IFJFu5yZFlk/WxWjeDFkDr42lCFpHROE3RyfErTNCvCAEn7AQ7xWckbbWgtHePgBHnbX8IwVqffUq3wNufa14JyH8SmHVSOMXWHFvdTcuRfJKKaGHHTYeoj2pOacOkWNWIenkr8aKGcN6DWcIRl5h6VJLyWaVULc10pEhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkeASJ+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkeASJ+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1692C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760016593;
	bh=zLKjy30Q1geea0U8hZQQvmIm9zNVIKKSROq57/CrpgU=;
	h=To:Subject:From:Date:From;
	b=HkeASJ+Ebs/P1QZv0iJ0MQdDYn9fIAFio2GiHyAsVeTkPPl+6cwj/KHq8I039TNCn
	 YDThWJMijp1Y98xVlb8U6Zzd0xBE1qFfB/GkiY8AdF1JAr0l3nydQk7OEZPUetR1lP
	 9TpVCK2ZT9vtns6/v2RynRLzvXDCPEw6k8IbLTbOcWREmcbiL/mQys1VUfEhO6orcR
	 H47YFjtkgPb3btTNDO9O1Bwk1df5tSHx0GXf5G2roBKtJruCG8NqZvk21o4WGgy5mW
	 J2Av6+y5T+kTgT3ziDg7I9oohHz3x1M+S6xt77VXGas3+7mavVBA3KpbWpvBWskUAY
	 S1wFYec49XHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4BCCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001659358.4914.3126905316240267860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c73157d217384e0a82fbbd973681438d01157ee4348484bd9872d477cf6a8f8
Date: Thu, 09 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760016593
