Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622151DFF0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718209703; cv=none; b=ZlOFYP91hFvjRGyIUlSQv3tKhDaSa9zNR9v4WYQ5pMffFoPU2CCOJz7IlV1f7ePNfkcxCjEZ6AQ9mm/FGa/revfbvm3U58AebxSu0C9GEZgmhD8K0v+GtZDuZLKMgAU4EdRM/ktxw/ETkShAi9lVdoppwcERTPJQFa8SXSyXW6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718209703; c=relaxed/simple;
	bh=kvZW2Ci6C+LBAoL+gEmG79UDm0E6uBc3UctL9TOm/jU=;
	h=To:Subject:From:Message-Id:Date; b=Kp6EPx+evm/b1BnsMczKyK3rMz4fwF8aZaAn2hAXkOA1TBMxWahizQ0D1toVWSLpV3hrU2baQkLXOVrHsHdOIHqaao5amQitoRu9N2pFz4JTfOinq/AxLI5MUdhoZ3QPWdezfiRkeLpXjM4hNXVAmUNpnDd6/a47gVCBer5rWi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUcMgLpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUcMgLpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE207C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718209702;
	bh=kvZW2Ci6C+LBAoL+gEmG79UDm0E6uBc3UctL9TOm/jU=;
	h=To:Subject:From:Date:From;
	b=DUcMgLplYeh1jivmkTurvHr4XjFqjA+eILbfvJNMAzmyaCYsytZyw+qox4g+vwRqm
	 LxjmA1kQpK1wqTLySdYLwx/RhxRmDc51JvOjlVwgNMUCKcQuxqckiTfrnp+ng+HIz/
	 PxMo/+HiDz+olr7O+/nttUNsQSjtdSUHBENWTf1FTqSpexnNmrn9Djr3BNfq7IZt64
	 E7D5z6yNWke1Jltgsjk8JUP3N0oy8FFLwqq5Hn/fmNHNX+Lp1AHIxpe75E8VcEFqgj
	 HzducSsJrTX3hH4E7saB7i0DqBJCb9cUX/p4j2AotUGmMf4ABxZC1I9te+q64lPA4a
	 99YKnT7h+tV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78ADC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820970280.7892.16182722490204745076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05aebf6b54a8b2f6632838286b36afa9d0491da169602fdc134b89d99b521033
Date: Wed, 12 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718209702
