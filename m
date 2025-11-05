Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A86D34D3B9
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327194; cv=none; b=Wj+LcWcNSqiM7/XPPNqV9yYGxbJr4fNES7ejJeisYaNJG/lKctJ+7D38Tj1I+2T6lSxIPtFln1hUsxwlQ1TbQxTo/l6MT1NMcKRaLqEeSrsomzD73Yq6sDPDRyKCRpRpIOv2+WMEZTGp/Gk4bc7wf6ese5wrRuifkcEFIkqpPIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327194; c=relaxed/simple;
	bh=1sx682rBVPmutvWHdMLNyOAPWYIOfIi2qgG0i3iUDh0=;
	h=To:Subject:From:Message-Id:Date; b=YfACdcVgygvexZLxFG/DF1eiA3rcm8OeJx5b2lmx7TRtb0i4yay5pcOHcCmcu0ujVaot/56pkllg33BrPr8fZ9CQiEE5PykxHzds62DCXwQ1bdbtVKtOL6bb/BoRjxffJ4WB5NJ+J/Ett15dEWHYU/O3ZGy8RPK9C5R2ZeTr2mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/rzYeUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/rzYeUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46ABC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762327193;
	bh=1sx682rBVPmutvWHdMLNyOAPWYIOfIi2qgG0i3iUDh0=;
	h=To:Subject:From:Date:From;
	b=q/rzYeUl6B6N1IGFosvzRtM7yqElrNgOVHaSjvvdPJI5QKdD/IwNd6uF80sluZcx4
	 6t9BMYgSDbKR0JJRpb1sHn7I3D4dDXEQWyPcQnk3zzNrfhUig7EoMy9IQEApkDpwq2
	 Z2eG4zAvbrG5Nm03RBKaTihJfS0g8pYvVaMnuGXYV/TyQiLYC2pETUDXy8gwXpbVb8
	 CuJxzKfVxKp8c5A3YkP0V7sBi7JiIpKb4QbzWfJ+rSnQXFnmfw3xhstSzlz207phDs
	 iOK4ysPz1YRXfxyuxSx/y9VMQPHeHWrLIGzYTRL0CXwGekjwYMV4yLrdSPs8yM49P9
	 5g2Lble9H32sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99555CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232719358.9333.2730584459342267832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e2c95233b9e272c6d07a6d7b9ce65c4fd924402fae2b3f25123a9feb4f1ae7
Date: Wed, 05 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762327193
