Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE12DA75A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761155394; cv=none; b=Jc1ez0g3HhDOGbdo5BUzyBqYeTjHwP+rVglw2WoJrIDFx8Pzf3dpa+I5byl6foQxpaqqn3Hr3H6JWLg5XqmZPGBv5uNpJSrwgRqJQkQrAJ8a8+ZjtcSM91qW9FIahr9BKROw57O6fVAWHOi8x3Q9ws3Ted5FJbZ703jR4F2Nd1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761155394; c=relaxed/simple;
	bh=RMMIB4NXsl4ZsBj2R1abVgTI99eK1FHKy1/tMVEvur0=;
	h=To:Subject:From:Message-Id:Date; b=oTvSZiTfKQetlQqM2ihH0vI7i+8JnFGnXySrojgWu01jzxb/EfF3MZPbbSfP8O33SoyNVNRvNHAjWSff10R5Z4Z3vuWG0MqcivgNZlLM1gkHTDnK0V9AMh7BNRTs5qfAH1hBtBIHWLHXPofq1FnU5HoW2cELWgrv4ixMjiTzkGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upuRxPji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upuRxPji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D29CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155393;
	bh=RMMIB4NXsl4ZsBj2R1abVgTI99eK1FHKy1/tMVEvur0=;
	h=To:Subject:From:Date:From;
	b=upuRxPjiT2d5/PtW/Jwy5+OXH12PJX73VnWzc9ifHM4ML7hCo84Ih/GPD5MDPoQKO
	 iUGearNoJXifp93T2nOq9HXIRuVd289mpuc/PCWUWqWwGNtzRPnYVFoGqEug6g23Fl
	 NRJuc89I1liMH4/7/EK3vWfmhfolsgT4GgpPljUxXR80kSJnUFUKTSiar2P7/exZJ1
	 i1mKqzJ6yt8KRt4yAVoz6/plRMPCVzEtBggrbOEdbOU9Rs+gxLz5UeAnx025sP2dtQ
	 8ZOHbWXlUnyh8MdGTxkizbVl36Bt8RVy/eoxunpKnMTCLrmUNmPLxWMTKjdXZy9/E9
	 ECYVwMGF+s8Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F233CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115539357.8603.13417992736923668033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5ec0d649831b1983531467590ccc166cc8ea5bd5809775c14a2fb5680f4fe0
Date: Wed, 22 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761155393
