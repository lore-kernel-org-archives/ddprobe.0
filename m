Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA651FCFE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736357153; cv=none; b=YvD0AfgvckytdEz5/jYHGUK84E9iZBHdQuCxHLvUm9V+yFDFUrS1jJCJvgZFRTla6mpHYiRfbat1iFaRRBiSxQOVQTZIEO5a4rwkSTXw1G+pAab0iQiOw6Trwss6o0btlD2+BvOY81jyTet6FxMILmGTAIbcHTO8gWjP/5ac1SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736357153; c=relaxed/simple;
	bh=Io1rzQAgOfNzwNslt/Wb/Si3GGvHqw6CQwUaLnZrjGw=;
	h=To:Subject:From:Message-Id:Date; b=jfTSWqQPgeUlP4z9M/9yo5xLYP/Gr/Yb5VHIap5cgJmY5y/ADpBQxVGYNFVKnAQXLulIN48f0Hg0mT4GxqO+v6lt1TfHUo8L6kgYfDbcR8OXwThgMtm43NMdUe1VbVFyHXDgterHKBsgY4zlUcCSjOT2FpwJWcpM7nbj1OfEOMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et0HPR2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et0HPR2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569FC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736357153;
	bh=Io1rzQAgOfNzwNslt/Wb/Si3GGvHqw6CQwUaLnZrjGw=;
	h=To:Subject:From:Date:From;
	b=Et0HPR2zG2pKjLq+QMqxgJ//4eIiIHSxk2tZeqaOVI06VHuIHX3ZhQRGZ+YX3ZnGB
	 6K8uVdIUbVNtl1LsH5WFzpNlzYM+4KDTrkXhc0oD1Cw3SQL+fmWXaeXwQ7NjTy1JYN
	 sX01zQ5DO/pKdAX13VYVNiTZnb+mbbxu1xCov9SGUyzEhkDNRGG88PouhGYikpdK6C
	 702pO+IgzIXQYG7ENq0MG0GdLhiGQyAADz+yk8hFlRS1hXWpAqHDiDbPnqLIr+HzrY
	 BoSMlSrwSrRWuJUI5+N6u1u0V3G89FsdZ4mVY9EN71CTn+En4x2Gj2q8sGK+CytTh+
	 3CXP8Yrbz/71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93071E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635715359.25027.5681878669495410327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8f9a6a48440e7a0109e612f7b7a77ede0e32879d832e458ffa994bb3f0a72a
Date: Wed, 08 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736357153
