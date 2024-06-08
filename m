Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665A961FC5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717864043; cv=none; b=cMAt9zDiKWmxNbFeRf3a1QurIjHdL1KqK5OeF6l4wrPZhEOJM0bCVdYRn79O3gcdV4j9y/+dfrsn3Xp7VNH5Ty4AuT0S9Rwzyi5bLtYWfilzviwXgWIAD/rZQtXfuIzZw4OXjT/C6K/WBr4qFDouEIa8gMCRdTvxjUS2Ko6EBXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717864043; c=relaxed/simple;
	bh=zrgXbWUFfGOW2gVmo0r8bCUO4JsLJ3RAhyQtevkLKnQ=;
	h=To:Subject:From:Message-Id:Date; b=ecdIWydbVbZz0y09LPjNfOxe84a/2ZTs64fYKdFIwc9qi/EkmBfnnzt2hEJNg95nPposzDxiEKOUUkcAeegi5g/K7wefnAeSqarfswGg4MI/3ZcvBQDQo1V4XblzL+d878U+XNSWKLS5uIvYdzZ/njAGNb5IxkrADH+1aLKsFTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUT0Ohrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUT0Ohrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5A4C32781
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717864042;
	bh=zrgXbWUFfGOW2gVmo0r8bCUO4JsLJ3RAhyQtevkLKnQ=;
	h=To:Subject:From:Date:From;
	b=OUT0Ohrng8YuEm+OA8EDVj0aHgnJMgR8z8GpopyD/sZhiFseBvI8WBEodTq2aXUOM
	 YRtSyllyPBkka4NF1/ANvhJXk1q5OOxCexQoEuDhzhyXpC55FBdzGCpBb8cR1tIgaP
	 A+paVuICkxtNOKOEMS13e3xSbVdsvu83ciujR8j7FAukQE1H0/tNKIJ/rJnwMr/gpx
	 riL0zGguzSaxiHZJ9b/wv90qlJSpR1GpPtaE/LctbKE/D6vpp8d4yopZR380SQbWIM
	 ta/AdNYhq7aZo5DAt26xV5ZAgTu2je+VXCpKMT11ttwuM6K1HiizDkxY7/IryEUnhV
	 C+b5okJRUux+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F56C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786404278.16816.16302686879348874366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5530d195e6c34a90fabdbd94de13e000a4022907d37e7d166552b871963ee77e
Date: Sat, 08 Jun 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717864042
