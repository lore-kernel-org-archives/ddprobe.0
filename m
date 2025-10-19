Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7F14B06C
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760903994; cv=none; b=Vs2rA+TcHt9iCXIyGw0RDoX7jxmWg34e+CugKtBkfD3ZDkVWruEK4+TJUbsTt17Cx2+LBeRdwo0bF40TUXlr7XVqfk6sqqWwEYJpFrgMeYUPCa2NiaXRH0oGV2vIyolDf5hFxslJzmU/8zUJl7/kFGb8NsRXeG4a6dRUhrCr1cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760903994; c=relaxed/simple;
	bh=eL5qEYkrkEu+rRtr+Bl92EcNGoBnn1KA1j/E2OTsISI=;
	h=To:Subject:From:Message-Id:Date; b=Imq0fhfsP/1BvhZKAn21yRVVRWFO4qkn2pfIQWACzcb1Nr/OONWfocGQJvcwi7V7FU8XnHeJUG9w2YCaqLNkMHoeFqFMFZ3hSgEbx4OW3Z67uG5X7u6uwMFPdopB0LqHOn8YBb9K6F6//07EBjCD2Or9fFDoeTyLrLYLF/3fAo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofq1NGTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofq1NGTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760903993;
	bh=eL5qEYkrkEu+rRtr+Bl92EcNGoBnn1KA1j/E2OTsISI=;
	h=To:Subject:From:Date:From;
	b=ofq1NGTNmU8Cc1F9Rvj9br1Zf+nSKgf/OZazbL98KcCBieH3pgsqQWmiKaw07++5f
	 rKJ9gH18IesMgZjeBrkGEXaChDRDzrh5KwYo2eVrhYbgXrolX124eoevTNjilD1Tnm
	 +ddybo4eAYHcSieX3TpYed1g931YrUt8oaBlLNdDBsoacOBdoblriaHBNBWIsZ4s1w
	 gTOJQbbT7F/VycmNHbGCM5aAieHLLEN196Eextci3Y3/Qe3odF0yYBEGPnyhBoMKqy
	 W5ZqeSCxuT2dnHg9/Rd8njyu9uuezPZpFsoQnpgDVpz3eRLHFfpCiG5NQMTmYiftj5
	 crEQi2R1coEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD8CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090399358.15598.15996726998035603837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e546010a1ee05b8c4f210ebebbba4f35ccf6972c904aba423bbd3181786909b
Date: Sun, 19 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760903993
