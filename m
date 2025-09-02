Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A711FA272
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756853994; cv=none; b=Iq8BHCUbtM+ms74QAgc16sHsqJOUqjozvDrI9Bt3Y1jhn2rsUuLwXq+knARz+Xc1CeFuXCWHTIDmQv1ObkbAZsFYYNs8XNQQ+uwIYREHeKAWV5hXfeXw+gNY/HFYaBD3ZyRii8XOKgSxfX3K39ApF9WQo+9XlnTjvzSjGwfEOag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756853994; c=relaxed/simple;
	bh=mzgvBEgSa98N4jruZ1zlR9T/Yqw8XmtiUHDUxmyddo4=;
	h=To:Subject:From:Message-Id:Date; b=B+PfBL1D2s9J8zvf0ufENM7qnLi1fB1MbDh9+brawMvt2+kz87CTv1qjHs41t5qa1Y749iwiBf9eQvhll6PiAExSMoRhscSKwfepKliES/BnJv/zeN5XdiNPB5Dx2xajgYVWbVRxtqXlTMveWof1wnQL/6Gg9dM1Ja4p8vLpkps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWC2LH1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWC2LH1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756853993;
	bh=mzgvBEgSa98N4jruZ1zlR9T/Yqw8XmtiUHDUxmyddo4=;
	h=To:Subject:From:Date:From;
	b=AWC2LH1UDwTewRS5v9RuGOLOfXwWW/V582V5w8PtAJRBodtQdVsUG8V+ZjMCB6hrS
	 /LWlcKB/cPSuScVKPN9wlCqrEysJHuFw1Q3OguFwf5BOJP4JQQtHQ2lth63oTNbZ9Q
	 WGBQdlSLP6DrM+3xq6DhrVoeCYbu41s+zEmCVAioGeFaDTWhyKoARRrK/wNIyA7419
	 kb7yPRt3e9UN5ESY7i/r3u3xY2ATGB14mgoK9gbiiFaChtd4wZB8KsyJRsvQz2X/Lz
	 jFvCW8YwNKkQMvW6qhfWXXU6JtN1Cl8yNXbuWDiPTofDGHxWm+l8XutF7KmT/7QG9g
	 fN75fiGiLyg3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE4CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685399357.19119.12841443328982978923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6de4eb14919ef0efb534666c9020482c50478527fb011386f30b049a06eaec
Date: Tue, 02 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756853993
