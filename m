Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2041227EC7C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778928634; cv=none; b=cRyBw1XEhrHzECb0nuFv9x1AoV0SRlMUPz0Xpr5HUK4lSdrchI5VpmpE2DlOdlA9zA1UNK9bXlG7gxIwlG8Ut11mMvlQmYhssHEdtCuWVsfKZ3aFRLbSH2q6Ph+5ABznYqLLnBTsGgzgX1nCojwkKS4EYGEm8LRpmEQiBoVgFYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778928634; c=relaxed/simple;
	bh=0/Sz7oQz29uRAuhH6i4uH56zJf05yeb5INKKNNYw8hk=;
	h=To:Subject:From:Message-Id:Date; b=dn0FuZIyvzlDszdXAdhKTKJnoTXaTrNDt6Idglg68898gYOkg78f4KMAhxYRYkHZlRM4PMs2SeW/dhjzFl7DNcne3iYYbPQbnZfKb5pZG+A62WXsCI/fal+0DsWhOXEMDVNi+KldLtRbBmBZqs6YAuuen3RsAi2cc+W2uxiPd1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME9wSOqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME9wSOqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1676C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778928633;
	bh=0/Sz7oQz29uRAuhH6i4uH56zJf05yeb5INKKNNYw8hk=;
	h=To:Subject:From:Date:From;
	b=ME9wSOqTuwtfMvrTjiu0YiMFhyHmNkbHZ5WHGijgXIsJ/6+81vgizEIe0diOeoLDj
	 2DKLO4HFBg/IRBj6nnS0k2/9ChyWZjqIJ0eOuWz8QHFOKy2aRsLHW0LxRJCaZsEK4b
	 DgarPKVGDDG1IQuH7fZUIQFxjdDTDdjTdG5E2r2tCAzCFs06aEj/eWR/zNppHCFCSq
	 bzRazC4AHQlUH/j15Infz4OBD9RGs1nzj3dJm4hZBuvidVTeLyNdfzCV89y/XSmJsI
	 c/+1v2ZA89suQRf2LWHGDTJ7r1hp6QEZsQa71QfvLGLflgEkLB8vXJFIiMSYPb4N6I
	 8tZIuE8Qs364A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC7BCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892863369.7305.13844296964990691725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71c6955ea5f43ef4e096add62f520f151510b225253413bc06a918f1f70e041
Date: Sat, 16 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778928633
