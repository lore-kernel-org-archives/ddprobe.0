Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C1E3D3B3
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763167193; cv=none; b=VM3WEeUW9pCJ8FfkYj+gts/NqL8f1w1gTdHZHK2mQlPLgoY8arKPj7l9OH4ACEZ+2bZUvUiwfWz/aP3qo6JP9E7iEfr77wkFgfzgGLjV/zX/aAvKIAqog1k2Gsfi170ceGmBlV7ayPGkCysUTqCp8NEknAn5zR971NBQRaD7NvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763167193; c=relaxed/simple;
	bh=AC6pGby3/vz5WpsTYGaegj7QTetONXf6Z3HHmpLvEq8=;
	h=To:Subject:From:Message-Id:Date; b=aiA16f6bn7FQzG6PuG9T8gwFcIOfmbP3YTsZ9U1f+vkMLHUTeIozqvofzqvtrRbhtwA2WGcVrY/TnjJnfS853n82/fmN67rhdPrIbajuRDnYxW9qlcgy64kgpz7JO4bYmt+YLTeFJi1Chm8ZKb+9u/RH59XQvAIa772ke6nP+lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M96c1Jrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M96c1Jrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F0BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763167193;
	bh=AC6pGby3/vz5WpsTYGaegj7QTetONXf6Z3HHmpLvEq8=;
	h=To:Subject:From:Date:From;
	b=M96c1JrmnXEC3BQAaZGuvtAmg/519/cTSsE4YuRmB3tIpRXo/GORDE/VvkoLm+cj4
	 f/Y60fiwAPRgVq4JCFrxeA/KBw9PpH7HEH8SDIn/72zUn6ohcSuWcjlmP+ZTJNxXNN
	 0vmftGVHS+EC8vJwWwJCzBcrwXQMr7w0xiN0wdnI7aJyuBDDqJ+OQzAp2/qYarrxQz
	 s2hTuSbGC68oBmWeId6bn4DLmDtLt5Kb+Il3DVvLm0Aw+0kd5jERNVMwLTXv3nnV6c
	 8Du3Rc2nm133xb/xSJh04Y349SVl51LaIqz6fj1ktrAtUofrHTyDskIJkVYebC8tzK
	 0K5MQ0kE04zNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C54CEACEF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316719361.24297.9650509965177939980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b474b6df2da326f7aad3f77072770ab4dd373afb6bfe1137a8bd93958f38dbd
Date: Sat, 15 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763167193
