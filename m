Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CAC1DEFE4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737317154; cv=none; b=pqooLfp8MmWCeGDBZTzNGcNABwE8NFiTV6nZkHhFgg8Mbe9C568N5gmPTHJqlhzCM4zkMZcwucaU44hIw94dV/2EbG/jxVgFnMrvuDLxQZ0FUknPGcgO96Sq9R8NuiztAMGIhuLqBGrrJhVJoZs6EGqQMUY6q5Gl97bpt4St9I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737317154; c=relaxed/simple;
	bh=Ur23SNtjb2aRQko/0qb/8XHr2OA7xm/34IP0frH4ay8=;
	h=To:Subject:From:Message-Id:Date; b=f0vHDF5g3E5x3ZB4YnCG5qcV1nSdAAC1jZDTKSGXTFsdtqjr60xWMKHRrdfX/qF71qQkT7lUUzqR7DXztJYGyytZyxwgwA+UzctALdagl0Ydmk28jxbBHbm1m0/+gKx1lfmCiB+RmejOAs9YfZjtIKIyj4y5fv+nAIBDFae9M7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo/vJzml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo/vJzml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C96C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737317153;
	bh=Ur23SNtjb2aRQko/0qb/8XHr2OA7xm/34IP0frH4ay8=;
	h=To:Subject:From:Date:From;
	b=Bo/vJzmlcw0uoHhdSn8phWa441Ee5dITAO1+RazvXGdlvu6mZAIOoicfvbAD5Zwnf
	 mSIwD5EFTuuHPARBH+xRP+4sJfyyq1nLvqkpo8IwtYcBqlSdpTp/7Secy4Z3QCUCfe
	 OWgwdnuP4r+VJokGZz9edQNbQVNCNk+RG3ePBWgOdZh61dXLZbA4kHXReNM2ZymSxV
	 L3nj2QxfzxhZKhIsVIYyl2dyq/7083NpaJBEmCPd+P4Xnfo6/QY09HBsUgwq3dKtmN
	 X3R6/QKaVQP5QyelwQkRI7VbliEvLuBJwh8WWGdbsWALYNu1T4D8mFpgdxaObr+2hj
	 UuAylnqbGjxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92117C02188
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731715359.555.2392052839188030791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e602058c22743d61ac0f7fa27e3968cae3bd83f069d27eb18ee0640416db1c4a
Date: Sun, 19 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737317153
