Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303201B947
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725848154; cv=none; b=WqjVpFqGu1beenYD1WDcvecuXhCALVWmg23XVvYAxUeka/s8UT+CePblcPThxL98g68usi0rYZwACphtfjCcJjsjnidJvUSMZNlDuWYTKWs37zF2ym8oNm1pU+qp3N93LBOIINwhpjcZqtiOdu3m+91u01Ur9fCRHR5C59/R6b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725848154; c=relaxed/simple;
	bh=ekfS3zyAOhRBciRWW5L+uLiZb/AOSgEWn6HcAk6ppl0=;
	h=To:Subject:From:Message-Id:Date; b=OdP3oCV0A3iw2C8UtbOhrI09tY1Gu0BKO5K/p8n5kLJVGFsJ3ZB5hM4JWUUMGQnaUIg6l4mGxie0xlxxdTuNR3l4Se8y/dJFbG+lnVA8NCj9NaWqtYj6dAB8VZDuXWkR4tQ61x+JE1BlKmgdObPP1c8L3Tc1P31FF3jmkA5bxHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9iKBw5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9iKBw5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5772C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725848153;
	bh=ekfS3zyAOhRBciRWW5L+uLiZb/AOSgEWn6HcAk6ppl0=;
	h=To:Subject:From:Date:From;
	b=l9iKBw5GsWJJ0PpCSKyB2g9NpCeDrLrWXXAK1+qVEGFZjJyIb+XzT2tAToiDqaJ7+
	 uuezMFq+vkQqdYg68XTg2qB0/7IMw1nisGKtvrBz6RtpXkV51v/nTKMIfJmYmkeueL
	 j1U90K/bw6zgMwJXwhD8SbpsBgFAUBxuwpKShpCBn6m8fbReZKgyXkQXWI3vIEZS4L
	 aVcRXEn4QGGFxReDJlwo5khuREqEqk7NW5NlLZo6WMpdYoQa97VkqN+2orLqRUmBgo
	 zQkRXv//gKpJKbVx2FMbEgiJCfNIktSyVQtr7u1u/mNV3J7h1GXeMeblNiWwYDeVkh
	 aGl1fIbbcLQfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DAFEB64DE
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584815359.18653.9617759179799958737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94265df65e5d3c31a1e092552b688c10386c7f7bbe3ab11e9c27cb62226a209f
Date: Mon, 09 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725848153
