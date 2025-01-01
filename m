Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C56014F9C4
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735757754; cv=none; b=SAmDxrIzPPj1miBHRWVww36Ib49FFrTDGQKJY495h/N9g68NjdgSVTST4l0hc5TGzMivuyNquiohPQZbF9orLtncD3WY11iD5+ZKKC25cOHvK4FEWCDjHqcZsd0Hp8sYMFE6YiF2K+EqTzXGuDaNkk0pTobxP3NAIW/faK89Css=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735757754; c=relaxed/simple;
	bh=jjO/PpEv+xS7r7X5FlINTraXmGsOvX0FyNs/1J1vCpo=;
	h=To:Subject:From:Message-Id:Date; b=kxU9hlhtICYU3fKQcuk4sqr0Fc/C6xT73TDcEysGWMzUl3iY0EFoyl4+orjXMC27FoGV427yxoPIWh0/tOBYzW3GWG6Vg3WRYRtC8laXoZGT2Y2on8luGOEf53KFltB+8zXLdQ/6eJtIMDVo2vdOBmT0kjUHUYtk23LFO4+/ybU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K96Ie8ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K96Ie8ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC16AC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735757753;
	bh=jjO/PpEv+xS7r7X5FlINTraXmGsOvX0FyNs/1J1vCpo=;
	h=To:Subject:From:Date:From;
	b=K96Ie8aeqttf3fHtktNj/fAwNlHYbP8v1oiBfhaYqer3ZSWLdY6LkH1uNUE3QjsjR
	 Jc4n341A7dFHzW/65o32YEbHFFvQWqBsC6p3U36qxHlxNQ1COYxzseW41frFJ4l1DA
	 awCn1n5IOZrDrTIogfhNxIbPEyeKyem1+dV88l2UFSAMvmqExkBpSgm1QNVPo6Xk7+
	 +uc0aB7N12nUA7sYJps/fl/Q7GpOfZLyvvoBQciC1+yBD3rKWSZBgHOkQ9onOh2Bgv
	 gJ1asZQccc4RHxh6TV6YnL924OOscvlqPOeuN7SrgGysb0GfDsqmWLDW7ZQBqatVtA
	 3mF3ccUk6v4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C3BE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575775366.31231.10007723396306964494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed6e0d9d46027e0a87985e921337213e9ccca2d1f7feda9ef522812cf9661f3
Date: Wed, 01 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735757753
