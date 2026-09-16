Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D844AF674
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789561234; cv=none; b=GncSWOuAUcVKSmG0CLyQFq6fVdUxE4fgaqOm9Hd3A3BO4HPI+aM8KqLoMZgEEeXpAqzAhmVkyab9BJ/h9RjHl5XZDV2sjQQbONAy7mb4yfPujQe4p2vMgT+t5vhqXCvX3BRE261wvjG1o0CuIAgCQ2IiPK8ptIvKk+rXYnUbD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789561234; c=relaxed/simple;
	bh=uSj8wkip+7SGFdgDHSrr1/DoKpbpWEifLyVprtkEcPQ=;
	h=To:Subject:From:Message-Id:Date; b=VHB4GRNIqqHii0cc82lRJOJROQaqyPtkacGoH+U5zQrjn+aBX9q9pKFzBRrXkqSFV/xbFXw9o5erE9nFGjktK70tLudlIPUC9W6lmRDcUaMTydfH73MzLaGCDzfaXLetb68cgYfMLEaO2hX4fey4FH3Tt23kVG9hZKwqo1o+2O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORIOglEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORIOglEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDE1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789561233;
	bh=uSj8wkip+7SGFdgDHSrr1/DoKpbpWEifLyVprtkEcPQ=;
	h=To:Subject:From:Date:From;
	b=ORIOglEbl7Iv5dLB2AvyzOAlLuZ+3vQCJ9gKy9++YOBfZNeClHqoFyLqBAUqeTBTm
	 bNZKZF/EuxvTJBmdeUR+YQPqTFeMmIGqQgDiE2I+WLrKFVTfIz8LpbOTajicimvj/V
	 e3gCIZzQDesPRX62qnJOBWjS3stUZWP3VI6BjbUFfrxOUV/uQXiNmC9clv0nQ8rlHg
	 KYM10J11S0IoFfVj+LUS3mQPCQpspBTeVfSA89NHr90Gh2lZT8wzT/r2Bs9ekCWEAM
	 sywd6uJNlyQbsICS5w8smkPaUIV7fRyoalfbMP48F8rTtvVbty8bJubDq9d7U+Wi/X
	 zeRN73/qK8b/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98EEC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956123374.9478.11494204459163676849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a003f5c039e46b03268075e0c1da4f85431a266ca15a6f353628295c525f99
Date: Wed, 16 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789561233
