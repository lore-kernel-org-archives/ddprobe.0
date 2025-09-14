Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8162745C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757848794; cv=none; b=RzoKuzxcqaoAY86H1rICY4RwSsfpbXAarFD74DRPymCqWES+QBPwt7ve1RHxLIZTyvUKPEZqKlV7Qt3/jvCv0lTX3NPm0RfXqErZ+ixO4jbmblcMojyKP3dTtATDUyjHlBys+A6AP/AfMuLgfp0drlu7jwfvT4fH6p1gIR80bfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757848794; c=relaxed/simple;
	bh=zG/nYFeWuBmO2MUUG5MuKhOvpxfH/N0KswkSlRyP0y0=;
	h=To:Subject:From:Message-Id:Date; b=l/0c8l/k8ZpCqgO7ALlCtISAvA9GgoIj4mo+1z9MdrERYeUirbo9upnbyU0VDPFOYvB5AlOs2TiWMnyeK8idoyAdHDw2rqQfMx4PyR/zjwh8V+1Oh5bCdnEFnbLn8zDz27zpbQQA0hPsEPR8L5pqTHcasgDzpfsK7ej/SQn21K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQO3di08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQO3di08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E0BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757848793;
	bh=zG/nYFeWuBmO2MUUG5MuKhOvpxfH/N0KswkSlRyP0y0=;
	h=To:Subject:From:Date:From;
	b=mQO3di08dtjcoXDD7wg8fPU3J/zEnqpZ4H7R2nU/0s46nip8dsKb+9wcvElhB694i
	 QsKrHdFLH2nJujK6E1ju/zBwwi4QZqs9S2qdSDbwqc5tr/uD8wTb4jA83s9qhTYclI
	 S6OR34gVleyaLKBE1+THwUkZs6QmdtkCfgejKOjWrQdoUQOPiZIs22R7pMreZeY8BC
	 mBqQBXT9o46cNq8R6KOzFpZBe/sxrGH/WbODQIAGHkeDxjRkSXOHTuvqtxXhDqj08h
	 xB5mlOZ1wzD0EjzHUwjm3Kyx9N8vKT15JKYQAuXPONVKUFYIx7jgTl75gtS72xMnOY
	 PP+lFuqAyk89Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152ACAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784879357.7656.8653071337886504581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9bfabf4ece1ebf7cfdb33524f64080f1c31580da16400699c5188fd75fa105
Date: Sun, 14 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757848793
