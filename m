Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E856438BF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774100094; cv=none; b=Zth2ABG8vtWGSkBb6DMENuKrxhDq2DvPCdMICFtITmitt4D8qtT3PWZ95U9Ge8vRxrScMyWj+pHsyQx8KkCOmnBdm16vJIBLucCZEgdW6LiiXX3ojtlUvlND1WZMuFZHWZNXZqft6VQHV67x60G3j0k9H0+91USEKJgzNpJzCYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774100094; c=relaxed/simple;
	bh=CosbbdCVRrV+ADugJVtaWYjO/Pl7/L116NliO4GRsQo=;
	h=To:Subject:From:Message-Id:Date; b=cn0mnfKPCWvOS92rapdozJNnZAYxkfJtdwPjJmdtvFWypfiwhXjs1oZPNlQ3jqno1lnBq87+neLBntxIW4Vom9EJe/lXyi2GUnyNXkTTh34zntQk/psWBcf8HEaa0mINBCZ0OCoO712KKeEcsG6Yu4EBJfWla0epOZlcoc4ZPpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bccR83CA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bccR83CA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0203C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774100093;
	bh=CosbbdCVRrV+ADugJVtaWYjO/Pl7/L116NliO4GRsQo=;
	h=To:Subject:From:Date:From;
	b=bccR83CAtt9fzsKnDRv1YVd92s4gghhqkWrEQD0ghir6g/+h2M9dAuSrZ2EzJCGTM
	 9h/xmmNcr1w/L/cDl0DS+UeeskpdhOzQvDrFaQlviORHIUO9M+hjWjw/g2efw/bNwk
	 OO/lek8Ps2Zww2bJEcbjq85PLFcFhDgHhqJt+MsvGCQe4IBcIIoYwK3HzPxZVe9+4L
	 i1AzalsYLLgWLp1ztARcCyTR3/S8Ac786xkYkd7L2ePAEqnBCaf2XJrcSFJ3PMmqHh
	 jeGkBq11ZAw7wohKx/8zyarugweZot7yoIr+DTE7zB/OhADBhPdBT4uEt9ViknIjgd
	 UAkw2hKwYn8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F51094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410009357.11145.13996691884663892095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8357610122979d09f76640bc05d5824d555ef7dcb3b29fd4433e978f4caf025
Date: Sat, 21 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774100093
