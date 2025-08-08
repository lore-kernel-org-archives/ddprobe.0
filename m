Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A982182D3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754628594; cv=none; b=HzDp2rKqMprmzFoksPfwVe/glwyfnJDTmoljBeBkKLRR67po6+0kZtXWtGxNTyVJQbl5cCXivIdL+5fA/tnc0vC8vjLktSB2GT5C4dIBv5rzP8hg2JhV/VKQrmG5IyYqwM23qs1Tql0663nHf6ig+Pi+/2DW+Ul5xaR45JLGqkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754628594; c=relaxed/simple;
	bh=Xl281o8oaoAnZdTstlkRO1TvjiRL3L4j7s23/sPMjB0=;
	h=To:Subject:From:Message-Id:Date; b=rEzBb0ukpUEkdWEyrhwA7JB1a836TB5qeFu5jirkT1oM7eSOlVWcGqN6vocPWKMBh6qM3TuPOqRWa9dMi1F0TzGiBBh2umgzWQnZ7tC5vFBvgpt8fRhM4BcpA7dzq2hCkaU0RrA8wvwX84dGek9580ByfNMmAkni/qX/ebCStck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFBQILLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFBQILLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419FC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754628593;
	bh=Xl281o8oaoAnZdTstlkRO1TvjiRL3L4j7s23/sPMjB0=;
	h=To:Subject:From:Date:From;
	b=KFBQILLow+lAsoUayZaD2Gzq2ej3NadvXFzKXaI51bQOEfmcFVQ610pmBfoSBRNFZ
	 kyV+xHEyEhEV6IIxdiGWd3DH1Gxk5erhZ9Ve6nDqXiNqcppnQJRSvH2kWl0tU802el
	 pZ/FnzDoOozh1a5pGfHgGee3FE9FLSQzfrwc+E4jCEeS/7wNRa45iAgGdVCah7tFi+
	 sIhkgLCIBh3W33IujdORAYyqIGctXgjLtK4CblKF1o/1wkH1g471zZJdqq4XBzUsxF
	 UWSALSG4orW9ZdWOSEvAepjNFksKQ+MEbfN6vzyqKVbPMlmLo66fEd9SHW6zOMosG/
	 I0qgS7AbALnvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051FC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462859357.7048.7032124364962518819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dedb58a391b9d33f6c06cb2db13c5387ba13bcf8b490bba039bcf0b7187ab2c
Date: Fri, 08 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754628593
