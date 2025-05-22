Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B4D33DB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747910394; cv=none; b=TkFgztqPJr2+3MSa01YvRAxF9NpzfQgVuFW+lJkiBlgYhnlGYdhX4pg21jaksM/JqN107tMH/EfwdkQfUrQqZGaFkSq41cb2PsMY/j7MSFkR57hzoPnLHIVzx2Ud3IwRn50e4Jc2KR0ppJQ9RlhfBbqDqUm0ywxWz7EBFRrNXBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747910394; c=relaxed/simple;
	bh=gn3cyZaVjm1k1TM78vWP25LlbsKnRkUldz34WspmZrA=;
	h=To:Subject:From:Message-Id:Date; b=VBN1kTobfixgb7TFYLzLgoA3Q47pf4NHdWM2CsT0IV9lab2keM9EzMe6z3/lFr9SsCG9keMMBgdUk0weO23MVyi5Bd49UKQt3/4wUkN/092ryQkFln71YIANtXt8N71BpWgv059hdJ0DL7CxTjFVq3WI4t/z8BADW+lIbZH3D8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8I2h9oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8I2h9oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C80C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747910393;
	bh=gn3cyZaVjm1k1TM78vWP25LlbsKnRkUldz34WspmZrA=;
	h=To:Subject:From:Date:From;
	b=d8I2h9oEhstirEBbw8NyVkwwqaMRDxCIMNdKdfn05IV90LH6DSiaaTpDu1h3/YEqQ
	 zQuiDk/5gvBhjceL4N2N+pyH20G4tvc2RSpvtY//78rXU8494GYKM3wW3lXC2RN9uq
	 rPoAexQWpcy2I1g1fdeTqqWR0eXO4DVeergoHhpMoXzioI49pYfWYJ4m5hyeQJTnvI
	 UaJlN+6Pta52Ihhw+tlsVsP870buShP85aG8OyJMa8tvbXFWVfIwOZdeEkrJC0Nng8
	 zl9XpfbfVdqjUohGLppVkc5p9DMrcOGrRDtLhMoDi2ExzUUKVtkLNlbuqyV+wLtxYP
	 6ZPJ9ktEiDsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268FC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791039357.1706.6544146771388976720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ea3386081c771e3e7331de575d59dd591f359cf14ca829e006edfc6953135e
Date: Thu, 22 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747910393
