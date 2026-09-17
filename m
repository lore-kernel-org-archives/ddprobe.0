Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5349D58F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789671034; cv=none; b=dHQBH5QbhM9YDPGyQQ3+ydLqDv2lqXHErYeoXu7F+f1Fj4g7703td+Y6iI0nkwxvSvS/eDLziQHT+Syy2IZQtD7BedayV6HgpX3eQxrhNdWVh3L5vbQ5/rYxE9lMBvZ7POMrQs9wzTvoN9zx14yU7s7Dw+Vg0JX/XROOlMSD+M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789671034; c=relaxed/simple;
	bh=AdczIf2DcMxD16HxAE1rG8jfFPHrYR5YTSf6Ei98ylA=;
	h=To:Subject:From:Message-Id:Date; b=KZcBgOlkDaD5WgnvkJYi4EJKeQogwWnerzMGd/Cr2AIh2pOJGPhNPCxlGwcY4UHSxojPDYKQtGC3ufzjbjjrWchMyiyNTs6JZlWkywXtKZ7KLP84ommTwxqAlCzFtS4OggPZz3L53vOR6gYNh02pzuyXspmSNCGLBJRNd2VC8yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxCkghdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxCkghdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31F7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789671033;
	bh=AdczIf2DcMxD16HxAE1rG8jfFPHrYR5YTSf6Ei98ylA=;
	h=To:Subject:From:Date:From;
	b=kxCkghdU4v9IfgaqTtp5Zp7JYwSjhlT5Pj1SIQNglE2gDSvRt7ywpAOq38fDvVIyl
	 8MHho8rpF1RrSj1RoylQU6yjoAOR4KaOgxgtRgfBfVMMquW/hjrjLidSVl9blcSxgP
	 Zw0tuukQqiLvqaTDs48RuFz1ME5hOxxxGLiKSsYSlcbiBzw+cxyLMNFz0rS6CzMSdB
	 hnuxJYlaL511hNQktq9f/LtdS8p7bwDl6e3RXCDPJGzsIbEpVFWbEkNFMojifvMdfI
	 ezrTz2rJXpl1kBTiNkxJPpoYPrc4Ch6BD3QAu+0eX7hx3xCHCEFvMHixCjzauIYCsK
	 tWmlVsyj2G1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0AC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967103371.1342.5411662618460287994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2dfa253285dfb55f9ea8ae7a59cb3434bf5fa1c998dfa2c38b7cf8aa8a9bf7
Date: Thu, 17 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789671033
