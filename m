Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A24D29B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713685823; cv=none; b=MhynYxpB9PUULvnaL8qiitOWMyqu+WDRgGhTrvaoWQmUaYNUwJxrVl/t8BT2Xw70pZFyLTiiT45gW7dYD8TL3SPZH1YDe9sF+4LFeC7HuZZKAFcrwKTzeaAaXypSSwl+3pd+lRTEolrGWeNXA/ANa6zhJqQl8sEzHUBUKfot8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713685823; c=relaxed/simple;
	bh=KBdmI8Iu9vJp1i2sZO604CYkYpjTXVRurCKPQ6fmUMU=;
	h=To:Subject:From:Message-Id:Date; b=Rsht1gTa4WczssK/dYAy+wF5GXAIesh9Kx3Ro7D2Qu7OCbEHgXQPBxXQjLuJxP2TVGedH0Cn8fw3W9yKzwffHYol3PdsUIRC5E9w24hoZSVsQJjoj8fkDJKsndnd2t0pe8sTN9rYOm3T+5KDZPwqcLqno/E5tFIeSoXOHuKbB84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYcGvePK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYcGvePK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2435C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713685822;
	bh=KBdmI8Iu9vJp1i2sZO604CYkYpjTXVRurCKPQ6fmUMU=;
	h=To:Subject:From:Date:From;
	b=EYcGvePKMtglvF5J46gaIjQ7DoQZHNMyPOhrCz2pJ5NHwR1/d410KcKp6fpY8YGXA
	 HVPAC2F07d320cLTYhaDOSMzt6DVg+NSMv5Iwdq7M09G6Qo0ShN/6rsAolUxtXYKno
	 uqL7mKB1fr4htD8gksZNb3+V1gUJ2y3vNYuHgBiGKYHb2cHjiT3hMBgk8MfsXMtfR/
	 L/0wOktV6ePr1mkLDa1+kttjB/Ov6ehKIOK6qpX5vNylMelW6YZHbATXWcdkUUnHkh
	 qgwFRd5/Bg+5RzdzfQvR0HqCnibYMj5DHaNWMac17V6vvEeaQjqfe3+jRYYPN5XCMA
	 swoscmbJCRv6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA336C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368582279.21189.12688584556685194782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05243cf492c35416c9d92084af20f75b4e0e84d389598603c334c7a355655cb7
Date: Sun, 21 Apr 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713685822
