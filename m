Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4932E481B3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737774354; cv=none; b=oVER4JqGywXFIA698fzWO28FjdxsDcuKvt947WlSsyhlU0sF/ByY0ezbyVWBsOCBm7eZacgSneiSXg6AJRLF6IMSuMCDY9HQFQnG5hZ5jmCW0Uo/C72kysmhSeNuIJt2p4l0wj8ow3Rrecz2BY6/R5iH08ka+f40Fx8dy+h5TYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737774354; c=relaxed/simple;
	bh=ZuT9dZC8ZEcsqXaSvTyxEppNekDc1qAnEqlHOkaCTkk=;
	h=To:Subject:From:Message-Id:Date; b=m9uHG1OgxtxlnQs/xUVy6c+QoN70g4eAVoDfFHwHK7Mi2GWiHeyTPTv+j1ILdRmSVrVvgW1R4Lt51saHwsOwmA3wHj34B61CS3GifzuuJE4PP9i1KifYbCKQ69zWNlMjFR3op75J2Xlw2bhB4QYiQaDLxyMUmDdiKCF7I+pZ1Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGxwdEIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGxwdEIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF56CC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737774353;
	bh=ZuT9dZC8ZEcsqXaSvTyxEppNekDc1qAnEqlHOkaCTkk=;
	h=To:Subject:From:Date:From;
	b=fGxwdEIBL1MLvhurbXuv38d5VqyeJQddWTfWRS0w0SM4AkWh6NN0YLzcwTvjeL/AW
	 LialVXcME2A27SDRhXwtgDzm2+zjrLYIC7HaL9qiTRZ3aWWtNaj6zaaTAdB9WhnM+k
	 wz+gOM2TXMoP/m9WlywwmwRE5qVVZ/WOKihX+ORNjn+BglTDcDNZAnLa4f+tBvF4ae
	 FtzNmLdMD8RYrVQS4pA9iUFoq5cbfxBoZJ6TT5A2/mnfSe8YZ/w3kZul6AmFvBhIiO
	 Mr9+tSi967piTLH1c/ZdKdEu/6E1cXCg30rRjLddpvUx+9RycuLR89Csz9zhX/BIBn
	 5RshPEIWuqLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FCC02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777435359.13382.1784281849791680390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88a93e388393c35b44dca5c03a9d31b1b406c26517ab814359a44d5657472fe
Date: Sat, 25 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737774353
