Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138792475CB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754843394; cv=none; b=SM6pBfRjH4ZB4Y3UpoWS3AQAG4z78+ocuitnNA8g7YNHKvhe1AbCbR2R4zflxCASm7v3zXmW+d7j/4ze5kDVC6KDTzP87U6Kt8lNdkSVOT/lLWgbCzXaZSBJWLOMiGznDs4kM9cJ5QrfxVbxHa6PcpAWHcdsttqPEDRNwDWDJc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754843394; c=relaxed/simple;
	bh=wNLkvgFfdMnCuZKCd3KCF1ooFbZStiPrYDLIeoN280A=;
	h=To:Subject:From:Message-Id:Date; b=IQcg2OkqAAhSUjmD6hDgjUwKuUsJLz4He1Y5qLY1RRYOlPqie8bMRJgRBLVhqlssWj+WiyzHX6Hge/2HsvZoqTRMXVcFYXrMLwYzr5xDhmuEpSmga9iC6DTZUkyU4gqfP75yxQK5f9M96Xf4mi+IVnCPtEn/asNatkrFQhtLQls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpLNlRCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpLNlRCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754843393;
	bh=wNLkvgFfdMnCuZKCd3KCF1ooFbZStiPrYDLIeoN280A=;
	h=To:Subject:From:Date:From;
	b=FpLNlRCgostuOph+vC17MLCqSmqn0L0RdWz2a4/lrh0uDatb4BnM9k+7z8i3tTCVL
	 Mv7V/npqD99vEeaz/aY2UtOoHnK0uobuyr6gnwmSVLogmSbYyWw8cUCReZDtF4FeuI
	 vPsWalQ+32M7m7ESQjrFYAxTU2MODmn4kFh8t0T6ML3ZTrhygEMbf6zjMgTp4HbPsG
	 0MtBF7VJ5z1yEvaR9pf8tSLeaVKIN9ABRy+d5WtDw1Dnk9IIuSGcjKjuF2Kj0GjSR+
	 qk7ryI8G756WIS+iASk/1tQ98BzAw4ryQUBNpvq3su4I2NeiVJTaG2t7z7prFNRx0e
	 5tOg2QlqkILPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91805C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484339357.21226.12950984665586634417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb9ab4440569f490c5c40d49eb85c2088989f53086e53b8e75f464c03f6bd55
Date: Sun, 10 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754843393
