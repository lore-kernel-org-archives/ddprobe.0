Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CE414AD2B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724196354; cv=none; b=C9xOvthpPfeL97XGI2P27n0FRAG33W64rIRSHhDC0K+Z9QMDoVi4sRP3tQRo1REa+ARdX5eoMdwwUrGrgS7/nlI9lRGKKjx5StpJ9L5Gxpkru1pXxzIWUnyNMdkGUPlFrOs/u+6AfTboW+a91k6uEK4pts+JW4Y67yr4o5GtbRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724196354; c=relaxed/simple;
	bh=6AGnBZ7pETQP5z38fgOSKWZ5qbQLKYi8qD9acSyRiQA=;
	h=To:Subject:From:Message-Id:Date; b=B8MUZvDzH1rZdSwnlZnRwZ4O4zRp5OSB4l1bjVpMKLsSYUTdJdZttrIjS65/j+qVZAbuvQMGKwjk6LeF0Tpbg62mGcnxIFMvhYPOfftUMprGx0H0v71tZ2Gzwx3rWf75wjXE/A3joJ8QXO7JP6oRewaBAtUc8RwlCj3f6ekpNpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnEuIYrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnEuIYrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F2FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724196353;
	bh=6AGnBZ7pETQP5z38fgOSKWZ5qbQLKYi8qD9acSyRiQA=;
	h=To:Subject:From:Date:From;
	b=nnEuIYrVpHZXXKSruN45XssGIToN59qhtf221AMkYEkIZEt3YWkvLC+waNpv737/T
	 PimwP8QPslPzwdkgF1fKMNuEFwhrPpIdyyxV7JBO426lLHycpzmknn6B1n4kpcrB3u
	 NUm77m9GR+T46us5qFKdXeKsSjk4WbfCmv7xic+DQeqRu1peC5WVFpfST4k+vsQDKo
	 MbOqlnMyP01NhGwrwrpU0AUEGr3ThJzKNB0Ku6CWJQwSaQf3/mJuzwsIrAn5NJtRCI
	 eLKdvuugX3p+E7xt19M8Y5Angs7h695eWWuHTv5atLBbiqQ6dynkgYYNEg4ZFAOGF5
	 rePGxoAfVFfzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CACC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419635368.19602.18171222966371124894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87128af10de96daeee86dc287d9b070ea0a2db0fe66bd290531ee42ea70900d9
Date: Tue, 20 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724196353
