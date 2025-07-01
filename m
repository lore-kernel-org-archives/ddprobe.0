Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FE9273818
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751371194; cv=none; b=mcDrjtxelVShRn7GtLbaiQ9nzAvDWUjusueD/cOJZmMFRI/cIUd+M1t+OZLECXOxyEpc9lMSmZFYIcmpeVltksf78LAY5tJN0QdA3qYpIpqFahF2FcaRgRMS+1+5JZSu4gKfvGEDOMtFJo/rhl+P5R/dwdjOBkVzf/Og4CgvkUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751371194; c=relaxed/simple;
	bh=82IshfdxoG8fAgEOtDy8Tr4oa/auMsHAtyBhoe1d5uM=;
	h=To:Subject:From:Message-Id:Date; b=Pbk/oha+s0mcqgvTudg1Lgg7LLUGSbYdxuxBn1JIgL7kMqvXCQc78Bx/5O059pP9desVMC9UBP6ikkjm26ulRlxM5hvNOzkjOzoiorttkZGJCdxFtA6xrw/DTfonftsBbwFWSA/1pXf7yyo0CnP+v/MEx8ezI0d5Wr1RRxrlM6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6G2wEpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6G2wEpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99756C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751371193;
	bh=82IshfdxoG8fAgEOtDy8Tr4oa/auMsHAtyBhoe1d5uM=;
	h=To:Subject:From:Date:From;
	b=o6G2wEpHyr+ulCS0iB1a58u/loI39L9Ep4O3pRQKuLUXLbPQ/NFTGh1XjN8ivOyKC
	 SZ6hScLl3cTCdo+5pYn4r/Xc6b7+v06U6tg6SSXF1a1SpC44zDp9ESTnZpWc88Xjj/
	 YK00D073cp+9kyBRl4XDNS+P1TiczQWw3DkJCM0PnEaZ6fhnk1n/kRk7N1VpdrSeqU
	 2fRAgjvv9kzClFJt8Slq/HIhSZbkjchSOZgiINElqHCyErOP4nmc0k+FfmPACvhBfE
	 7cT3pbSHjCT1dHBGUEoFjjIs8rLuMc7MofFTfG5FWprbeTYJXbcdmIIIQln8o/WhDa
	 5Rvt5RZpZqv/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92288C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137119359.9202.11782545699129889242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b61973dfb9ed674fb4c4dfa352775793353bc00b109c02c90b41081f7e08709
Date: Tue, 01 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751371193
