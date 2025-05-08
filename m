Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3590622AE65
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746717594; cv=none; b=p/aE9z2lyoMHh+nm3gDlih4YAstAb2wQlpjYBTIgYr5yDdpgzChd13R/domH4o9H4icelfamCt2uigz3VASayQwzjwPSb6ZdugVvq+hnEncaCeuVB5tzPdxnrPycIYh9HogmSEbRQcV3g9tS93F1+uD3i0G5RzuhhiSuFjV1ugQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746717594; c=relaxed/simple;
	bh=GOcf9DsMkn7ErL7hwpIYhquZmTv1dHqBJx7uLtC0kLM=;
	h=To:Subject:From:Message-Id:Date; b=S/2cR/yVL/COuXHUc0TRV8oNU5qJtN5CuMrk4ZNls394RmiUMEFI8F0WPmJ+hv9tyR9AS66ziZRY8UFq41Rx7+mG5ZsvCarW9nduWwgaiz6QG49/UYaDBy+9zAqCHSa4LX0qjPBNI7Ry/LGAw6ykKBLzWlIZu7KLOzbC8J61jO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0a52whm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0a52whm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC02C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746717593;
	bh=GOcf9DsMkn7ErL7hwpIYhquZmTv1dHqBJx7uLtC0kLM=;
	h=To:Subject:From:Date:From;
	b=G0a52whmcbPlST9+f9cnmcnK+aKfSf5OyN2J9iV8vSR3/FdWfIKry7/lyZh4Oiirr
	 7F2yZZH7iFM9Rf6jrD3IgWC0uwTIwvR3UPvAmuVrQREa5rcq4pBdv/B5Roj2q8hMsH
	 UwkZcw1MoytwMQJKmGqF0GtA2jHX53r8Ab4I08NuvHftd3BXGe9nA4QCnqVXyIxuW1
	 JwPspFSSQ9XYFIRrYMQOPHrVExhQPYkD2nMQ4Zdm6GZ2ZfIz9jVQXmofQjQ6rMegO8
	 9Qt6PJs5aZeAU+PvTHnaXG34hFARQHB7bPwO6wUsd/D6ECRdJQ0thGMW3LCSE2Cb5/
	 AZvr2z/Kq+zyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F774C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671759357.5251.1722347996508239675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7dc92456f54e82a35fe28436f54da6ef2a099e84d20a4674ffdf7186dc0508
Date: Thu, 08 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746717593
