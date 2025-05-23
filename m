Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF07215181
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747976394; cv=none; b=lETRnyXEASsrxMz686ub3ZI0+XYqx+hjglDlBrZJ5TbvpV1n0J6e+R7gwyAaRPjmLYf2GihDFq64CcCmCcRXdGe9BPbykVKOZCHPREpl6KxMMsFqC8oEMMcsvfhHVgWQCKaC4xA6E8Yx2Q/xVGG3wimP5s1hM1my5pRbS9KQ3OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747976394; c=relaxed/simple;
	bh=OqpA4TZx91Ru7PzomQA+PUV8XjjisyS5+HAQsj5vWj4=;
	h=To:Subject:From:Message-Id:Date; b=RED9A4ooI31+FOahspLX/fGlVujhjtbnXscHtEphsRq44otYzhoQp49bH3dqOnt4jsoVTzb2Mh2qT56NikRIhbeK+ScocNpvhXdSBjzEA37WP70JuP9oPRXFaxrxDdQPnQfTycEQffsPohEV6V1ls1QsewDf7kAYkWmgfT7OyUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szi/zCBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szi/zCBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECB5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747976393;
	bh=OqpA4TZx91Ru7PzomQA+PUV8XjjisyS5+HAQsj5vWj4=;
	h=To:Subject:From:Date:From;
	b=szi/zCBeTvZPjhKXX1zvv0X1lpdMnFYqnwFS4SojONEhndVOnzVwtyLzCbSfoN5oL
	 pHNqX05zZKBNin3sHBE0WDQouad7I5sIPa8/93HEWA83eyXY2FLONePYl2OPf6Q+hS
	 hkK+CFnk27LHb8xd5lBF2Lt4EgjVjgrBzXzl/GDo2UR78HFeGJdnbtQLe/rh+8fD3N
	 nvHljLfU+TWDsKn1VShZabt/bNGr7ULGa7G1M90RH1efDrQq0+8BzAXb2Q4xd2rs8a
	 Ke0HHDx6qJd3DebV8JF1/CN55MT5MIRJ4ZB2okwSa8hJjALMaiJoBtjCkohSMQxVZU
	 12upDoRJd4BdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA4C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797639360.13288.8889246810925340240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fe3fa217a5a505c4b1093a3742823ebe66261105e317c5c02c9884ac991385
Date: Fri, 23 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747976393
