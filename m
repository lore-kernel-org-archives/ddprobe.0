Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8B419CCEC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756018794; cv=none; b=nyBVsFxsAP4GTKEBjb8ARQ993j6E1hGLGxKUN7st1Bbk9QtCiDqbBdwTwgtCnW8qbTegt1Y2H1PTm4pmM+uKSsNXKqQYGlVdZw4IJDmDBIHO53l8+hTit/r52Pvr8Qp4ZHa/lSMxgrUujgnGm/vSZu5dkjg0z+/LlaQAlOzYGEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756018794; c=relaxed/simple;
	bh=QFodQveE+GHFh08z+1FJkLAMFEV5zAs2aEqxFNLF8cU=;
	h=To:Subject:From:Message-Id:Date; b=myy8HC+04eH9WMhbj+935rrs4EN+e1VgN+bo8BE7Xuvr4tAECPKZEBsF7RS8/7IhptsFuBRtG4lAnd1Ib6eKLKfhtJPLjvixGgsY7Ee0V7lu1HzWDbkiFmmE8sqXXAr5ImQXipiHVUNVmn0SoMlrvgiolbkW2ne8izWYgcbS5HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkoB/cEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkoB/cEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756018793;
	bh=QFodQveE+GHFh08z+1FJkLAMFEV5zAs2aEqxFNLF8cU=;
	h=To:Subject:From:Date:From;
	b=tkoB/cEdZi6PZXsKodvyNFaIJ2jXE4jMbc9VkHHQ3SI7aUqj4oQPFfzr4kTf6m4gm
	 vUkimJaKPyqL5Vm9CEkBeA79oMH/cAa3izU4hyIuhINajV6qAq5M2jIqLMXyPhw1xx
	 +OfDxOdeN2p5aNrIZq9h0tCNkFgqCbgTbvn2zJCbjj+u70JPq5wogGJ9L09giq13Rl
	 Q2aOYUUa3ASPuCco2orUKdVrmQlWur+goFV2EtqaniNIoBZdhhjGbMXgR5fKEIYBF5
	 rxPH+ucGlDk09rXDF1tjFWiqjay49tNqVHxzwx0hXquOfRvxsYEPJcuJSMYyN1pLuX
	 Qbhlbmn55HhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91467CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601879357.27761.11988504387055263943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26b89a47205b404fc7b5a78654eaadc4111bff35a85d702f1e0e0542799544a
Date: Sun, 24 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756018793
