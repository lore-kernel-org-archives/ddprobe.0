Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD881624E5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749521394; cv=none; b=a022/G8aLUQxXV/jTjRShu+S7S8JdzLXCgGLVLrmMB4u4vgAaXO52wFh/2sHeWruTH3q48AooNMjoTz3S7le05OHjU/wmuo/FPhEdsxhzMV7JwnyYQ4D+sdqDPJLcO5Rltu+6R111Bp8Kp3614AJGmyE5YfVZzmslsLr0N9o06U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749521394; c=relaxed/simple;
	bh=bEVcDEZUH3TycQaGDRJMjK/lFMwsJx6JeovmoAmuAYQ=;
	h=To:Subject:From:Message-Id:Date; b=DzOWekiqifZQ3UgK9eMSeECNd36r9+dlasQOvOmL2Hrr3++rcoIvdb8Mrq3CSJzL7EmeaUkNdGOu1bcYrtqaX6EXR31/lCp1zeyyxUNxQHr4E0EPmhESQqP7veQGDXaCctLADVNoYY+87sBG4qJEGtto47P5UyrvnK+EJf/iDHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3c1+cq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3c1+cq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1777C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749521393;
	bh=bEVcDEZUH3TycQaGDRJMjK/lFMwsJx6JeovmoAmuAYQ=;
	h=To:Subject:From:Date:From;
	b=O3c1+cq/NCjusRX8aOE4GPk+5a1mQ1tNTscBO1HszEVJI5fUuqjKYoHS75f8xfTTi
	 Ep27nJ/bxkSfDwY4Yb40HG8+zY68V2G3TEHrCcS9FG/pmQNn+DiOpa3lKfunrqf5rS
	 CJKPEr5epLccPmFqS5ln8RUkles7pPK3zggNq/yYEshlwoQQELI98kMnPAtPkRngxb
	 iSGT2rgK7dbT3XEyWwSVjPyNtdXF17zmbloQWlcX39MtKRaBmg7/sapyoXTmjlIzt3
	 W7VWmBG0dSVaHCjs7+tHGloQnpPP/y5LJ93NywK6AB0gf0SgbRiMlfvKhiFkyx6DMA
	 mDio8mKAdQL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF6C61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952139357.17604.3951567596309584003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7374931ef137a6ec750d33aefa3d51d4138ab78eb7fa152542a8346ce9f622fb
Date: Tue, 10 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749521393
