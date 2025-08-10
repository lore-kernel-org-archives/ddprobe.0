Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400731B0413
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754852394; cv=none; b=ajEmme6e2dnhQQiPY1GSNBWqG+5vaEpuo7xYDTh4svBWJbrr2stD+IuITsFpd25o3ILAmU7GJFMJ4BQYmUAun6kOp+zwE1NqViK9OunVPpY8XZoWkfZVhowa1vsgexLC80WUVOwIuETVpq5F0wYDPu7jieEXlQm8K6p8W9edBl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754852394; c=relaxed/simple;
	bh=CWdCEduNSRthrxOLbXumqzOOYbqX5GqF8A3ToH+1s7Y=;
	h=To:Subject:From:Message-Id:Date; b=RP6VsYc734rlUHG/likTkfiFxkAVprEsvphJSz0ywZc5rHZWDpQAiS1YEhJPbwGHOM2XpusJ5OGs9vbyH6aAdgpdrF69QjkM/BLDKfQaC0LIcbBXSix+sbofI3Picm0G69MgU3uFt3UJFDksi7DCJziQ+CCzxWy7mIVsoe2iKvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkgPgnTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkgPgnTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4231C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754852393;
	bh=CWdCEduNSRthrxOLbXumqzOOYbqX5GqF8A3ToH+1s7Y=;
	h=To:Subject:From:Date:From;
	b=WkgPgnTU67u7c+mJc0k3bSW7Q1OKo12ZtfNXRiA/fHEBr5kaNME5dEeqhhNqgSCs/
	 qy5duG/oqvbENHYfNmRbv2yxz8rLbov0MoaVEH+MJcrmDazXGYDS0lQRHJgMAPAuZu
	 us9Fz4WuYhN09pYXO58s96QGaYimeoJz2IdHPdeObdS5rj6fu/De7oH2HRP4kQkpb3
	 uhKxIdO+deo9plwqgvLGETw351YdrS2HdevnlD28y5uReaxNO7ErdcYMLOOYq143rT
	 Wvj38XjSLDzK/TpVoggemmqJ7PraoXleaLVFIDu665APh96ScvE1Ry0qWFV6XGjIkL
	 Sn276QH9yrtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91143C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485239357.2752.7599358641540076538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a16bc612306631642fceed1941816d43ccec791372bfcbb0fdebbe1ca192ba3
Date: Sun, 10 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754852393
