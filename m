Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502EB22257C
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744050594; cv=none; b=M8V1I+8KFTyhOU614OFap/VHTafAG1rf+AhHMcg0o/KCNfNR50nBAg0ffDiMd2v/9X6PFWfDvSjFt+Q/2wqNAmTk4EsFeeHY7SuoGKmx/J8QP00o4RZWmn1UzU9uScwqWIMsY54MPhWitqpSzh4YomEbSb36UJEXHTzu+ncZPLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744050594; c=relaxed/simple;
	bh=mKpkJCQmXDCNwvCBZ9LsRBrXVRkimEqdOBtcgwZ0wvE=;
	h=To:Subject:From:Message-Id:Date; b=SQi26UTyuNblpZdQ/VOsDSPpgL/KIY20tWx6fphSRpBvy/0yksMqgaQ27IvNR1+rfyQRmF6LaAy3MxM8DPloYaH5U6Zgsa6UgJN1VnxBm4ex82oeQvuMe0K4a8LTCSeCwl1b00H1ss8fZkyFbBhBbrQNxsua2zvajIlcRcYrFuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqHsjQYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqHsjQYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1814C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744050593;
	bh=mKpkJCQmXDCNwvCBZ9LsRBrXVRkimEqdOBtcgwZ0wvE=;
	h=To:Subject:From:Date:From;
	b=JqHsjQYicHpDRxFq4xp7Xvic2czgr+0O7VfzjwsjvFQbWapqvueyYZvYirGqvk67U
	 ttDh7mGI/7M0WyuvDZ7gJKUxXS+TcinR146VHE7imolawe9dFd9+O1Of+oQrSQLH0N
	 riAvt+vO7cpd4wPgKF3l4rMi8I2p7+uODVRRNYl1BbRlk2epsTWiDOIdMHvp1kvtLi
	 kOn+sd3F/V95094FqvpWUNuMD3lyP0KkCDZVmhOQeD7t1P9wfjB71TrjZ+hjXKpHAN
	 78mM+0p68osDq4bsx7CZx2/3fvcqB9GqyL+BOiHzrcC94dhzrI+W2F+Ulp/k2GIRe0
	 2sifmRTB5EIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A4C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405059366.30969.15683326226425877087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c306d48b552ed4dcab670b9ec384f5e0a807b0785ffc5c209011860e75298840
Date: Mon, 07 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744050593
