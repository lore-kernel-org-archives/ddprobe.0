Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3336317984
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722618954; cv=none; b=QeB7fLiOixDIcAEN7f/6E3ay3Jvw9yP+5uIK+MDrsfyjZbYQpHyY6xDqefkQS1roHfCAs6dihmXK9L/WbCHvMS+Ue7fOujGsSsEEtufQXOJrHCCp0BpgQlf+3/YTosBjsdpsCX1yDUFt8PTM7IFU9RTCScHf5u1Wk0pMNjh8aRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722618954; c=relaxed/simple;
	bh=uD0xm+wW1kQ0vUJihExsn7TSad5pWtaehoQaCTT+I+8=;
	h=To:Subject:From:Message-Id:Date; b=uqMxDQ1s2ZPPg3O53rya5MJYRCoXBQ8brld2mlw8wqC9BohMNK/nkBHx8m7TgGK3adPwMWfapLQHhYVYQj4iA4hpr9FxPEDUp0ZrST/3Kzm16F9IjVBg3NhSwFw5Q8jcBUUAAF5erb5JMCbqMqwmpUMoXvPksQC6a2ua6ZCdFYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cozMmnh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cozMmnh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F72C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722618953;
	bh=uD0xm+wW1kQ0vUJihExsn7TSad5pWtaehoQaCTT+I+8=;
	h=To:Subject:From:Date:From;
	b=cozMmnh7al5PkZb+4/CofaB+RG2fsTCQ0l55yzFlEL6PaAIJ6/2/uctlqnNQYkCpx
	 zzaVBkMvKhyFEyXTPbKI/0osYHkLCCY8SnfUJKzlTj5PjzzRJX9HseGLeFCcTj5nvI
	 HugZhh8YvSobjYTtgJKqWZ15vptFqfN5SbJ6wBlXsHej5Xc7K3nHZnmF4Gam9m98yq
	 s40ZR+Iv7tukbnjvDT+Bgp+WRFTjon7R77qdN6CDOppcdHS7KEQMuqOObCgPiTHn5D
	 38xoj8GhAooprHzPpFwQpU9fxLdWaLtBguYDPGhW5KbBs8RdycgyUCJATlOIEsu9Nv
	 UjUtV/GqsweUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EABCC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261895361.14982.6274524796390981000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7a1d3ef467d37ecbbfd2a3fc153d6102b8a9ce76c51eac1b19a2ba86072098
Date: Fri, 02 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722618953
