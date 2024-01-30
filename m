Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5141272DA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706638697; cv=none; b=BcNwvqnA42CQw8bEMla2JgcvpVu+QDaiBDk8M35Z2nJNlq9T4KmxzSbnSsbqrzkXBscEMhJyy/g+JMj9ndT1YY+WgI565qDLN9y9OM4ko9KqmG/1NyXQjoBBbhkfpkRIsQgQrDEdajXIs7hSughU9fGCkLZQRnCC2AsgMmnpeeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706638697; c=relaxed/simple;
	bh=WTJbwA84YvsKL1SacVovwbVHPPxkvGodAjt2d9fl93A=;
	h=To:Subject:From:Message-Id:Date; b=QT+qAQPYKkauHeqchzO8gBKj/WS4wqcJDCgNsPUCDdlM3boMcdXy3Nd+zsQN+VP6Qq/tzJn9Lc0jZV++5/EZMKtYjPRDX6VbdpK6GphyJqGU99DUYgR3fmEqbJF311usCoVA2YDQhGK61iHqM2XJimCGFeQwh1Sj8bF/O3xCecA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6SCktDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6SCktDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 935CFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706638696;
	bh=WTJbwA84YvsKL1SacVovwbVHPPxkvGodAjt2d9fl93A=;
	h=To:Subject:From:Date:From;
	b=c6SCktDRDooA/qMkuSHmiPn1FROsB2gyWEqd749qD0cOY3PdG40tYk4TL0IMFuRsm
	 6IHuJChjI1NZc7Z/aeFxdZV+/HglwabCwP3gsRu60uEG+AiOXbFtbEm67FGF8r8/eI
	 LHZrww6R3nASb8KkKkXzdsY+2fRNgbRZy1GnCM5XnwOvpfCvzq+3eBKmG0zzVjd781
	 sdYJ8DO/ilBTOQjeGBtZspAFtdxhm4PhsFPDhC8pw9nOcZWgf6diZPeGkWUG9eY1t4
	 lHnPdTmnHJ8IkYU/zi3zRShF8zRttYw91/M+DFCsJndACWjMgEiKjSU6AfGCrLcF+f
	 c4F4luRMB0O+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E87DC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663869642.26118.8268186788471107522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24030714a874b04a89ba3430173b4d61532981cf9d06fccecf779f3a9ead860
Date: Tue, 30 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706638696
