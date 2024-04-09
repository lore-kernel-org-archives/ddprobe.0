Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69DF53AC
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712702297; cv=none; b=XuJJCiTaZapLdmfepSX6reUxol+5j5kwdxYrQ2cjyNwiXHFFMOKfPGzQwJOKUYBLHfA9Q5QSWLVWMdkyihcuyLo8ccKGR9J/Hb1ScLP7MTVHcPWjADjh7uT4Gh0OMvaRCA73zrJSnE0lAcYalcJhKIXjyFPvaPttWEBz5opjAdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712702297; c=relaxed/simple;
	bh=yD33MDSZlK3LMWrpUIRKadDGYeOBzxsGXtkyJgx38bg=;
	h=To:Subject:From:Message-Id:Date; b=mbpZp9nvnS3jJXKVdLZE/W93D3Ej+ORSQb9udustyoSgI9AFGLMA4j2cP4vCXqVmDrjZXnuGtHm20j1vFnJPrlNVdaHzHg9aVKWK7yGGjnO6x/nik75qkJGfUOypluWOl7TXP5CF06n6WcC044B7ujoXqzo+uUoxrfFNUu/vr9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u36zAcFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u36zAcFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F809C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712702296;
	bh=yD33MDSZlK3LMWrpUIRKadDGYeOBzxsGXtkyJgx38bg=;
	h=To:Subject:From:Date:From;
	b=u36zAcFfiVZ7BWLkzxL5OscFoBe1FQHPGidGXrvhlDPBLpJkv9HY9f236mr8M/QWI
	 YiJCG0gBTJ4KLMqmeD/AYrVqgt5rovRQdff66a1X4U2V+SGRDKLgtpBJkYhDmap2uE
	 uCr1bzsWt03Gxd5acfwKElmypr+NTxzBDSpHPts4rn1v50ojwa/z41m4/3kSjyO9bf
	 7gaTyjrAuymWrK9+PJ0Cr12HhAcTaSeNiw0aQyP3obxNz7n+Rzbj94gScMP5pnrIQL
	 6CDP0uT6xpF+26IlmTPOizrqlvGaPky7MT4WxFcWo0ane3t87zY/9Ij8jlNc7+pSE6
	 W0KLBAH8NDZ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6575CC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270229640.32414.10744029167762981720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a0d901f9dadae59297f1cab46b273ba5915ef4577260c7c7dd47cc638d2ea0
Date: Tue, 09 Apr 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712702296
